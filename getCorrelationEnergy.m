function [ CorrE ] = getCorrelationEnergy( S )

    A = periodicCorr(S);
    CorrE = sum(A.^2);

end

