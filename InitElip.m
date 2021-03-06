doPlot = 1;
dt = 15e-15;
TStop = 1000 * dt;
InitDist = 0.05;
Method = 'VE'; % VE -- verlot; FD -- Forward Difference

Mass0 = 14 * C.am; % Silicon
Mass1 = 4 * C.am; % Argon
Mass2 = 50 * C.am;

AtomSpacing = 0.5430710e-9;
LJSigma = AtomSpacing / 2^(1 / 6);
LJEpsilon = 1e-21;

PhiCutoff = 3 * AtomSpacing * 1.1;

T = 30;

AddCircAtomicArray(5,0,0,0,0,InitDist, 0, 0);

Ep = 4 * C.q_0;
vy0 = -sqrt(0.02 * Ep / Mass1);
AddHCPAtomicBlob(4, 0.1, 15, 0, vy0, 0, InitDist, T, 1);

%Second Mass Moving 
%Ep0 = 4 * C.q_0;
%vy1 = -sqrt(0.02 * Ep0 / Mass2);
%AddHCPAtomicBlob(5, 5, 15, 0, vy1, 0, InitDist, T, 2); 

%Particle Stream
Ep0 = 1;
AddParticleStream(4, 0.1, -20, pi/2 , 2,  Ep0 * C.q_0, 1);

Size = 15 * AtomSpacing;
Limits = [-Size +Size -Size +1.5*Size]; % square is good
PlDelt = 5 * dt;
MarkerSize = 4;
PlotFile = 'HCPBlob.gif';
%PlotPosOnly = 1;
doPlotImage = 1;
PlotSize = [100, 100, 1049, 1549];

ScaleV = .2e-11;
ScaleF = 20;
