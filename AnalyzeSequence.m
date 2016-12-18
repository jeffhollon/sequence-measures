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
        fprintf(fileID,['LENGTH = ',num2str(metrics(1))]);
        fprintf(fileID,'\n');
        fprintf(fileID,['ENERGY = ',num2str(metrics(2))]);
        fprintf(fileID,'\n');
        fprintf(fileID,['ENERGY EFFICIENCY = ',num2str(metrics(3))]);
        fprintf(fileID,'\n');
        fprintf(fileID,['GOLAY MERIT FACTOR = ',num2str(metrics(4))]);
        fprintf(fileID,'\n');
        fprintf(fileID,['PEAK TO MAX SIDELOBE RATIO = ',num2str(metrics(5))]);
        fprintf(fileID,'\n');
        fprintf(fileID,['PEAK TO AVERAGE SIDELOBE RATIO = ',num2str(metrics(6))]);
        fprintf(fileID,'\n');
        fprintf(fileID,['PEAK TO NEIGHBOR SIDELOBE RATIO = ',num2str(metrics(7))]);
        fprintf(fileID,'\n');
        fprintf(fileID,['SPECTRAL PEAK TO AVERAGE RATIO = ',num2str(metrics(8))]);
        fprintf(fileID,'\n');
        fprintf(fileID,['PERIODIC CORRELATION ENERGY = ',num2str(metrics(9))]);
        fprintf(fileID,'\n');
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
        fprintf(fileID,'P SEQUENCE AND PERIODIC CORR');
        fprintf(fileID,'\n');
        fprintf(fileID,num2str(P));
        fprintf(fileID,'\n');
        fprintf(fileID,num2str(periodicCorr(P)));
        fprintf(fileID,'\n');
        fprintf(fileID,['Values:  ',num2str(unique(periodicCorr(P)))]);
        fprintf(fileID,'\n\n');
        fprintf(fileID,'N SEQUENCE & PERIODIC CORR');
        fprintf(fileID,'\n');
        fprintf(fileID,num2str(N));
        fprintf(fileID,'\n');
        fprintf(fileID,num2str(periodicCorr(N)));
        fprintf(fileID,'\n');
        fprintf(fileID,['Values:  ',num2str(unique(periodicCorr(N)))]);
    fclose(fileID);
    
end

