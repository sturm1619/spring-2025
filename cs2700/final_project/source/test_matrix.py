from graph import Graph#, AdjacencyMatrixStrategy
import json

for index in range(1,10):
    json_file: dict[str, dict[str]] = json.load(
            open(f"graph_{index}.json")
    )
    print(json_file["description"])
    graph = Graph.from_list_to_matrix(json_file["graph"])
    # graph = Graph.import_json(
    #     f"graph_{index}.json", AdjacencyMatrixStrategy
    # )
    print(graph._data)
    # print(graph.variables)
    # print("\tdescendants", graph.descendants)
    # print("\tancestors", graph.ancestors)
    # print(graph.paths)
    # print("\tcolliders:", graph.colliders)
    print("\tMinimum admissible set:", graph.confounders)
    print(json_file["comment"])
    print()

