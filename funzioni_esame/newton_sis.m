
function [zero, fz, iter] = newton_sis(f,df,x0,toll,Nmax)
%df = JACOBINAO
%NewtonSis: metodo newton per calcolare lo zero di un sistema di equazioni:
%   Utilizzo: [zero, fz, iter] = newton_sis(f,df,x0,toll,Nmax)
y = f(x0);
iter = 0;
if norm(y) == 0
    zero = x0;
    fz = 0;
    return
end
d_y = df(x0);
delta = -d_y\y;

while (norm(delta)>toll*norm(x0) && iter <= Nmax)
    x0 = x0 + delta;
    y = f(x0);
    d_y = df(x0);
    delta = -d_y\y;
    iter = iter +1;
end
zero = x0;
fz = y;
return
end

%serve a trovare gli zeri nel caso di sistemi di funzioni
