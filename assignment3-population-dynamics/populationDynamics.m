% File: populationDynamics.m
%
% Description: Basic model used to describe and predict population dynamics in Canada.
%
% Date Modified: November 2022
% Name: Steven Wong

% Initialize variables
filename = 'Population-Data.xlsx';
populationSheet = 'Age Distribution';
birthSheet = 'Birth Rate';
deathSheet = 'Mortality Rates';

% 1. Find age distribution, birth rate, and death rates for Canada
% Read in our Population Data from Excel in the file Population-Data.xlsx
populationVector = readmatrix(filename, 'Sheet', populationSheet, 'Range', 'B2:B101');
% Read in our Birth Data from Excel in the file Population-Data.xlsx
birthVector = readmatrix(filename, 'Sheet', birthSheet, 'Range', 'B2:B101');
% Read in our Death Data from Excel in the file Population-Data.xlsx
deathVector = readmatrix(filename, 'Sheet', deathSheet, 'Range', 'B2:B101');

% Question why is the last col all 0s
% 2. Formulate a discrete dynamical model as described in Boyd and Vandenberghe.
% Pre-Allocate a matrix of all 0s for optimization
A = zeros(100);
% Set the first row of our transition matrix to the b_ith component from birthVector
A(1, :) = birthVector;
% Iterate through the rest of the transition matrix, setting the diagonal value to 1- d_ith
for i = 2:100
    rowVal = i;
    colVal = i - 1;
    % Set the diagonal value of A to 1 - d_ith component from deathVector
    A(rowVal, colVal) = 1 - deathVector(colVal);
end

% 3. From your model, make plots of the age distribution in Canada for the
% years 2028, 2033, and 2038 (5, 10, and 15 years from now).
% Initialize population distribution variables
distribution2028 = populationVector;
distribution2033 = populationVector;
distribution2038 = populationVector;

% Use a for loop to calculate the population distribute after 5 years using our transition matrix
for i = 1:5
    distribution2028 = A * distribution2028;
end

% Use a for loop to calculate the population distribute after 10 years using our transition matrix
for i = 1:10
    distribution2033 = A * distribution2033;
end

% Use a for loop to calculate the population distribute after 10 years using our transition matrix
for i = 1:15
    distribution2038 = A * distribution2038;
end

% Plot the original population distribution
plot(populationVector, 'b');
hold on;
plot(distribution2028, 'r');
hold on;
plot(distribution2033, 'g');
hold on;
plot(distribution2038, 'y');
hold on;
title('Population Distribution in Canada');
xlabel('Age');
ylabel('Number of People');
legend('Original', '2028', '2033', '2038');

% 4. Now make a modification of your model (i.e., the transition matrix A) 
% incorporating immigration. Make a simple assumption of what the average 
% immigration rate is per year. Plot again the predicted population 
% distribution for Canada for the years 2028, 2033, and 2038 from this
% new model.

% 5. What other factors do you think would make this model more realistic 
% or more accurate?
