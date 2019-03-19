clear;
clc;

% % % % % CONSTANTS % % % % %
NUMBER_OF_SIMS = 5;

RADIUS = 100;
HEIGHT = 100;

ANTENNA_ANGLE = deg2rad(1);


% % % % % RUN SIMULATION N TIMES% % % % % 
for i = NUMBER_OF_SIMS
    [r, phi, z] = generate_acft(i, RADIUS, HEIGHT);

%     TODO add simulation code
end
 
