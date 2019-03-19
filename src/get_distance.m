function distance = get_distance(r, phi, z)
%GET_DISTANCE returns distance from radar to aircraft represented in
%cylindrical coordinates
% r = horizontal distance from radar station
% phi = azimuth of the aircraft
% z = height of the aircraft

    x = r * cos(phi);
    y = r * sin(phi);

    distance = sqrt(x ^ 2 + y ^ 2 + z ^ 2);
end

