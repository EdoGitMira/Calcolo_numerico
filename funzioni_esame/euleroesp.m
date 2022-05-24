function [t,u,h,u_pert] = euleroesp(f,t0,T,y0,N,rho)
%EULEROESP Summary of this function goes here
%   Detailed explanation goes here

%INPUT:
    %f:     funzione(y')
    %t0:    istante di tempo iniziale
    %T:     istante di tempo finale
    %y0:    valore di y nell'istante 0
    %N:     numero di suddivisioni
    %rho:   perturbazione
    
%OUTPUT:
    %t:     vettore dei tempi della soluzione
    %u:     vettore delle soluzioni
    %h:     entità delle suddivisioni
    %u_pert vettore delle soluzioni con perturbazione

h = (T-t0)/N;
t = [t0];
tn = 0;
un = 0;
u = [y0];
iter = 1:N;
if nargout > 3
    u_pert = [y0 + rho];
end
for n = iter
    tn = t0 + n*h;
    t = [t tn];
    un = u(n) + h*f(t(n),u(n));
    u = [u un];
    if nargout > 2 & nargin > 5
        un = u_pert(n) + h*(f(t(n),u_pert(n)) + rho*sin(t(n)));
        u_pert = [u_pert un];
    end
end
end