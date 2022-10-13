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

% Create a system of equations using the matrixes
B1Eqn = [-1 -1 3 2 5 1; 1 1 1 1 4 0; 2 2 -1 0 1 -1; 4 1 2 3 11 2; 1 1 0 -1 3 1];

% Set the vector b1 to be the zero vector
B1Zero = [0; 0; 0; 0; 0];

% See if there is a non-trivial solution augmented matrix
B1Aug = cat(2, B1Eqn, B1Zero);
B1AugRref = rref(B1Aug)

% Show that the system is consistent
sprintf('As seen in the RREF of B1AugRref, the system is consistent')

% A non-trivial solution that satisfies the system of equations is
% c1 = 1, c2 = 1, c3 = 1, c4 = 1, c5 = 1, c6 = 1
% The solution is non-trivial because the coefficients are not all 0s
% The system of equations is not linearly dependent
% No leading variables for x4 and x5, they are free variables


% Find a maximal linearly independent set B′1 of vectors from B1, and show that vectors from B1 that
% are NOT in B′1 set are contained in the span of B′1 (and hence, that span B1 = span B′1).


% What is the dimension of span B1? (CALCULATE THIS ANSWER AFTER)
% The dimension of the span is equal to how many independent vectors there
% are in Span B1... In other words, the rank or number of leading 1s in the
% RREF of the maximal linearly independent set B'1


% Consider the set: B2 = {z1, z2, z3, z4, z5} where
z1 = [5; 2; 1; 7; 1];
z2 = [2; -1; 0; 0; 1];
z3 = [1; 2; 1; 1; 0];
z4 = [2; -4; -2; 4; 1];
z5 = [0; 1; 2; 3; -1];

% Find all the vectors in the intersection span B1 INTERSECTION span B2.

% Create a system of equations using the vectors in B2 just like we did in B1
B2Eqn = [5 2 1 2 0; 2 -1 2 -4 1; 1 0 1 -2 2; 7 0 1 4 3; 1 1 0 1 -1];

% Solve the system of equations B1Eqn equal to B2Eqn to find the intersection
% Create the augmented matrix
B2Aug = cat(2, B1Eqn, B2Eqn);

% Find the RREF of the augmented matrix
B2AugRref = rref(B2Aug)

% The intersection is the span of the vectors in the first 5 columns of B2AugRref
% The intersection is the span of the vectors in B1

% Find the dimension of the intersection
% The dimension of the intersection is equal to how many independent vectors there
% are in the intersection... In other words, the rank or number of leading 1s in the
% RREF of the intersection. 
% The dimension of the intersection is 5


% Show that this is a subspace of R5.
% Closed under addition
% Closed under scalar multiplication
% The zero vector is in the subspace

