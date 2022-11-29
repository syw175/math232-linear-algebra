% File: machine-learning.m
%
% Description: Two modelling examples that use historical data on the behaviour of a specified group of 
%              people to make predictions on their future behaviour. In particular, we study student 
%              success in Math 232 based on their study habits (number of hours spent studying Math 232)
%              and their grades in previous mathematics courses.Student success in Math232 based on their 
%              study habits.
%
% Date Modified: December 2022
% Name: Steven Wong

% Small scale example of in-class exercise for proof of concept and code validation
% Expected result for x is (1/2, 17/10)
% xdata = [1; 2; 3; 4];
% ydata = [2; 4; 6; 7];
% k = ones(4, 1);
% testA = [k, xdata];
% testA_Transpose = transpose(testA);
% testA_Transpose_A = testA_Transpose * testA;
% testInv_A_Transpose_A = inv(testA_Transpose_A);
% x = testInv_A_Transpose_A*testA_Transpose*ydata;
% Actual Result: x = (0.5, 1.7)

% Initialize variables and read in our data file
filename = 'CA4data.xlsx';
q1A = figure;
q1B = figure;
q2 = figure;
hours232 = readmatrix(filename, 'Range', 'A2:A46');  % X1-axis data
grades152 = readmatrix(filename, 'Range', 'B2:B46'); 
grades232 = readmatrix(filename, 'Range', 'C2:C46');  % X2-axis data


% Start of Question 1A: 
% -----------------------------------------------------------------------------------------------
% Use only the studying hours to build a model from which we can make predictions about student ‘success’ in math 232.
% We look for a linear model of the form g = a+bh. That is, we look for the best fitting (least squares) line through the data points D1 in R2.
figure(q1A);
col = ones(45,1);
% Calculate our A matrix as well as its transpose
A = [col, hours232];
A_Transpose = transpose(A);
A_TransposeA = A_Transpose*A;
% Calculate the inverse of A_TransposeA
A_TransposeA_Inverse = inv(A_TransposeA);
xVector = A_TransposeA_Inverse*A_Transpose*grades232;

% Plot the data points and the line of best fit for our data in Question 1A
x = 0:0.2:12;
aValue = xVector(1);
bValue = xVector(2);
gg = aValue + bValue*x;
plot(hours232, grades232, 'k.');
hold on;
plot(x, gg);
hold on;
axis([0 15 20 100]);
hold on;
xlabel('Hour(s) per week studied'); 
ylabel('Grade');
title('Hours Studied Per Week vs. Grade in Math 232');
% -----------------------------------------------------------------------------------------------
% End of Question 1A


% Start of Question 1B:
% -----------------------------------------------------------------------------------------------
% Now find the best fit quadratic model to the data ; g = a + b1h + b2h2. That is, the least squares 
% quadratic that fits the data. Plot this quadratic along with the data points. From this quadratic
% find the predicted success rate. (Notice here that although we are fitting a nonlinear function to
% the data set, the least squares algorithm is still a linear problem!)
figure(q1B);
col2 = ones(45,1);
% Calculate our A2 matrix as well as its transpose
A2 = [col, hours232, hours232.^2];
A2_Tranpose = transpose(A2);
A2_TransposeA2 = A2_Tranpose*A2;
% Calculate the inverse of A2_TransposeA2
A2_TransposeA2_Inverse = inv(A2_TransposeA2);
A2xVector = A2_TransposeA2_Inverse*A2_Tranpose*grades232;

% Plot the resulting quadratic and the data points for Question 1B
x2 = 0:0.2:12;
aValue2 = A2xVector(1);
bValue2 = A2xVector(2);
cValue2 = A2xVector(3);
gg2 = aValue2 + bValue2*x2 + cValue2*x2.^2;
plot(hours232, grades232, 'k.');
hold on;
plot(x2, gg2);
hold on;
axis([0 15 20 100]);
hold on;
xlabel('Hour(s) per week studied');
ylabel('Grade');
title('Hours Studied Per Week vs. Grade in Math 232');
% -----------------------------------------------------------------------------------------------
% End of Question 1B


% Start of Question 2:
% ---------------------

% ---------------------
% End of Question 2

