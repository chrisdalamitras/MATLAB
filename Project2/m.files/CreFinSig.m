function [finalsig] = CreFinSig(Psignal)
%It creates the final speech signal
%using the predicted version(lpc) of
%the initial windowed signals and the
%OverlapAdd method.
%Input:
%Psignal = PredictedSignalMatrix
%Output:
%finalsig = FinalSpeechSignal
%Usage:
%FinalSig = CreFinSig(pSignal);
finalsig = zeros(1,91520);
for i = 1:570
    OvAdd = 160*(i-1);
    for j = 1:480
        finalsig(OvAdd+j) = finalsig(OvAdd+j)+Psignal(j,i);
    end
end