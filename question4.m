%{
Intro to Machine Learning
Assignment 1
Question  4.2
Consider a two-class setting with equal class priors and a real-valued feature with Gaussian
class-conditioned pdfs N (0,1) and N (mu,(sigma)^2).
For the case m =1 and (sigma)^2 =2 generate plots that visualize the class-conditional pdfs p(x|L=
l) for l = 1, 2, as well as class posterior probabilities p(L = l|x) for l = 1, 2. Demonstrate the
decision boundary you found earlier in these visualizations.
In the code 
y= p(x|L=1)
z= p(x|L=2)
We plot for x in the range -10 to 10
%}

x=linspace(-10,10);
y=normpdf(x,0,1);
z=normpdf(x,1,2);
subplot(1,2,1);
plot(x,y);
hold on
plot(x,z);
title('Class-conditional pdfs p(x|L=l) for l = 1,2; VS X ');
ylabel('Class-conditional pdfs p(x|L=l) for l = 1,2','FontSize',14);
xlabel('X','FontSize',14);

%{
X = 1.2 appears to be the critical point.
let db represent the decision boundary
%}
db = get(gca,'YLim');
line([1.2 1.2],db,'color','k')
legend('p(x|L=1)','p(x|L=2)','Decision boundary');
hold off
%{
Class posterior probabilities p(L = l|x) for l = 1, 2. 
In the code 
y= p(x|L=1)
z= p(x|L=2)
p1= p(L = 1|x)
p2= p(L = 2|x)
p is total probability of x
We plot for x in the range -10 to 10
%}
pl1=0.5;
pl2=0.5;
p= 0.5.*y + 0.5.*z;
p1=(y.*pl1)./p;
p2=(z.*pl2)./p;
subplot(1,2,2)
plot(x,p1)
hold on
plot(x,p2)
title('Class posterior probabilities p(L = l|x) for l = 1, 2 VS X ');
ylabel('Class posterior probabilities p(L = l|x) for l = 1, 2','FontSize',14);
xlabel('X','FontSize',14);
legend('p(L = 1|x)','p(L = 2|x)')