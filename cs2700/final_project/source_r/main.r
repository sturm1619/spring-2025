# TODO: Parse Matrix

# TODO: Validate Matrix

validate_graph <- function(matrix) {
    # TODO: Square Matrix
    if (nrow(matrix) != ncol(matrix)) {
        print("Graph is not a Square Matrix."); return(FALSE)
    }

    # TODO: Detect Cycles
    for (row in 1:nrow(matrix)) {
        if (matrix[row, row] == 1) {
            print("Cycle detected"); return(FALSE)
        }
    }

        return(TRUE)
}

# TODO: Compute Minimal Admissible Sets

depth_first_search <- function(matrix, start_edge) {

}

# TODO: Main

main <- function() {
    adjacency_graph <- as.matrix(
        read.csv("graph.csv", header=FALSE)
        )

    if (!(validate_graph(adjacency_graph)))
        return()

    print("Test is good")

}

main()
