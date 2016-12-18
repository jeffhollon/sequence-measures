function [ Corr ] = periodicCorr( Seq )
%PERIODICCORR Summary of this function goes here
%   Detailed explanation goes here
    S = Seq( getDevMat( size(Seq,2) ) ) ;
    
    Corr = S(1,:) * S';

end

