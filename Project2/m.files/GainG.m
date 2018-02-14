function [G]= GainG(error)
%Compute the gain of the lpc model.
%input:
%error = PredictionError
%Output:
%G = gain
%Usage:
%gain = GainG(PrEr);
G = 0;
error = error.^2;
for m = 1:length(error)
    G = G+error(m);
end
G = sqrt(G);