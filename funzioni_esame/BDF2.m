function [t,u]=BDF2(f,t0,T,y0,N)
% BDF a 2 passi
h=(T-t0)/N;
[t,u]=cranknic(f,t0,t0+h,y0,1);
ff(1:2)=f(t,u);
a=[-4/3 1/3];
for n=2:N
  t(n+1)=t(n)+h;
  tn1=t(n+1);
  cost=sum(a.*u(n-(0:1)));
  g=@(y) y+cost-2*h*f(tn1,y)/3;
  xn=fzero(g,u(n));
  u(n+1)=xn;
  ff(n+1)=f(t(n+1),u(n+1));
end


