function [Z] = ZCR(x,N)
%Computes the zero crossing rate of a signal.
%Usage: Z =ZCR(x,N).
%x is the input signal.
%N is the length of the hamming window.
%Z is the zero crossing rate of x.
y(1)=0;
for n=2:length(x)+1
    y(n) = x(n-1);
end
y = y';
x(length(x)+1) = 0;
x = abs(sign(x)-sign(y));
w = hamming(N);
Z = conv(x,w);