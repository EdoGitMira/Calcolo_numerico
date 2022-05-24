%% Punto 1
close all
clear
load census
plot(cdate,pop,'o')
%% Punto 2
[pop2,gof2]=fit(cdate,pop,'poly2');
figure
subplot(2,1,1)
plot(pop2,cdate,pop)
% hold on
% plot(poli2,'r')
% legend('dati','poli2')
title('fit con polinomio grado 2')
subplot(2,1,2)
plot(cdate,pop-pop2(cdate),'*-')
%% Punto 5
pop2=fit(cdate,pop,'poly2');
pop3=fit(cdate,pop,'poly3');
pop4=fit(cdate,pop,'poly4');
pop5=fit(cdate,pop,'poly5');
pop6=fit(cdate,pop,'poly6');
figure
plot(cdate,pop,'o')
hold on
plot(pop2,'r')
plot(pop3,'b')
plot(pop4,'g')
plot(pop5,'m')
plot(pop6,'b--')
legend('dati','pop2','pop3','pop4','pop5','pop6','Location','NorthWest')
%% Punto 5 scalato
pop2=fit(cdate,pop,'poly2');
pop3=fit(cdate,pop,'poly3','Normalize','on');
pop4=fit(cdate,pop,'poly4','Normalize','on');
pop5=fit(cdate,pop,'poly5','Normalize','on');
pop6=fit(cdate,pop,'poly6','Normalize','on');
figure
plot(cdate,pop,'o')
hold on
plot(pop2,'r')
plot(pop3,'b')
plot(pop4,'g')
plot(pop5,'m')
plot(pop6,'b--')
legend('dati','pop2','pop3','pop4','pop5','pop6','Location','NorthWest')
%% Punto 6
popExp=fit(cdate,pop,'exp1')
plot(popExp,'r--')
legend('dati','poli2','poli3','poli4','poli5','poli6','exp1','Location','NorthWest')
%% Punto 7
figure
plot(cdate,pop,'o')
xlim([1750 2050])
hold on
plot(pop2,'r')
plot(pop3,'b')
plot(pop4,'g')
plot(pop5,'m')
plot(pop6,'b--')
plot(popExp,'r--')
legend('dati','poli2','poli3','poli4','poli5','poli6','exp1','Location','NorthWest')





