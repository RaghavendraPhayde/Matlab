syms a b c
eqn1 = 6*a + 15*b + 55*c == 76;
eqn2 = 15*a + 55*b + 225*c == 295;
eqn3 = 55*a + 225*b + 979*c == 1259;

sol = solve([eqn1, eqn2, eqn3], [a, b, c]);
aSol = sol.a;
bSol = sol.b;
cSol = sol.c;

fprintf("\n a=%d\n b=%d\n c=%d\n",aSol,bSol,cSol);
