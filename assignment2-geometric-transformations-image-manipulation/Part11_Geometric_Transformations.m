% First, choose 2 vectors (note that in the code above these two vectors are (0, 0) and
% (1, 2)) the terminal points of which are used to form a rectangle. Plot this rectangle
% using code similar to that provided above. 

% Plot a rectangle with the vectors (2, 5) and (8, 13)
org_vector1 = [2;5]
org_vector2 = [8;13]
org_matrix = cat(2, org_vector1, org_vector2)
org_v = [org_matrix(1,1), org_matrix(1,2), org_matrix(1,2), org_matrix(1,1), org_matrix(1,1)]
org_z = [org_matrix(2,1), org_matrix(2,1), org_matrix(2,2), org_matrix(2,2), org_matrix(2,1)]
plot(org_v, org_z, 'k-', 'LineWidth', 1);
hold on;

% Plot red at the first vector, green at the second vector, and blue at the midpoint of the rectangle
P = [2 8 8 2;5 5 13 13];
plot(P(1,1),P(2,1),'r*');
plot(P(1,2),P(2,2),'g*');
plot(P(1,4),P(2,4),'b*');
axis([-15 45 0 15]);

% Then choose TWO different matrices each
% of which performs a single geometric operation of your choice. In both cases, multiply
% your 2 vectors by these matrices and plot the resulting rectangles. Include one plot in
% your report which shows your original rectangle and your two transformed rectangles.
% Include the matrices you used to do the transformation.

% Stretch in the x-direction by a factor of 5... DONE CHECK
xStretch_Operation = [5 0; 0 1];
xStretch_Result_matrix = xStretch_Operation * org_matrix;
xStretch_Result_v = [xStretch_Result_matrix(1,1), xStretch_Result_matrix(1,2), xStretch_Result_matrix(1,2), xStretch_Result_matrix(1,1), xStretch_Result_matrix(1,1)]
xStretch_Result_z = [xStretch_Result_matrix(2,1), xStretch_Result_matrix(2,1), xStretch_Result_matrix(2,2), xStretch_Result_matrix(2,2), xStretch_Result_matrix(2,1)]
plot(xStretch_Result_v, xStretch_Result_z, 'r-', 'LineWidth', 1);
hold on;
% Plotting where the red, green, and blue points are
P = [10 40 40 10;5 5 13 13];
plot(P(1,1),P(2,1),'r*');
plot(P(1,2),P(2,2),'g*');
plot(P(1,4),P(2,4),'b*');

% Reflection across the y-axis ... DONE CHECK
yReflect_Operation = [-1 0; 0 1];
yReflect_Result_Matrix = yReflect_Operation * org_matrix;
yReflect_v = [yReflect_Result_Matrix(1,1), yReflect_Result_Matrix(1,2), yReflect_Result_Matrix(1,2), yReflect_Result_Matrix(1,1), yReflect_Result_Matrix(1,1)];
yReflect_z = [yReflect_Result_Matrix(2,1), yReflect_Result_Matrix(2,1), yReflect_Result_Matrix(2,2), yReflect_Result_Matrix(2,2), yReflect_Result_Matrix(2,1)];
plot(yReflect_v, yReflect_z, 'm-', 'LineWidth', 1);
hold on;
% Plotting where the red, green, and blue points are
P = [-2 -8 -8 -2;5 5 13 13];
plot(P(1,1),P(2,1),'r*');
plot(P(1,2),P(2,2),'g*');
plot(P(1,4),P(2,4),'b*');