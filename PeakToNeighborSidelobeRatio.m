function [ PNSR ] = PeakToNeighborSidelobeRatio( Seq )
%PEAKTONEIGHBORSIDELOBERATIO Summary of this function goes here
%   Detailed explanation goes here
    Corr = aperiodicCorr(Seq);
    PNSR = Corr(1)^2 / Corr(2)^2;

end

