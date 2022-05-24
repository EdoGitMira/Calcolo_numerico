function [p,x,y,err] = calcPoly(func,a,b,N,pert)
%INPUT:
%func     =>  funzione da approssimare
%interval =>  intervallo su cui fare l'interpolazione
%N        =>  grado del polinomio desiderato
% OUTPUT
% pc   =>coefficienti del polinomio
% xc   =>nodi di chebyshev
% y    =>valore assunti dalla funzione nei dodi di chebyshev
% err  =>errore del polinomio rispetto ala funzione


z=linspace(a,b,N+1);
if nargin >= 5
    y=func(z)+rand(1,length(z))*pert;
else
    y=func(z);
end
p=polyfit(z,y,N);
x=z;
z=linspace(a,b,N*10);
err=norm(func(z)-polyval(p,z),inf);
end