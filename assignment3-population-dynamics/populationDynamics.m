% File: populationDynamics.m
%
% Description: Basic model used to describe and predict population dynamics in Canada.
%
% Date Modified: November, 2022
% Name: Steven Wong


% Let xt, (xt)i = number of people in Canada with age i - 1 in year t (say, on Jan 1 of that year), i = 1..,100, where t = 0 denotes the year 2000.
% The birth rate is given by a vector b, (b)i, i = 1, . . . , 100. The death rate is given by a vector d(d)i,i = 1,...,100.
% 1. Find age distribution, birth rate, and death rates for Canada (like Figures 9.1 - 9.3 in the book)


% 2. Formulate a discrete dynamical model as described in those pages from the book by Boyd and Vandenberghe. 
% In particular, make sure you specify your transition matrix in the cases below.

% 3. From your model, make plots of the age distribution in Canada for the years 2028, 2033, and 2038 (5, 10, and 15 years from now), similar to Figure 9.4 (3 plots on one graph, different colours each).

% 4. Now make a modification of your model (i.e., the transition matrix A) incorporating immigration. 
% Make a simple assumption of what the average immigration rate is per year
% Plot again the predicted population distribution for Canada for the years 2028, 2033, and 2038 from this new model.

% 5. What other factors do you think would make this model more realistic or more accurate?