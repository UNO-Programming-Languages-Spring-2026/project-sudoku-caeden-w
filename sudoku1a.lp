% Sudoku Solver
%
% Hints:
% For subgrid of size n, subgrids can be identified by labels 1..n*n
% A cell (x,y) can be mapped to the subgrid labeled 1+(((x-1)/n)*n+(y-1)/n)

% Your implementation please...

{ sudoku(1..4, 1..4, 1..4) } = 16.
% achieved: get all combinations of a 4x4 board

:- sudoku(X, Y, N), initial(A, B, C), X = A, Y != B, N = C.
% achieved: exclude where the same value exists in different spots of the same row

:- sudoku(X, Y, N), initial(A, B, C), X != A, Y = B, N = C.
% achieved: exclude where the same values exist in different spots of the same column

%:- sudoku(X, Y, N), sudoku(A, B, C), X = A, Y = B, N != C.

:- sudoku(X, Y, N), sudoku(A, B, C), X = A, Y != B, N = C.
:- sudoku(X, Y, N), sudoku(A, B, C), X != A, Y = B, N = C.

#show sudoku/3.