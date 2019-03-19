clear;
clc;

% % % % % CONSTANTS % % % % %
NUMBER_OF_SIMS = 5;

RADIUS = 100;
HEIGHT = 100;

ANTENNA_ANGLE = deg2rad(1);
RESPONSE_TIME = 21e-6
SPEED_OF_LIGHT = 3e8;

% % % % % RUN SIMULATION N TIMES% % % % % 
no_of_collisions = 0;

for i = NUMBER_OF_SIMS
    [r, phi, z] = generate_acft(i, RADIUS, HEIGHT);

    for j = 1:numel(phi)
        for k = 1:numel(phi)
            if (phi(k) - phi(j)) <= ANTENNA_ANGLE
                d1 = get_distance(r(j), phi(j), z(j));
                d2 = get_distance(r(k), phi(k), z(k));
                
                if abs(d1 - d2) < RESPONSE_TIME * SPEED_OF_LIGHT / 2
                    no_of_collisions = no_of_collisions + 1;
                end
            end
        end
    end
end

avg_collisions = no_of_collisions / NUMBER_OF_SIMS;
 
