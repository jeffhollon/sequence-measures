function [ PASR ] = PeakToAverageSidelobeRatio( Seq )
%PEAKTOAVERAGESIDELOBERATIO Summary of this function goes here
%   Detailed explanation goes here
    Corr = aperiodicCorr(Seq);
    Peak = Corr(1);
    Corr(1)=[];
    PASR = Peak^2 / mean( Corr.^2 );

end

