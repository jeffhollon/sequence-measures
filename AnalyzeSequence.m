% function [ cambg1,taude1,nufre1,metrics ] = AnalyzeSequence( x1, NAME )
function [ metrics ] = AnalyzeSequence( x1 , NAME )    
    %Get metrics
    metrics=getSeqMetrics(x1);
    
    PerCorr=periodicCorr(x1);
    AperCorr=aperiodicCorr(x1);
    
    [P N]=getPN(x1);
    
    fileID = fopen([['Data-',NAME],'.txt'],'wt');
        fprintf(fileID,NAME);
        fprintf(fileID,'\n\n');
        fprintf(fileID,'SEQUENCE');
        fprintf(fileID,'\n');
        fprintf(fileID,num2str(x1));
        fprintf(fileID,'\n\n');
        fprintf(fileID,'LENGTH, ENERGY, ENERGYEFF,  GMF,    PMSR,   PASR,   PNSR,   SPAR');
        fprintf(fileID,'\n');
        fprintf(fileID,num2str(metrics));
        fprintf(fileID,'\n\n');
        fprintf(fileID,'PERIODIC CORRELATION');
        fprintf(fileID,'\n');
        fprintf(fileID,num2str(PerCorr));
        fprintf(fileID,'\n');
        fprintf(fileID,['Values:  ',num2str(unique(PerCorr))]);
        fprintf(fileID,'\n\n');
        fprintf(fileID,'APERIODIC CORRELATION');
        fprintf(fileID,'\n');
        fprintf(fileID,num2str(AperCorr));
        fprintf(fileID,'\n');
        fprintf(fileID,['Values:  ',num2str(unique(AperCorr))]);
        fprintf(fileID,'\n\n');
        fprintf(fileID,'+1 SEQUENCE AND PERIODIC CORR');
        fprintf(fileID,'\n');
        fprintf(fileID,num2str(P));
        fprintf(fileID,'\n');
        fprintf(fileID,num2str(periodicCorr(P)));
        fprintf(fileID,'\n');
        fprintf(fileID,['Values:  ',num2str(unique(periodicCorr(P)))]);
        fprintf(fileID,'\n\n');
        fprintf(fileID,'-1 SEQUENCE & PERIODIC CORR');
        fprintf(fileID,'\n');
        fprintf(fileID,num2str(N));
        fprintf(fileID,'\n');
        fprintf(fileID,num2str(periodicCorr(N)));
        fprintf(fileID,'\n');
        fprintf(fileID,['Values:  ',num2str(unique(periodicCorr(N)))]);
    fclose(fileID);
    
end

