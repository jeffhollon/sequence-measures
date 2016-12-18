function [ metrics ] = getSeqMetrics( Seq )
%GETSEQMETRICS 
    Length = size(Seq,2);
    Energy = EnergyOfSeq(Seq);
    EnergyEff = EnergyEfficiency(Seq);
    
    S = Seq( getDevMat(size(Seq,2)));
    for i=1:size(Seq,2)
        temp(i) = GolayMeritFactor(S(i,:));
    end
    Loc = find( temp==max(temp));
    
    Seq1 = S(Loc(1),:);
    GMF = GolayMeritFactor(Seq1);
    SPAR = SpectralPeakToAvgRatio(Seq1);
    PMSR = PeakToMaxSidelobeRatio(Seq1);
    PASR = PeakToAverageSidelobeRatio(Seq1);
    PNSR = PeakToNeighborSidelobeRatio(Seq1);

    CorrEnergy = getPeriodicCorrelationEnergy(Seq1);
    
    metrics=[Length,Energy,EnergyEff,GMF,PMSR,PASR,PNSR,SPAR,CorrEnergy];
    
    aperiodicCorr(Seq1)
    
end

