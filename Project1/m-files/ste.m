function [E] = ste(x,N)
%Computes the short-time energy of a signal.
%Usage: E = ste(x,N).
%x is the input signal.
%N is the length of the hamming window.
%E is the short-time energy of x.
w = hamming(N);
w = w.^2;
x = x.^2;
E = conv(x,w);