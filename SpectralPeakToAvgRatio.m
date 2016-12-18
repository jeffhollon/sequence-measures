function [ SPAR ] = SpectralPeakToAvgRatio( Seq )
%SPECTRALPEAKTOAVGRATIO 
    n = size(Seq,2);
    Seq = [zeros(1,n), Seq, zeros(1,n)];
    
    
    SeqF = abs(fft(Seq)).^2;
%     plot(SeqF)
    
    SeqF2 = SeqF; %SeqF(1,n+1:2*n+1);
    
    M = max(SeqF2);
    
    SeqF2( SeqF2>=M ) = [];
    
    SPAR = M / mean(SeqF2);

end

