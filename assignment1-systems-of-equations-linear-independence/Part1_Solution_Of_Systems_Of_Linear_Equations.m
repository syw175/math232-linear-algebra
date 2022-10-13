% 1. Part 1 - Solutions of systems of linear equations
    % By considering random matrices of appropriate sizes, find "emperical evidence" that
    % substantiate the following statements. (In this part, m and n are both integers and both are greater than 6, so 7 or larger).
    % Give examples of exceptions for each case (but for this part, you can use integers m and n that need only be larger than 2, so 3 or larger).

    % (a) A system of n linear equations in n unknowns typically has a unique solution.
    % (b) A system of m linear equations in n unknowns, where m > n, typically has no solution.
    % (c) A system of m linear equations in n unknowns, where m < n, typically has many solutions.
    
% (a) NEED TRANSPOSED TO LATEX  -------------------------------------------------------------
    % Case 1: m = n typically has a unique solution
    % Generate 100 random matrices with integers of size n x n where n is between 8 and 20
    % Check if a unique solution exists for each system of linear equations Ab
    
    sprintf('NOW STARTING PART A HERE ------------------------------------')
    % Use rank to determine consistency in this case: Theorem 1.1 states
    % that a linear system is consistent IFF the rank of the coefficient
    % matrix is equal to the rank of the augmented matrix
    count = 0;
    for i = 1:100
        % Make a selection of n, where 8 <= n <= 20
        n = randi([8, 20]);
        % Generate a matrix of size nxn with real numbers
        A = rand(n);
        % Generate a vector of size n*1 with real numbers to represent the right most column
        b = rand(n, 1);
        % Generate our augmented matrix by concatenating matrix A and vector b
        Ab = cat(2, A, b);

        % Verification for testing purposes only... remove after
        Ab_rref = rref(Ab);

        % If rank(Coeffient matrix == augmented matrix), we have a unique
        % solution because the system is consistent and there are no free variables
        if rank(A) == rank(Ab)
            count = count + 1;
        end
    end

    % Output the final count of how many randomly generated equations have unique solutions
    sprintf('Out of 100 randomly generated systems of linear equations of size m=n, %d had a unique solution', count)

    % Print out MY generated exception to the rule
    sprintf('Example of a system of linear equations (augmented matrix) that does not have a unique solution when m = n')
    A = [1 2 3; 1 2 3; 1 2 3];
    b = [1; 2; 3];
    Ab = cat(2, A, b);
    rref(Ab)

    % If the rank of the coefficient matrix is LESS than the rank of the augmented matrix, there are no solutions
    if (rank(A) < rank(Ab))
        sprintf('Exception: This m=n system is inconsistent and therefore has no solution')
    end

% (b) NEED TRANSPOSED TO LATEX  -------------------------------------------------------------
    % Case 2: m > n typically has no solution
    % Generate 100 random matrices with integers of size m x n where m is between 8 and 20 and n is between 8 and 20
    % Check if a unique solution exists for each system of linear equations Bc
    sprintf('NOW STARTING PART B HERE ---------------------------------')
    % Use rank to determine that the system of equations is NOT
    % consistent. A system of equations is INCOSISTENT or has no solutions
    % when the rank of the coefficient matrix is LESS THAN the rank of the
    % augmented matrix
    count2 = 0;
    for i = 1:100
        % Make a selection for m, where 8 <= m <= 20
        m = randi([15, 20]);
        % Make a selection for n, where m > n and greater than 7 (aka 7-15)
        n = randi([7, m-1]);

        % Generate a matrix of size mxn with real numbers
        % Check documentation here to see which parameter matches to m or n
        B = rand(m, n);
        % Generate a vector of size n with real numbers to represent the
        % right most column
        c = rand(m, 1);
        % Generate our augmented matrix by concatenating matrix B and
        % vector b
        Bc = cat(2, B, c);

         % Verification for testing purposes only... remove after
        Bc_rref = rref(Bc);

        % If the rank of the coefficient matrix is LESS than the rank of
        % the augmented matrix, there are no solutions
        if rank(B) < rank(Bc)
            count2 = count2 + 1;
        end
    end
    sprintf('Out of 100 randomly generated systems of linear equations of size m > n, %d did not have a unique solution', count2)

    % Check these examples again later
    sprintf('Example of a system of linear equations (augmented matrix) does not follow the rule that m > n typically has no solution')
    m2 = 4;
    n2 = 3;
    B2 = [1 2 3; 4 5 6; 7 8 9; 10 11 12];
    c2 = [1; 2; 3; 4];
    Bc2 = cat(2, B2, c2)
    Bc_rref2 = rref(Bc2)

    % This is an example of a system of linear equations that does not follow the rule that m > n typically has no solution
    sprintf('As seen in the RREF of Bc2, the system is consistent')

% (c) ------------------------------------------------------------
    % Case 3: m < n typically has many solutions
    sprintf('NOW STARTING PART C HERE ---------------------------------')
    count3 = 0;
    for i = 1:100
        % Generate an integer for n from [12 to 20]
        n = randi([12, 20]);
        % Generate an integer from [7 to n-1]
        m = randi([7, n-1]);

        % Generate a matrix of size mxn with real numbers
        C = rand(m, n);

        % Generate a vector of size m x 1 with real numbers
        D = rand(m, 1);

        % Concentrate matrix C and vector Cd to create an augmented matrix
        CD = cat(2, C, D);

        
        % If the rank of the coefficient matrix is LESS than the rank of
        % the augmented matrix, there are no solutions
        % BREAK
        if rank(C) < rank(CD)
            break
        end

        Cd_rref = rref(CD);
        % Since we know the system of equations is consistent, let's check if the solution has many solutions
        % If # of variables (columns) - rank is > 0, then there are
        % infinitely many solutions....
        if n - rank(Cd_rref) > 0
            count3 = count3 + 1
        end
    end
    sprintf('Out of 100 randomly generated systems of linear equations of size m < n, %d had many solutions', count3)

    sprintf('Example of a system of linear equations (augmented matrix) that does not follow the rule that m < n typically has many solutions')
    m2 = 3;
    n2 = 4;
    C2 = [1 2 3 4; 5 6 7 8; 9 10 11 12];
    d2 = [1; 2; 3];
    Cd2 = cat(2, C2, d2);
    Cd_rref2 = rref(Cd2);
    % This is an example of a system of linear equations that does not follow the rule that m < n typically has many solutions
    sprintf('The last column of the RREF of the system of linear equations is ALL zeros, so there are many solutions')