% Consider the set of vectors in R5: B1 = {w1, w2, w3, w4, w5, w6} where
w1 = [-1; 1; 2; 4; 1];
w2 = [-1; 1; 2; 1; 1];
w3 = [3; 1; -1; 2; 0];
w4 = [2; 1; 0; 3; -1];
w5 = [5; 4; 1; 11; 3];
w6 = [1; 0; -1; 2; 1];

% Show B1 is a linearly dependent set.
% The set of vectors in R5: B2 is linearly dependent if there is 
% a non-trivial solution to c1w1 + c2w2 + c3w3 + c4w4 + c5w5 + c6w6 = 0

% Convert the set of vectors in R5: B1 to a matrix A1
A1 = [w1 w2 w3 w4 w5 w6];

% Set the vector b1 to be the zero vector
b1 = [0; 0; 0; 0; 0];

% Create the augmented matrix [A1 b1]
A1b1 = [A1 b1];

% Use the rref function to find the reduced row echelon form of A1b1
rref(A1b1)

% Solve the system of equations
% ERROR HERE
% solve(A1b1)

% Then, demonstrate the conclusion of Theorem 1.2.2: 
% Find a maximal linearly independent set B′1 % of vectors from B1, and show that vectors from B1 that
% are NOT in B′1 % set are contained in the span of B′1 (and hence, that span B1 = span B′1).

% What is the dimension of span B1? ERROR HERE
% Dimension is the number of linearly independent vectors in the set










% Consider the set: B2 = {z1, z2, z3, z4, z5} where
z1 = [5; 2; 1; 7; 1];
z2 = [2; -1; 0; 0; 1];
z3 = [1; 2; 1; 1; 0];
z4 = [2; -4; -2; 4; 1];
z5 = [0; 1; 2; 3; -1];

% Find all the vectors in the intersection span B1 INTERSECTION span B2.

% Convert the set of vectors in R5: B1 to a matrix A1
A1 = [w1 w2 w3 w4 w5 w6];

% Convert the set of vectors in R5: B2 to a matrix A2
A2 = [z1 z2 z3 z4 z5];

% Find the intersection of the two spans
intersect(A1,A2)

% Show that this is a subspace
% Closed under addition
% Closed under scalar multiplication
