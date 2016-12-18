function [ PNSR ] = PeakToNeighborSidelobeRatio( Seq )
%PEAKTONEIGHBORSIDELOBERATIO
    Corr = aperiodicCorr(Seq);
    PNSR = Corr(1)^2 / Corr(2)^2;

end

