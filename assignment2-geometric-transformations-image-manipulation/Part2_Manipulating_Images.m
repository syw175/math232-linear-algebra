% Consider the following picture:
% The picture is a black rectangle with the following pts, transformed into the red rectangle:
% topRHS_Black = (1, 2)
% botLHS_Black = (0, 0)
% topRHS_Red = (0, 0)
% botLHS_Red = (-7, -2)

% Find the matrix that transforms the black rectangle into the red rectangle. Look at
% the diagram and observe what has happened to the black rectangle. Form the matrices
% that do these operations; there are two.

% The first matrix reflects the black rectangle over the y-axis
y-axis_reflection = [-1 0; 0 1];

% Multiply these matrices in the correct order to get the transformation matrix A. 

% Experimentally verify that you can plot the black
% rectangle yourself and then multiply the vectors that describe the opposite vertices by
% A and obtain and plot the red rectangle. Include the matrices you used to do this in
% your report.