function [pc,xc,y,err] = chebyshev(f,a,b,n,pert)
%INPUT
% f    => funzione
% a    => estremo a
% b    => estremo b
% n    => grado del polinomio 
% pert => perturbazione
% OUTPUT
% pc   =>coefficienti del polinomio
% xc   =>nodi di chebyshev
% y    =>valore assunti dalla funzione nei dodi di chebyshev
% err  =>errore del polinomio rispetto ala funzione

xc=(a+b)/2-(b-a)/2*cos(pi*(0:n)/n);%nodi di cheby
if nargin >= 5
    y=f(xc)+rand(1,length(xc))*pert; %valore della funzione nei nodi
else
    y=f(xc);
end
pc=polyfit(xc,y,n);
z=linspace(a,b,n*10);
err=norm(f(z)-polyval(pc,z),"inf");
end

