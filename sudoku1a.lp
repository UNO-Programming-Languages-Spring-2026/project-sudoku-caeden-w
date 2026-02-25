% Sudoku Solver
%
% Hints:
% For subgrid of size n, subgrids can be identified by labels 1..n*n
% A cell (x,y) can be mapped to the subgrid labeled 1+(((x-1)/n)*n+(y-1)/n)

% Your implementation please...

% sudoku(X, Y, N) :- X = 1..4, Y = 1..4, N = 1..4.

{ sudoku(1..4, 1..4, 1..4) } = 16.

% :- sudoku(X, Y, N), initial(A, B, C), X = A, Y = B.

:- sudoku(X, Y, N), initial(A, B, C), X = A, Y != B, N = C.
:- sudoku(X, Y, N), initial(A, B, C), X != A, Y = B, N = C.

:- sudoku(X, Y, N), sudoku(A, B, C), X = A, Y = B, N != C.

:- sudoku(X, Y, N), sudoku(A, B, C), X = A, Y != B, N = C.
:- sudoku(X, Y, N), sudoku(A, B, C), X != A, Y = B, N = C.

#show sudoku/3.