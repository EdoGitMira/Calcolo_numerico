function [t,u]=cranknic(f,t0,T,y0,N)
% Il metodo di Crank-Nicolson
%   [T,U]=CRANKNIC(F,T0,T,Y0,N) risolve con 
%   il metodo di Eulero implicito il problema
%   di Cauchy y'(t)=F(t,y(t)) con y(t0)=y0,
%   utilizzando N sotto-intervalli equispaziati.
%
h=(T-t0)/N; 
u(1)=y0;
t(1)=t0;
for n=1:N
un=u(n);
t(n+1)=t(n)+h;
tn1=t(n+1);
fn=f(t(n),un);
cost=un+fn*h/2;
g=@(y) y-cost-h*f(tn1,y)/2;
xn=fzero(g,un);
u(n+1)=xn;
end

return
