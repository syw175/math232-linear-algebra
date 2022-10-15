% 1. Part 1 - Solutions of systems of linear equations
    % By considering random matrices of appropriate sizes, find "emperical evidence" that
    % substantiate the following statements. (In this part, m and n are both integers and both are greater than 6, so 7 or larger).
    % Give examples of exceptions for each case (but for this part, you can use integers m and n that need only be larger than 2, so 3 or larger).

    % (a) A system of n linear equations in n unknowns typically has a unique solution.
    % (b) A system of m linear equations in n unknowns, where m > n, typically has no solution.
    % (c) A system of m linear equations in n unknowns, where m < n, typically has many solutions.
    
% (a) Case 1: n*n typically has a unique solution. Generate 100 random matrices
            % with integers of size n x n where n is between 8 and 20. 
    sprintf("Part 1A: Checking for consistency in a n*n matrix by comparing the " + ...
        "rank of the coefficient matrix to the rank of the augmented matrix, " + ...
        "if they are equal, a unique solution exists. Alternatively, check" + ...
        " if the RREF is equal to an n sized identity matrix.")

    count = 0;
    for i = 1:100
        % Make a selection of n, where 8 <= n <= 20
        n = randi([8, 20]);
        % Generate a matrix of size n * n with real numbers
        A = rand(n);
        % Generate a vector of size n * 1 to form our augmented matrix
        b = rand(n, 1);
        % Generate our augmented matrix by concatenating matrix A and vector b
        Ab = cat(2, A, b);

        % Verification for testing purposes only.......
        Ab_rref = rref(Ab);

        % If rank(Coeffient matrix == augmented matrix), increment count
        if rank(A) == rank(Ab)
            count = count + 1;
        end
    end
    sprintf('Out of 100 randomly generated systems of linear equations of size m=n, %d had a unique solution', count)

    % Print out MY generated exception to the rule
    sprintf('My exception of a m=n system without a unique solution')
    A = [1 2 3; 1 2 3; 1 2 3];
    b = [1; 2; 2];
    Ab = cat(2, A, b)
    rref(Ab)
    sprintf('End part 1A')

% (b) Case 2: m > n typically has no solution
    % Generate 100 random matrices with integers of size m x n where m is between 8 and 20 and n is between 8 and 20
    sprintf(['Part 1B: Checking for inconsistency in a m > n matrix by evaluating' ...
        'the rank of the coefficient matrix and the augmented matrix. If rank(coefficient) ' ...
        'is less than rank(augmented), then the system is inconsistent'])

    count2 = 0;
    for i = 1:100
        % Make a selection for m, where 15 <= m <= 20
        m = randi([15, 20]);
        % Make a selection for n, where m > n and greater than 7 (aka 7-15)
        n = randi([7, m-1]);

        % Generate a matrix of size mxn with real numbers
        B = rand(m, n);
        % Generate a vector of size m * 1 to form our augmented matrix
        c = rand(m, 1);
        % Generate our augmented matrix by concatenating matrix B and
        % vector b
        Bc = cat(2, B, c);

         % Verification for testing purposes only...
        Bc_rref = rref(Bc);

        % If rank(coefficient) < rank(augmented), increment count2
        if rank(B) < rank(Bc)
            count2 = count2 + 1;
        end
    end
    sprintf('Out of 100 randomly generated systems of linear equations of size m > n, %d did not have a solution', count2)

    % This is an example of a system of linear equations that does not follow the rule that m > n typically has no solution
    sprintf('My exception of a m > n with many solutions')
    B2 = [1 2 3; 2 4 6; 3 3 4; 10 10 12];
    c2 = [1; 2; 3; 4];
    Bc2 = cat(2, B2, c2)
    Bc_rref2 = rref(Bc2)
    sprintf('End part 1B')

% (c) Case 3: m < n typically has many solutions
    sprintf(['Part 1C: A matrix of m < n typically has many solutions. We will' ...
        'be first checking for consistency. If the system is consistent... ' ...
        'we will check that there exists a column of 0s. In other words, that' ...
        'we have a free variable. We do this by checking the condition:' ...
        'If n - rank > 0... then there are many solutions. '])

    count3 = 0;
    for i = 1:100
        % Generate an integer for n from [12 to 20]
        n = randi([12, 20]);
        % Generate an integer from [7 to n-1]
        m = randi([7, n-1]);

        % Generate a matrix of size m * n with real numbers
        C = rand(m, n);

        % Generate a vector of size m * 1 to form our augmented matrix
        D = rand(m, 1);

        % Concentrate matrix C and vector D to create an augmented matrix
        CD = cat(2, C, D);

        % If the rank of the coefficient matrix is LESS than the rank of
        % the augmented matrix, there are no solutions
        if rank(C) < rank(CD)
            break
        end

        % For my checks only...
        Cd_rref = rref(CD);

        % If # of variables (columns) - rank is > 0, many solutions exist
        % Increment count3
        if n - rank(Cd_rref) > 0
            count3 = count3 + 1;
        end
    end
    sprintf('Out of 100 randomly generated systems of linear equations of size m < n, %d had many solutions', count3)

    sprintf('Example of a system of linear equations (augmented matrix) that size m < n that is inconsistent and does not have many solutions')
    m3 = 3;
    n3 = 4;
    C3 = [1 2 3 4; 5 6 7 8; 9 10 11 12];
    D3 = [1; 2; 4];
    CD3 = cat(2, C3, D3)
    Cd_rref3 = rref(CD3)
    sprintf('End Part 1C')