function [ CorrE ] = getPeriodicCorrelationEnergy( S )

    %Returns the 'side lobe' sum of squares for the periodic correlation energy
    A = periodicCorr(S);
    CorrE = sum(A(2:end).^2);

end

