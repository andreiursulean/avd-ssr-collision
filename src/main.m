clear;
clc;

% % % % % CONSTANTS % % % % %
ANIMATION = true;

NUMBER_OF_SIMS = 100;

RADIUS = 100;
HEIGHT = 100;

ANTENNA_ANGLE = deg2rad(1);
RESPONSE_TIME = 21e-6;
SPEED_OF_LIGHT = 3e8;

% % % % % RUN SIMULATION N TIMES % % % % % 

total_collisions = 0;

for i = NUMBER_OF_SIMS
    collisions_per_sim = 0;
    
    [distance, relative_bearing, altitude] = generate_acft(i, RADIUS, HEIGHT);
    [distance, relative_bearing, altitude] = sort_acft(distance, relative_bearing, altitude);
        
    for j = 1:(numel(relative_bearing) - 1)
  
        if ANIMATION
            plot_scope(RADIUS, HEIGHT, distance, relative_bearing, altitude, relative_bearing(j), ANTENNA_ANGLE);
            pause(0.01);
        end
        
        for k = (j + 1):numel(relative_bearing)
            if (relative_bearing(k) - relative_bearing(j)) <= ANTENNA_ANGLE
                d1 = get_distance(distance(j), relative_bearing(j), altitude(j));
                d2 = get_distance(distance(k), relative_bearing(k), altitude(k));
                
                if abs(d1 - d2) < RESPONSE_TIME * SPEED_OF_LIGHT / 2
                    collisions_per_sim = collisions_per_sim + 1;
                    disp('COLLISION');
                end
            end
        end
    end
    
    txt = sprintf('FOR SIMULATION OF %d PLANES\nTOTAL COLLISIONS: %d\n\n', ... 
    i, collisions_per_sim);
    
    total_collisions = total_collisions + collisions_per_sim;
end


avg_collisions = total_collisions / NUMBER_OF_SIMS;

disp(['TOTAL COLLISIONS: ' num2str(total_collisions)]);
disp(['AVERAGE NUMBER OF COLLISIONS: ' num2str(avg_collisions)]);
 
