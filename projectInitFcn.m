%% Template prepared by Manuel Barrios April 8, 2024
clear;

%% Output Nominals
fLineHz             = 50;

%% Control Time Config
fsw                 = 10000;
TsControl           = 1/fsw;              % Used for Gains or Window Calculations. This variable is not replaced during code generation
TsStep              = TsControl;          % Used For Sample Time. During code generation this variable is replaced by -1

clc;

