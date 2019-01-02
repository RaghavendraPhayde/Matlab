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
sumx = sum(x);                      %% ∑x     sum of xi
fprintf("∑x = %d\n",sumx);
meanx = sumx/n;                     %% (∑x)/n mean of x
fprintf("Mean of x = %d\n\n",meanx);
%----------------------------------------------------------

y = zeros(1,n);
i = 1;
disp('Enter the value of Y:');
 for j=i:n
    y(i) = input(' ');
    i    = i + 1;
 end
sumy = sum(y);                      %% ∑y     sum of yi
fprintf("∑y = %d\n",sumy);
meany = sumy/n;                     %% (∑y)/n mean of y
fprintf("Mean of y = %d\n\n",meany);
%----------------------------------------------------------

xi = zeros(1,n);
yi = zeros(1,n);
i=1;
for j=i:n 
    xi(j) = x(j) - meanx;
    yi(j) = y(j) - meany;
end
fprintf("xi")
disp(xi);
fprintf('\nyi');
disp(yi);
%----------------------------------------------------------

i=1;
sumxy=0;
for j=i:n
    sumxy = sumxy + xi(j) * yi(j);
end    
fprintf("XY = %d\n",sumxy);
%----------------------------------------------------------

i=1;
sumx2=0;
sumy2=0;
for j=i:n
    sumx2 = sumx2 + xi(j)^2;
    sumy2 = sumy2 + yi(j)^2;
end
fprintf("∑x^2 = %d\n",sumx2);
fprintf("∑y^2 = %d\n\n",sumy2);
%----------------------------------------------------------

r = sumxy/( (sqrt(sumx2))*(sqrt(sumy2)));
fprintf("Coefficient of correlation r = %f\n",r);
%----------------------------------------------------------

sigmax = sqrt(sumx2/n);
sigmay = sqrt(sumy2/n);

m = r * (sigmay/sigmax);
c = meany - m * meanx;

fprintf("Regression line for y is y = %f x + %f \n",m,c);
%----------------------------------------------------------

m = r * (sigmax/sigmay);
c = meanx - m * meany;

fprintf("Regression line for x is x = %f y + %f \n",m,c);
%-----------------------------------------------------------