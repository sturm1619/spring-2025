import pandas as pd
import numpy as np
import numpy.linalg as linalg

if __name__ == "__main__":
    P = np.array([[0.95, 0.03], [0.05, 0.97]], dtype=np.float64)
    x = np.array([100_000, 25_000], ndmin=2, dtype=np.int32).T

    eigenvalues, V = linalg.eig(P)
    D = np.eye(P.ndim) * eigenvalues.T


    pd.DataFrame(
        x.T.tolist()
        + [np.int32(value)
            for t in range(1,6)
            for value in (V @ D**t @ linalg.inv(V) @ x).T],
        columns=["City", "Population"],
        index=range(0,6)
    ).to_csv("population.csv")

    print("Population at infinity: ",
          (V @ D**np.inf @ linalg.inv(V) @ x).T)
