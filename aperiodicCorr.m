function [ acorr ] = aperiodicCorr( Seq )
%APERIODICCORR 
    n = size(Seq,2);
    
    for k=0:n-1
        s=0;
        for j=0:n-1-k
            s = s + Seq(j+1) * conj(Seq(j + k + 1));
        end
         corr(k+1) = s;
    end

%     for i=1:n
%         corr(i) = dot( Seq(i:n) , Seq(1:n-i+1) );
%     end
    
    acorr=corr;
    
end

