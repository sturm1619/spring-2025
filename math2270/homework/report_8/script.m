A = [1,0;1,0];
A_1 = [1,1;1,1]; A_2 = [0,1;1,1]; A_3 = [0,0;1,1]; A_4 = [0,0;0,1];

function vectorized = vectorize(A)
    vectorized = reshape(A, [4,1])
end

function coordinates = verify_and_solve(A, A_1, A_2, A_3, A_4)
    b_M = horzcat(
        vectorize(A_1),
        vectorize(A_2),
        vectorize(A_3),
        vectorize(A_4)
    )

    if det(b_M) != 0
        coordinates = reshape(b_M \ vectorize(A), [2,2]);
      end
end

answers = verify_and_solve(A, [1,1;1,1], [0,1;1,1], [0,0;1,1], A_4 = [0,0;0,1])


