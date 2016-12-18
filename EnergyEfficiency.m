function [ EE ] = EnergyEfficiency( Seq )
%ENERGYEFFICIENCY

    EE = EnergyOfSeq(Seq) / size(Seq,2);

end

