function [ EE ] = EnergyEfficiency( Seq )
%ENERGYEFFICIENCY Summary of this function goes here
%   Detailed explanation goes here

    EE = EnergyOfSeq(Seq) / size(Seq,2);

end

