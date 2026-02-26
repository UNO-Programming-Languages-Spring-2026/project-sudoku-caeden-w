% Sudoku Solver
%
% Hints:
% For subgrid of size n, subgrids can be identified by labels 1..n*n
% A cell (x,y) can be mapped to the subgrid labeled 1+(((x-1)/n)*n+(y-1)/n)

% Your implementation please...

subgrid(1, 1, 1).
subgrid(1, 2, 1).
subgrid(2, 1, 1).
subgrid(2, 2, 1).
subgrid(1, 3, 2).
subgrid(1, 4, 2).
subgrid(2, 3, 2).
subgrid(2, 4, 2).
subgrid(3, 1, 3).
subgrid(3, 2, 3).
subgrid(4, 1, 3).
subgrid(4, 2, 3).
subgrid(3, 3, 4).
subgrid(3, 4, 4).
subgrid(4, 3, 4).
subgrid(4, 4, 4).
% achieved: facts required for question 1b

{ sudoku(1..4, 1..4, 1..4) } = 16.
% achieved: get all combinations of a 4x4 board

:- sudoku(X, Y, N), initial(A, B, C), X = A, Y != B, N = C.
% achieved: exclude where the same value exists in different spots of the same row

:- sudoku(X, Y, N), initial(A, B, C), X != A, Y = B, N = C.
% achieved: exclude where the same values exist in different spots of the same column

:- sudoku(X, Y, N), sudoku(A, B, C), X = A, Y = B, N != C.
% achieved: remove duplicates in the same spot

:- sudoku(X, Y, N), sudoku(A, B, C), X = A, Y != B, N = C.
% achieved: exclude where the same values exist in different spots of the same column

:- sudoku(X, Y, N), sudoku(A, B, C), X != A, Y = B, N = C.
% achieved: exclude where the same values exist in different spots of the same column

:- subgrid(X, Y, G), G = 1..4, sudoku(A, B, N), N = {(1..4)}.
% achieved: exclude where a subgrid does not possess each of the numbers 1-4


#show sudoku/3.