x = [5 4 9 6];
y = [1 6 7 9];
% disp(x(1))    % 1 element in vector x

z = x .* y;     % Product of the variable of 2 vector whose insedxes are same 
                % z(1) = x(1) * y(1) 
                % ....
                % z(n) = x(n) * y(n)


sum(z)          % Sum of the variables in z
                % sum(z) = z(1) + z(2) + ... + z(n)
