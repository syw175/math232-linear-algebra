% Composition
% Verify the result of Problem A6 in Section 3.3 of the text; that the two compositions of a
% vertical shear and a stretch in the y direction, do not commute. Do this by plotting the
% image of the unit square with corners at (1, 1),(2, 1),(2, 2),(1, 2). Then plot the results
% of applying the COMPOSITION of the two operations (vertical shear and stretch) in
% both orders and showing that the resulting shape depends on the order in which the
% operations are applied. Corroborate your ’experimental proof’ of the non-commutability
% of these transformations by referring to Theorem 3.2.5 of the text (i.e., by considering
% the associated matrices).

% Plot the image of the unit square with corners at (1, 1),(2, 1),(2, 2),(1, 2)
unit_v1 = [1;1];
unit_v2 = [2;2];
unit_matrix = cat(2, unit_v1, unit_v2);
unit_v = [unit_matrix(1,1), unit_matrix(1,2), unit_matrix(1,2), unit_matrix(1,1), unit_matrix(1,1)];
unit_z = [unit_matrix(2,1), unit_matrix(2,1), unit_matrix(2,2), unit_matrix(2,2), unit_matrix(2,1)];
plot(unit_v, unit_z, 'k-', 'LineWidth', 1);
hold on;
axis([0 5 0 45]);

% Plotting where the red, green, and blue points are
P = [1 2 2 1;1 1 2 2];
plot(P(1,1),P(2,1),'r*');
plot(P(1,2),P(2,2),'g*');
plot(P(1,4),P(2,4),'b*');
plot(P(1,3),P(2,3),'k*');

% Composition of two operations in Problem A6 from Section 3.3 of the text 
% Let V be a vertical shear by amount 3
% Let S be a stretch by a factor 5 in the x2 direction.
V = [1 0; 3 1]
S = [1 0; 0 5]

% Calculate the composition of S followed by V and then plot the result
VS_Operation = V*S;
VS_Operation_Result_Matrix = VS_Operation*unit_matrix;
VS_v = [VS_Operation_Result_Matrix(1,1), VS_Operation_Result_Matrix(1,2), VS_Operation_Result_Matrix(1,2), VS_Operation_Result_Matrix(1,1), VS_Operation_Result_Matrix(1,1)];
VS_z = [VS_Operation_Result_Matrix(2,1), VS_Operation_Result_Matrix(2,1), VS_Operation_Result_Matrix(2,2), VS_Operation_Result_Matrix(2,2), VS_Operation_Result_Matrix(2,1)];
plot(VS_v, VS_z, 'r-', 'LineWidth', 1);
hold on;

% Calculate the composition of S following V and then plot the result
SV_Operation = S*V;
SV_Operation_Result_Matrix = SV_Operation*unit_matrix;
SV_v = [SV_Operation_Result_Matrix(1,1), SV_Operation_Result_Matrix(1,2), SV_Operation_Result_Matrix(1,2), SV_Operation_Result_Matrix(1,1), SV_Operation_Result_Matrix(1,1)];
SV_z = [SV_Operation_Result_Matrix(2,1), SV_Operation_Result_Matrix(2,1), SV_Operation_Result_Matrix(2,2), SV_Operation_Result_Matrix(2,2), SV_Operation_Result_Matrix(2,1)];
plot(SV_v, SV_z, 'b-', 'LineWidth', 1);
hold on;
fprintf("Clearly the two compositions of a vertical shear and a stretch in the x2 direction, do not commute.")