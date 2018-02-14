function [y] = sc(N,L,v2)
%It creates the signal y[n]=w[n]*(x1[n]+x2[n])
%where as:w[n] is the hamming window
%  <<>>  :x1[n]=exp(j*(pi/10*n+f1))
%  <<>>  :x2[n]=-0.9*exp(j*(v2*n+f2))
%f1,f2 are random initial phases
%Usage: y = sc(N,L,v2)
%y is the creation signal
%N is the length of the hamming window
%L is the length of the x1,x2 signals
%v2 is the frequency of x2 signal
f = 2*pi*rand(2,1);
n = linspace(0,L-1,L);
n = n';
x1 = exp(j*(pi/10*n + f(1)));
x2 = -0.9*exp(j*(v2*n + f(2)));
w = hamming(N);
y = w.*(x1+x2);