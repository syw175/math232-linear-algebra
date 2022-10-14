% Consider the set of vectors in R5: B1 = {w1, w2, w3, w4, w5, w6} where
w1 = [-1; 1; 2; 4; 1];
w2 = [-1; 1; 2; 1; 1];
w3 = [3; 1; -1; 2; 0];
w4 = [2; 1; 0; 3; -1];
w5 = [5; 4; 1; 11; 3];
w6 = [1; 0; -1; 2; 1];

% Show B1 is a linearly dependent set.
% Create a system of equations using the vectors in B1
B1 = [w1(:), w2(:), w3(:), w4(:), w5(:), w6(:)];
zeroVectorR5 = [0; 0; 0; 0; 0];

% Create an augmented matrix wih the zero vector
B1Aug = cat(2, B1, zeroVectorR5);
% Row reduce B1Aug into RREF
B1RREF = rref(B1Aug)

% The system of equations is not linearly independent
sprintf('The system is consistent with a non-zero solution, x5 and x6 are free');

% Find a maximal linearly independent set B′1 of vectors from B1
sprintf('The maximal linearly independent set B''1 of vectors is {w1, w2, w3, w4}')

% For testing purposes only... making sure that there is a unique solution
B1_maximal = [w1(:), w2(:), w3(:), w4(:)];
B1_maximal_rref = rref(B1_maximal);

% Show that vectors from B1 that are NOT in B′1 set are contained in the span of B′1 (and hence, that span B1 = span B′1).
% I am using consistency in w5 = {w1, w2, w3, w4} and w6 = {w1, w2, w3, w4}
B1_w5_Aug = cat(2, [w1(:), w2(:), w3(:), w4(:)], w5)
B1_w5_Rref = rref(B1_w5_Aug)

B1_w6_Aug = cat(2, [w1(:), w2(:), w3(:), w4(:)], w6)
B1_w6_Aug_Rref = rref(B1_w6_Aug)
% Clearly consistent

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
B1B2_Maximal_System = [w1(:), w2(:), w3(:) w4(:), -z1(:), -z2(:), -z3(:), -z5(:)]
B1B2_Aug = cat(2, B1B2_Maximal_System, zeroVectorR5)
B1B2_Rref = rref(B1B2_Aug)
B1B2_Rref = rats(B1B2_Rref)

% Convert this with equations??
intersection1 = rats([-7/9 ; -5/9; -4/3; -1; -4/3]);
intersection2 = rats([-4/9; 29/18; 11/12; 3/4; 5/12;]);
intersection3 = rats([-2/9; 5/9; -7/6; 3/2; -1/6]);




