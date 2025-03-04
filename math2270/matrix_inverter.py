import numpy as np
from numpy.linalg import inv

matrix = np.matrix([
    [1, 2, 1],
    [2, 5, 0],
    [3, 3, 8]
])

print(matrix @ inv(matrix))

