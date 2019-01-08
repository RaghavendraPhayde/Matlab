clear
n=input('Enter the value of n:');
disp(n);

x = zeros(1,n);
i = 1;
disp('Enter the value of X:');
 for j=i:n
    x(i) = input(' ');
    i    = i + 1;
 end
 
y = zeros(1,n);
i = 1;
disp('Enter the value of Y:');
 for j=i:n
    y(i) = input(' ');
    i    = i + 1;
 end

% ∑x(i)
sumx = sum(x);

% ∑y(i)
sumy = sum(y);

% ∑(x(i)^2)
sumx2 = sum(power(x,2));

% ∑(x(i)^3)
sumx3 = sum(power(x,3));

% ∑(x(i)^4)
sumx4 = sum(power(x,4));

% ∑(x(i)*y(i))
sumxy  = sum(x .* y);

% ∑(x(i)^2 * y(i))
sumx2y = sum( power(x,2) .* y );

% Normal equations are
fprintf("∑y(i) = na + b ∑x(i) + c ∑x(i)^2\n");
fprintf("%d = %da + %db + %dc\n\n",sumy,n,sumx,sumx2);

fprintf("∑(x(i)*y(i)) = a ∑x(i) + b ∑x(i)^2 + c ∑x(i)^3\n");
fprintf("%d = %da + %db + %dc\n\n",sumxy,sumx,sumx2,sumx3);

fprintf("∑(x(i)^2 * y(i)) = a ∑x(i)^2 + b ∑x(i)^3 + c ∑x(i)^4\n");
fprintf("%d = %da + %db + %dc\n\n",sumx2y,sumx2,sumx3,sumx4);

% Value for the coefficient
syms a b c
eqn1 = n*a + sumx*b + sumx2*c == sumy;
eqn2 = sumx*a + sumx2*b + sumx3*c == sumxy;
eqn3 = sumx2*a + sumx3*b + sumx4*c == sumx2y;

sol = solve([eqn1, eqn2, eqn3], [a, b, c]);
aSol = sol.a;
bSol = sol.b;
cSol = sol.c;

fprintf("\n a=%d\n b=%d\n c=%d\n",aSol,bSol,cSol);

% Equation for best fit
fprintf("Equation of Parabola for best fit\n");
fprintf("y=%d+%dx+%dx^2\n\n",aSol,bSol,cSol);
