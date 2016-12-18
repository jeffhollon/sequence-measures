function [ PMSR ] = PeakToMaxSidelobeRatio( Seq )
%PEAKTOMAXSIDELOBERATIO 
    Corr = aperiodicCorr(Seq);
    Peak = Corr(1);
    Corr(1)=[];
    PMSR = Peak^2 / max( abs(Corr) )^2;

end

