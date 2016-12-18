function [ P, N ] = getPN( Sequence )
%GETPN Returns the P and N sequences of a given input sequence

    P = zeros(size(Sequence));
    N = P;
    
    P(Sequence==1) = 1;
    N(Sequence==-1) = 1;
    
end

