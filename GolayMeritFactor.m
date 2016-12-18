function [ GMF ] = GolayMeritFactor( Seq )
%GOLAYMERITFACTOR 
    Z = aperiodicCorr(Seq);
    
    n = abs(Z(1));
    
    Z(1)=[];
    Den = sum( abs(Z).^2 );
%     Seqlength = size(Seq,2);
%     
% %     GMF = (Seqlength^2) / (2 * Den);  %true for binary case {-1,1}

     GMF = (n^2) / (2 * Den); 


end

