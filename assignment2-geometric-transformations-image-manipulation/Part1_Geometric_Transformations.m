% Sample Code
% x1=0;
% x2=1;
% y1=0;
% y2=2;
% x = [x1, x2, x2, x1, x1]
% y = [y1, y1, y2, y2, y1]
% plot(x, y, 'k-', 'LineWidth', 1);
% hold on;
% P=[0 1 1 0;0 0 2 2];
% plot(P(1,1),P(2,1),'r*');
% plot(P(1,2),P(2,2),'g*');
% plot(P(1,4),P(2,4),'b*');
% axis([-1 3 -1 3]);

% Vectors
% First, choose 2 vectors (note that in the code above these two vectors are (0, 0) and
% (1, 2)) the terminal points of which are used to form a rectangle. Plot this rectangle
% using code similar to that provided above. 

% Plot a rectangle with the vectors (2, 5) and (8, 13)
v1 = 2;
v2 = 8;
z1 = 5;
z2 = 13;
v = [v1, v2, v2, v1, v1];
z = [z1, z1, z2, z2, z1];
plot(v, z, 'k-', 'LineWidth', 1);
hold on;

% Plot red at the first vector, green at the second vector, and blue at the midpoint of the rectangle
P = [2 8 8 2;5 5 13 13];
plot(P(1,1),P(2,1),'r*');
plot(P(1,2),P(2,2),'g*');
plot(P(1,4),P(2,4),'b*');
axis([-1 10 -1 15]);

% Then choose TWO different matrices each
% of which performs a single geometric operation of your choice. In both cases, multiply
% your 2 vectors by these matrices and plot the resulting rectangles. Include one plot in
% your report which shows your original rectangle and your two transformed rectangles.
% Include the matrices you used to do the transformation.

% Stretch in the x-direction by a factor of 5
xStretch = [5 0; 0 1];


% Reflection across the y-axis
yReflect = [-1 0; 0 1]





% • Composition
% Verify the result of Problem A6 in Section 3.3 of the text; that the two compositions of a
% vertical shear and a stretch in the y direction, do not commute. Do this by plotting the
% image of the unit square with corners at (1, 1),(2, 1),(2, 2),(1, 2). Then plot the results
% of applying the COMPOSITION of the two operations (vertical shear and stretch) in
% both orders and showing that the resulting shape depends on the order in which the
% operations are applied. Corroborate your ’experimental proof’ of the non-commutability
% of these transformations by referring to Theorem 3.2.5 of the text (i.e., by considering
% the associated matrices).