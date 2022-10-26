% Consider the following picture:
% The picture is a black rectangle with the following pts, transformed into the red rectangle:
topRHS_Black = [1;2];
botLHS_Black = [0;0];
topRHS_Red = [0;0];
botLHS_Red = [-7;-2];


black = cat(2, topRHS_Black, botLHS_Black);

% Find the matrix that transforms the black rectangle into the red rectangle. Look at
% the diagram and observe what has happened to the black rectangle. Form the matrices
% that do these operations; there are two.

% Rotate by topRHS_Black and botLHS_Black by 180 degrees
% Then apply a horizontal stretch such that we get topRHS_Red and botLHS_Red

% The matrix that rotates by 180 degrees is:
R = [cos(pi) -sin(pi); sin(pi) cos(pi)];
% The matrix that stretches horizontally to get topRHS_Red and botLHS_Red is:
S = [2 0; 0 3.5];

% Multiply these matrices in the correct order to get the transformation matrix A. 
A_Transformation = R * S

% Experimentally verify that you can plot the black
% rectangle yourself and then multiply the vectors that describe the opposite vertices by
% A and obtain and plot the red rectangle. Include the matrices you used to do this in
% your report.

% Plot the black rectangle with the vectors (1, 2) and (0, 0)
black_v1 = [1;2];
black_v2 = [0;0];
black_matrix = cat(2, black_v1, black_v2);
black_v = [black_matrix(1,1), black_matrix(1,2), black_matrix(1,2), black_matrix(1,1), black_matrix(1,1)];
black_u = [black_matrix(2,1), black_matrix(2,1), black_matrix(2,2), black_matrix(2,2), black_matrix(2,1)];
plot(black_v, black_u, 'k-');
hold on;
axis([-8 2 -3 3]);


% ???????????
sanity_check = A_Transformation * black_matrix;
sanity_check_v = [sanity_check(1,1), sanity_check(1,2), sanity_check(1,2), sanity_check(1,1), sanity_check(1,1)];
sanity_check_u = [sanity_check(2,1), sanity_check(2,1), sanity_check(2,2), sanity_check(2,2), sanity_check(2,1)];
plot(sanity_check_v, sanity_check_u, 'r-');
hold on;
