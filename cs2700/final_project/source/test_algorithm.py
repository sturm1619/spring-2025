from graph import Graph, GraphStrategy

def test_m_graph():
    admissible_sets = Graph({
        "X": [],
        "Y": [],
        "W_1": ["X", "W_3"],
        "W_2": ["Y", "W_3"],
        "W_3": []
    }).find_minimum_admissible_sets()

    assert len(admissible_sets) == 0
    print(admissible_sets)

def test_confounder():
    admissible_sets = Graph({
            "X": [],
            "Y": [],
            "W_1": ["X", "Y"]
        }).find_minimum_admissible_sets()

    assert len(admissible_sets) == 1
    print(admissible_sets)

def test_complex_m_graph():
    admissible_sets = Graph({
        "X": [],
        "Y": [],
        "W_1": ["X", "W_3"],
        "W_2": ["Y", "W_3"],
        "W_3": ["X","Y"]
    }).find_minimum_admissible_sets()

    assert len(admissible_sets) >= 2
    print(admissible_sets)

# print(issubclass(model._strategy, GraphStrategy))

# model.depth_first_search("Z")
# print(model.topological_sort("Z"))
# print(model.find_admissible_sets())

test_m_graph()
test_confounder()
test_complex_m_graph()
