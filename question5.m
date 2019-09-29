%{
Intro to Machine Learning
Assignment 1
Question 5.3
Write code that takes in N, n, mu, and covariance matric and produces N samples of independent and identically
distributed (iid) n-dimensional random vectors [x1,x2,....,xN] drawn from N (mu,Covariance) using the linear
transformation technique applied to samples of z N(0, I).
Covariance must be square, symmetric, and positive semi-definite.
x=Az+b
From part 1 of this question we got x is distributed as N(b,AA')
Here a is the covariance matrix
%}
N = input('Enter number of samples N')
n = input('Enter number of dimensions n')

for i=1:N 
    for j=1:N 
        a(i,j)=input('elements of covariance matric') 
    end
end
a=reshape(a,[N,N])
for i=1:N 
    mu(i,1)=input('elements of mean vector ') 
end
mu=reshape(mu,[N,1]);
b=mu;
[A,num] = cholcov(a);
if (num >=0)
    print('Sigma is not a full rank matrix');
else
    z = randn(N,1);
    y=A*z;
    x=y+b;
end
