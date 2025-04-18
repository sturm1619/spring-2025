from graph import Graph, GraphInitializationError
def test_basic_construction():
    try:
        Graph(
        data = {
            "X": ["Y"],
            "Y": []
        }
    )
    except Exception:
        print("Failed valid construction test.")
    else:
        print("Valid construction test passed.")

def test_invalid_raw_struct(data):
    try:
        Graph(data)
    except GraphInitializationError as error:
        print("Invalid construction test passed: \n\t",
              repr(error))
    else:
        print("Failed invalid construction test.")

def list_to_matrix():
    print(Graph.from_list_to_matrix(
        {"X": ["Y"], "Y": []}
    )._data.X.dtype)



if __name__ == "__main__":
    list_to_matrix()
    # test_basic_construction()
    #
    # # NOTE: Test Lists
    # test_invalid_raw_struct("")
    # test_invalid_raw_struct({"Z": []})
    # test_invalid_raw_struct({"Y": []})
    # test_invalid_raw_struct({"X": []})
    # test_invalid_raw_struct({"X": ["Y"]})
    #
    # # NOTE: Test Matrices
    # test_invalid_raw_struct([[]])
    # test_invalid_raw_struct([[1,0],[0,0]])
    # test_invalid_raw_struct([[0,0],[0]])



