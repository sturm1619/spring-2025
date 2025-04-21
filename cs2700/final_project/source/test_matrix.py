from graph import Graph#, AdjacencyMatrixStrategy
import json
import pprint

for index in range(1,11):
    json_file: dict[str, dict[str]] = json.load(
            open(f"graph_{index}.json")
    )
    print(json_file["description"])
    graph = Graph.from_list_to_matrix(json_file["graph"])
    pprint.pprint(json_file["graph"])
    # graph = Graph.import_json(
    #     f"graph_{index}.json", AdjacencyMatrixStrategy
    # )
    # print(graph._data)
    # print(graph._strategy.platt_algorithm(graph._data))
    # print("Variables:", graph.variables)
    # print("\tdescendants", graph.descendants)
    # print("\tancestors", graph.ancestors)
    # print(graph.paths)
    # print("\tColliders:", graph.colliders)
    print("\tConfounders:", graph.confounders)
    # graph._strategy.confounding_paths(graph._data)
    # print("\tMinimum Admissible:", graph.sets)
    print(json_file["comment"])
    graph._data.to_csv(f"matrix_{index}.csv")
    print()

