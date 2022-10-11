% 1. Part 1 - Solutions of systems of linear equations
    % By considering random matrices of appropriate sizes, find "emperical evidence" that
    % substantiate the following statements. (In this part, m and n are both integers and both
    % are greater than 6, so 7 or larger).
    % Give examples of exceptions for each case (but for this part, you can use integers m and n that need only be larger than 2, so 3 or larger).

    % (a) A system of n linear equations in n unknowns typically has a unique solution.
    % (b) A system of m linear equations in n unknowns, where m > n, typically has no solution.
    % (c) A system of m linear equations in n unknowns, where m < n, typically has many solutions.
    
% (a) NEED TRANSPOSED TO LATEX  -------------------------------------------------------------
    % Case 1: m = n typically has a unique solution
    % Generate 100 random matrices with integers of size n x n where n is between 8 and 20
    % Check if a unique solution exists for each system of linear equations Ab
    % If the last column of Ab_rref is not all zeros, then there is a unique solution
    % If the last column of Ab_rref is all zeros, then there is no unique solution
    count = 0;
    for i = 1:100
        n = randi([8, 20]);
        A = randi(50, n, n);
        b = randi(50, n, 1);
        Ab = cat(2, A, b);
        Ab_rref = rref(Ab);

        % If the last column of Ab_rref is not all zeros, then there is a unique solution
        if Ab_rref(:, n+1) ~= zeros(n, 1)
            count = count + 1;
        end
    end
    sprintf('Out of 100 randomly generated systems of linear equations of size m=n, %d had a unique solution', count)

    sprintf('Example of a system of linear equations (augmented matrix) that does not have a unique solution when m = n')
    n2 = 3;
    A2 = [1 2 3; 4 5 6; 7 8 9];
    b2 = [1; 2; 3];
    Ab2 = cat(2, A2, b2)
    Ab_rref2 = rref(Ab2)

    sprintf('The last column of the RREF of the system of linear equations is all zeros, so a unique solution does not exist')

% (b) NEED TRANSPOSED TO LATEX  -------------------------------------------------------------
    % Case 2: m > n typically has no solution
    % Generate 100 random matrices with integers of size m x n where m is between 8 and 20 and n is between 8 and 20
    % Check if a unique solution exists for each system of linear equations Bc
    % If the last column of Bc_rref is not all zeros, then there is a unique solution
    % If the last column of Bc_rref is all zeros, then there is no unique solution

    count2 = 0;
    for i = 1:100
        m = randi([8, 20]);
        n = randi([8, 20]);
        B = randi(50, m, n);
        c = randi(50, m, 1);
        Bc = cat(2, B, c);
        Bc_rref = rref(Bc);

        % If the last column of Bc_rref is all zeros, then there is no unique solution
        if Bc_rref(:, n+1) == zeros(m, 1)
            count2 = count2 + 1;
        end
    end
    sprintf('Out of 100 randomly generated systems of linear equations of size m > n, %d did not have a unique solution', count2)

    sprintf('Example of a system of linear equations (augmented matrix) does not follow the rule that m > n typically has no solution')
    m2 = 4;
    n2 = 3;
    B2 = [1 2 3; 4 5 6; 7 8 9; 10 11 12];
    c2 = [1; 2; 3; 4];
    Bc2 = cat(2, B2, c2)
    Bc_rref2 = rref(Bc2)

    % This is an example of a system of linear equations that does not follow the rule that m > n typically has no solution
    sprintf('The last column of the RREF of the system of linear equations is not all zeros, so a unique solution DOES exist')

% (c) ------------------------------------------------------------
    % Case 3: m < n typically has many solutions
    % Generate 100 random matrices with integers of size m x n where m is between 8 and 20 and n is between 8 and 20
    % Check if a unique solution exists for each system of linear equations Cd
    % If the last column of Cd_rref is not all zeros, then there is a unique solution
    % If the last column of Cd_rref is all zeros, then there is no unique solution

    count3 = 0;
    for i = 1:100
        m = randi([8, 20]);
        n = randi([8, 20]);
        C = randi(50, m, n);
        d = randi(50, m, 1);
        Cd = cat(2, C, d);
        Cd_rref = rref(Cd);

        % if the last column of Cd_rref is all zeros, then there are many solutions
        if Cd_rref(:, n+1) == zeros(m, 1)
            count3 = count3 + 1;
        end
    end
    sprintf('Out of 100 randomly generated systems of linear equations of size m < n, %d had many solutions', count3)

    sprintf('Example of a system of linear equations (augmented matrix) that does not follow the rule that m < n typically has many solutions')
    m2 = 3;
    n2 = 4;
    C2 = [1 2 3 4; 5 6 7 8; 9 10 11 12];
    d2 = [1; 2; 3];
    Cd2 = cat(2, C2, d2)
    Cd_rref2 = rref(Cd2)

    % This is an example of a system of linear equations that does not follow the rule that m < n typically has many solutions
    sprintf('The last column of the RREF of the system of linear equations is ALL zeros, so there are many solutions')