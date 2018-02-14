function [U] = GeneratorM(pm,fs)
%It creates a matrix from which we can
%determine if the windowed signal
%is voiced or unvoiced.
%Input:
%pm = the PitchMatrix
%fs = SamplingFrequensy
%Output:
%U = StimulatedMatrix
%Usage:
%u = GeneratorM(PitchM,Fs);
U = zeros(480,570);
nodeM = (1:480)';
for i = 1:570
    if pm(i) == 0
        U(:,i) = rand(480,1);
        U(:,i) = U(:,i)-0.5;
    else
        U(:,i) = mod(nodeM,round(fs/pm(i))) == 0;
    end
end