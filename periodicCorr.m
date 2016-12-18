function [ Corr ] = periodicCorr( Seq )
%PERIODICCORR 
    S = Seq( getDevMat( size(Seq,2) ) ) ;
    
    Corr = S(1,:) * S';

end

