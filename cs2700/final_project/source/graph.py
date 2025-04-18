# NOTE: Errors

class GraphInitializationError(Exception):
    ...

class UnknownDataStructureError(GraphInitializationError):
    ...

class NoAdjacencyListException(UnknownDataStructureError):
    ...

class NoAdjacencyMatrixException(UnknownDataStructureError):
    ...

class MissingVariableError(GraphInitializationError):
    pass

class CycleDetectedError(GraphInitializationError):
    pass


# NOTE: Classes

from typing import NewType
RawAdjacencyList = NewType("RawAdjacencyList", dict[str, list[str]])

from abc import ABC#, abstractmethod
class GraphStrategy(ABC):
    ...
    # @staticmethod
    # @abstractmethod
    # def find_minimum_admissible_sets():
    #     ...
    #
    # @abstractmethod
    # def variables():
    #     ...
    #
    # @abstractmethod
    # def descendants():
    #     ...
    #
    # @abstractmethod
    # def paths():
    #     ...

# from collections.abc import Callable
# from collections import deque
#
class AdjacencyListStrategy(GraphStrategy):
    ...
#     def variables(graph):
#         return list(graph.keys())
#
#     @staticmethod
#     def verify_source_in_graph(method: Callable) -> Callable:
#         def wrapper(*args, **kwargs):
#             try:
#                 graph, source = args[0], args[1]
#             except IndexError:
#                 return
#
#             if source not in graph:
#                 raise ValueError("Source node is not a variable in the graph.")
#
#             return method(*args, **kwargs)
#         return wrapper
#
#     @staticmethod
#     @verify_source_in_graph
#     def exists_path(graph: RawAdjacencyList,
#                   source: str, sink: str) -> bool:
#         frontier: list[str] = [source]
#         explored_nodes: set[str] = set()
#
#         while frontier:
#             next_node: str = frontier.pop()
#             if next_node == sink: return True
#             for tail in graph[next_node]:
#                 if tail not in explored_nodes:
#                     explored_nodes.add(next_node)
#                     frontier.append(tail)
#
#     @staticmethod
#     def find_confounders(graph: RawAdjacencyList) -> set[str]:
#         covariates = list(graph.keys())
#         covariates.remove("X"); # covariates.remove("Y")
#
#         confounders: set[str] = set()
#         for covariate in covariates:
#             if AdjacencyListStrategy.exists_path(graph, covariate, "X") and \
#                 AdjacencyListStrategy.exists_path(graph, covariate, "Y"):
#                 confounders.add(covariate)
#
#         return confounders
#
#
#     @staticmethod
#     def find_minimum_admissible_sets(graph: RawAdjacencyList) -> set[str]:
#         confounders: set[str] = AdjacencyListStrategy.find_confounders(graph)
#         minimum_admissible_set: set[str] = set()
#
#         while confounders:
#             pass
#
#         return minimum_admissible_set
#
#     @staticmethod
#     @verify_source_in_graph
#     def depth_first_search(graph: RawAdjacencyList, source: str):
#         frontier: list[str] = [source]
#         explored_nodes: set[str] = set()
#
#         while frontier:
#             next_node: str = frontier.pop()
#             if next_node not in explored_nodes:
#                 explored_nodes.add(next_node)
#                 frontier.extend(graph[next_node])
#
#
#     @staticmethod
#     @verify_source_in_graph
#     def breath_first_search(graph: RawAdjacencyList, source: str):
#         frontier: deque[str] = deque([source])
#         explored_nodes: set[str] = set(source)
#
#         while not frontier:
#             next_node: str = frontier.popleft()
#             for tail in graph[next_node]:
#                 if tail not in explored_nodes:
#                     explored_nodes.add(next_node)
#                     frontier.append(tail)
#
#
#     @staticmethod
#     @verify_source_in_graph
#     def topological_sort(graph: RawAdjacencyList,
#                          source: str) -> list[str]:
#         def _topo_dfs(node):
#             nonlocal graph, explored_nodes
#             explored_nodes.append(node)
#             for tail in graph[node]:
#                 if tail not in explored_nodes:
#                     _topo_dfs(tail)
#
#         explored_nodes: list[str] = [source]
#         for tail in graph[source]:
#             if tail not in explored_nodes: _topo_dfs(tail)
#
#         return explored_nodes

import numpy as np
import pandas as pd
from collections.abc import Generator
from itertools import permutations#, combinations
from functools import cache

class AdjacencyMatrixStrategy(GraphStrategy):
    @staticmethod
    def variables(matrix) -> set[str]:
        return set(matrix.index)

    @classmethod
    def ancestors(cls, matrix: pd.DataFrame) -> dict[str, set[str]]:
        exists_path: dict[str, set[str]] = \
              {sink: set() for sink in cls.variables(matrix)}

        current_matrix = matrix

        while current_matrix.to_numpy().any():
            for sink in current_matrix.index:
                if current_matrix.loc[sink, sink]:
                    raise CycleDetectedError(
                        "There is a cycle in the graph."
                    )

                for source in current_matrix.index:
                    if current_matrix.loc[source, sink] > 0:
                        exists_path[sink].add(source)

            current_matrix @= matrix

        return exists_path


    @classmethod
    def descendants(cls, matrix: pd.DataFrame) -> dict[str, set[str]]:
        exists_path: dict[str, set[str]] = \
              {source: set() for source in cls.variables(matrix)}

        current_matrix = matrix

        while current_matrix.to_numpy().any():
            for source in current_matrix.index:
                if current_matrix.loc[source, source]:
                    raise CycleDetectedError(
                        "There is a cycle in the graph."
                    )

                for sink in current_matrix.columns:
                    if current_matrix.loc[source, sink] > 0:
                        exists_path[source].add(sink)

            current_matrix @= matrix

        return exists_path

    @classmethod
    def paths(cls, matrix: pd.DataFrame) -> Generator[list[str]]:
        """I'm so proud of this one function."""
        variables: list[str] = cls.variables(matrix)
        @cache
        def find_sub_paths(source) -> list[list[str]]:
            nonlocal matrix

            sub_paths: list[list[str]] = [
                [source] + path for child in matrix.columns
                if matrix.loc[source, child] != 0
                for path in find_sub_paths(child)
            ]

            return sub_paths if sub_paths else [[source]]

        def is_sub_path(super_path: list[str],
                        sub_path: list[str]) -> bool:
            len_sub_path: int = len(sub_path)
            len_super_path: int = len(super_path)

            if len_super_path < len_sub_path: return False
            for index in range(len_super_path - len_sub_path + 1):
                if super_path[index: len_super_path] == sub_path:
                    return True
            return False


        found_paths = [path for variable in variables
            for path in find_sub_paths(variable)]

        for path_a, path_b in permutations(found_paths, 2):
            if path_b in found_paths and is_sub_path(path_a, path_b):
                found_paths.remove(path_b)

        for path in found_paths:
            yield path

        # return found_paths

    @classmethod
    def confounders(cls, matrix) -> Generator[str]:
        # from pprint import pprint
        paths: list[list[str]] = list(cls.paths(matrix))

        confounders: dict[str, set[str]] = {
            covariate: [
                path[path.index(covariate):] for path in paths
                if covariate in path
            ] for covariate in cls.variables(matrix) - {"X", "Y"}

            if any(path.index(covariate) < path.index("X")
                for path in paths if covariate in path and "X" in path)
            and any(path.index(covariate) < path.index("Y")
                for path in paths if covariate in path
                and "X" not in path and "Y" in path)
        }

        # colliders: set[str] = cls.colliders(matrix)
        mediators: set[str] = set(
            confounder for confounder in confounders 
            if any(confounder in path
                for parent in set(confounders) - {confounder}
                for path in confounders[parent])
        )
        del paths
        descendants: dict[str, set[str]] = cls.descendants(matrix)

        for confounder, paths in confounders.copy().items():
            if all(
                any(
                    mediator in path
                    for mediator in mediators & descendants[confounder]
                ) for path in paths if "X" in path
            ): del confounders[confounder]; continue


            # if all(
            #     any(
            #         mediator in path
            #         for mediator in mediators & descendants[confounder]
            #     ) for path in paths if "X" in path
            # ):  del confounders[confounder]

        # pprint(confounders)
        # print(confounders)

        # for mediator in mediators.copy():
        #     if any(
        #         all(mediator in path for path in paths) for paths in
        #         descendants[confounder]
        #     )

        return confounders.keys()

    # @classmethod
    # def colliders(cls, matrix) -> Generator[str]:
    #     return (variable for variable in set(matrix.columns) - {"X", "Y"}
    #         if sum(matrix[variable]) > 1)
    #
    # @classmethod
    # def find_minimum_admissible_set(cls, matrix) -> set[str]:
    #     confounders: set[str] = set(cls.confounders(matrix))
    #     minimum_admissible_sets: set[set[str]] = set(
    #         (confounder,) for confounder in confounders
    #     )
    #     if not minimum_admissible_sets: return minimum_admissible_sets
    #
    #     colliding_confounders: set[str] = \
    #         confounders & set(cls.colliders(matrix))
    #
    #     for collider in colliding_confounders:
    #         for path in cls.paths(matrix):
    #             if collider in path:
    #                 minimum_admissible_sets.add(
    #                     (collider, path[path.index(collider) - 1])
    #                 )
    #
    #     for set_a, set_b in permutations(minimum_admissible_sets, 2):
    #         if set_b in minimum_admissible_sets and \
    #             set(set_a) >= set(set_b):
    #             minimum_admissible_sets.remove(set_b)
    #
    #     return minimum_admissible_sets
    #
import json
from itertools import product

class Graph:
    def __init__(self,
                 data: RawAdjacencyList | pd.DataFrame,
                 strategy: GraphStrategy):

        # Deduce strategy
        self._strategy: GraphStrategy = strategy

        if strategy == AdjacencyMatrixStrategy:
            if len(data.columns) != len(data.index):
                raise MissingVariableError("The matrix is not square.")
            if not ("X" in data.index and "Y" in data.index):
                raise MissingVariableError

        # Format data
        self._data: pd.DataFrame | RawAdjacencyList = data

        # Other values
        self.descendants = self._strategy.descendants(self._data)
        self.ancestors = self._strategy.ancestors(self._data)
        self.paths = list(self._strategy.paths(self._data))
        self.confounders = set(self._strategy.confounders(self._data))

        # self.colliders = set(self._strategy.colliders(self._data))


    def __str__(self) -> str:
        ...

    @property
    def variables(self) -> list[str]:
        return self._strategy.variables(self._data)

    # @property
    # def descendants(self) -> list[str]:
    #     return self._strategy.descendants(self._data)

    # @property
    # def paths(self) -> list[str]:
    #     return self._strategy.paths(self._data)

    # @property
    # def confounders(self) -> list[str]:
    #     return list(self._strategy.find_confounders(self._data)) \
    #         if self._strategy == AdjacencyMatrixStrategy else None
    #
    # def find_minimum_admissible_sets(self) -> set[str]:
    #     return self._strategy.find_minimum_admissible_sets(self._data)
    #
    # def depth_first_search(self, source: str | int):
    #     self._strategy.depth_first_search(
    #         self._data, source
    #     )
    #
    # def topological_sort(self, source: str|int) -> list[str]:
    #     return self._strategy.topological_sort(
    #         self._data, source
    #     )

    # NOTE: Constructors
    @classmethod
    def import_matrix_from_csv(cls, filepath: str) -> "Graph":
        return cls(
            pd.read_csv(filepath,
                        encoding='utf-8',
                        delimiter=',',
                        header=0,
                        index_col=0,
                        ).astype(np.int8),
            strategy=AdjacencyMatrixStrategy
        )

    @classmethod
    def from_list_to_matrix(cls,
                            adjacency_list: RawAdjacencyList
                            ) -> pd.DataFrame:

        variables = list(adjacency_list.keys())
        matrix: pd.DataFrame = pd.DataFrame(
            index=variables, columns=variables
        )

        for head, tail in product(matrix.index, matrix.columns):
            matrix.loc[head, tail] = 1 \
                if tail in adjacency_list[head] else 0

        return cls(matrix.astype(np.int8), AdjacencyMatrixStrategy)


    @classmethod
    def import_json(cls, filepath: str | None,
                    strategy: GraphStrategy) -> "Graph":
        data: dict[str, list[str]] = json.load(
            open(filepath, "r")
        )["graph"]

        match strategy:
            case _ if strategy == AdjacencyListStrategy:
                return cls(data, AdjacencyListStrategy)
            case _ if strategy == AdjacencyMatrixStrategy:
                return cls.from_list_to_matrix(data)

