function []=plottapendolo(t,u,A,omega)
l=10;
plot(0,0,'ro',[0 l*sin(u(1,1))],[0 l*cos(u(1,1))],...
l*sin(u(1,1)),l*cos(u(1,1)),'ob','linewidth',2)
axis([-20.1 20.1 -20.1 20.1])
axis square
pause(0.05)
for i=1:length(u)
C=A*sin(omega*t(i));
x=l*sin(u(i,1));
y=A*sin(omega*t(i))+l*cos(u(i,1));
plot(0,C,'ro',[0 x],[C y],x,y,'ob','linewidth',2)
axis([-20.1 20.1 -20.1 20.1])
axis square
pause(.01)
end 

