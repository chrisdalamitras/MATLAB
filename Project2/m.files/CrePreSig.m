function [Psignal] = CrePreSig(U,y)
%It creates a matrix(using lpc) who's
%columns contain the predicted signal
%for every window.
%Input:
%U = StimuladedMatrix
%y = WindowedSignalMatrix
%Output:
%Psignal = PredictedSignalMatrix
%Usage:
%pSignal = CrePreSig(u,Y);
Psignal = zeros(480,570);
for i = 1:570
    y1 = y(:,i).*hamming(480); 
    a = lpc(y1,20);
    est_y = filter([0 -a(2:end)],1,y1);
    error = y1-est_y;
    G = sqrt(sum(error.^2));
    Psignal(:,i) = filter(G,[1 a(2:end)],U(:,i));
end    