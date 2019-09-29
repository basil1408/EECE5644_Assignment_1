%{
Intro to Machine Learning
Assignment 1
Question 2 
Plot of log-likelihood-ratio function for the case a1 = 0;b1 = 1 and a2 =
1;b2 = 2 and x in the range of -100 to 100
%}
x = linspace(-100,100);
a1=0;
b1=1;
a2=1;
b2=2;
l= log(2)-abs(x)+abs(x-1)./2;
plot(x,l);
title('Plot of log-likelihood ratio at x from -100 to 100');
xlabel('x','FontSize',18);
ylabel('l(x)','FontSize',18);