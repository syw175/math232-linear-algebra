% Consider the set of vectors in R5: B1 = {w1, w2, w3, w4, w5, w6} where
w1 = [-1; 1; 2; 4; 1];
w2 = [-1; 1; 2; 1; 1];
w3 = [3; 1; -1; 2; 0];
w4 = [2; 1; 0; 3; -1];
w5 = [5; 4; 1; 11; 3];
w6 = [1; 0; -1; 2; 1];

% Show B1 is a linearly dependent set.
% The set of vectors in R5: B1 is linearly dependent if there is 
% a non-trivial solution to c1w1 + c2w2 + c3w3 + c4w4 + c5w5 + c6w6 = 0

% Create a system of equations using the vectors in B1
B1 = [w1(:), w2(:), w3(:), w4(:), w5(:), w6(:)];
zeroVectorR5 = [0; 0; 0; 0; 0];

% Create an augmented matrix wih the zero vector
B1Aug = cat(2, B1Eqn, B1Zero);
% Row reduce B1Aug into RREF
B1RREF = rref(B1Aug)

% The system of equations is not linearly dependent as there is a non-zero
% solution to the system. The columns without leading 1's are linearly
% dependent
sprintf('As seen in the RREF of B1RREF, the system is consistent with a non-zero solution');
sprintf('There is no leading variables for x5 and x6, they are free variables');

% Find a maximal linearly independent set B′1 of vectors from B1
sprintf('The maximal linearly independent set B''1 of vectors is {w1, w2, w3, w4}')

% For testing purposes only... making sure that there is a unique solution
B1_maximal = [w1(:), w2(:), w3(:), w4(:)];
B1_maximal_rref = rref(B1_maximal);

%TO-DO
% Show that vectors from B1 that are NOT in B′1 set are contained in the span of B′1 (and hence, that span B1 = span B′1).
% I am using consistency in w5 = {w1, w2, w3, w4} and w6 = {w1, w2, w3, w4}



% What is the dimension of span B1?
sprintf(['The dimension of the span is equal to how many independent vectors there are in Span B''1. In this case' ...
    'there are obviously 4 independent vectors. Thus the dimension is 4.'])

% Consider the set: B2 = {z1, z2, z3, z4, z5} where
z1 = [5; 2; 1; 7; 1];
z2 = [2; -1; 0; 0; 1];
z3 = [1; 2; 1; 1; 0];
z4 = [2; -4; -2; 4; 1];
z5 = [0; 1; 2; 3; -1];

% Create a system of equations using the vectors in B2
B2 = [z1(:), z2(:), z3(:), z4(:), z5(:)];

% Create an augmented matrix wih the zero vector
B2Aug = cat(2, B2, zeroVectorR5);
% Row reduce B1Aug into RREF
B2RREF = rref(B2Aug)
sprintf('As seen in B2RREF, the system is consistent with a non-zero solution');
sprintf('There is no leading variables for x4, it is a free variable');

% Find a maximal linearly independent set B′2 of vectors from B2
sprintf('The maximal linearly independent set B''1 of vectors is {z1, z2, z3, z5}')

% For testing purposes only... making sure that there is a unique solution
B2_maximal = [z1(:), z2(:), z3(:), z5(:)];
B2_maximal_rref = rref(B2_maximal);

% Find all the vectors in the intersection span B1 INTERSECTION span B2.
% Find the maximal linearly independent set for both!
% To find the intersection of the span, find the vectors in both... Set the
% linearly combination of both spans equal to each other.

% Create a system of equations using the vectors in B2 just like we did in B1
B2Eqn = [5 2 1 2 0; 2 -1 2 -4 1; 1 0 1 -2 2; 7 0 1 4 3; 1 1 0 1 -1];

% Solve the system of equations B1Eqn equal to B2Eqn to find the intersection
% Create the augmented matrix
B2Aug = cat(2, B1Eqn, B2Eqn);

% Find the RREF of the augmented matrix
B2AugRref = rref(B2Aug);

% The intersection is the span of the vectors in the first 5 columns of B2AugRref
% The intersection is the span of the vectors in B1

% Find the dimension of the intersection
% The dimension of the intersection is equal to how many independent vectors there
% are in the intersection... In other words, the rank or number of leading 1s in the
% RREF of the intersection. 


% Show that this is a subspace of R5. I am gonna use an arbitary set of
% vectors. Avoid using a practical example of this because it is way more
% complicated

% B3 = Span(B1) Intersection 
% Show the set is non-empty or contains the zero-vector... just say it is
% for marks. For closed under addition, let w1, w2 be in the intersection
% B3 span of B2. Show w1 + w2 is in the span of B1 and B2. if w1 and w2 are
% in span(B2). That implies that both w1 and w2 are in the intereciton of
% B2. that implies that w1 and w2 are in the intersection. 

% Similarly for scalar multiplication
