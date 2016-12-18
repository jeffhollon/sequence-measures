function [ PMSR ] = PeakToMaxSidelobeRatio( Seq )
%PEAKTOMAXSIDELOBERATIO Summary of this function goes here
%   Detailed explanation goes here
    Corr = aperiodicCorr(Seq);
    Peak = Corr(1);
    Corr(1)=[];
    PMSR = Peak^2 / max( abs(Corr) )^2;

end

