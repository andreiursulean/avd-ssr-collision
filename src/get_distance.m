function distance = get_distance(r, phi, z)
%GET_DISTANCE returns distance between two objects represented in
%cylindrical coordinates

    x = r * cos(phi);
    y = r * sin(phi);

    distance = sqrt(x ^ 2 + y ^ 2 + z ^ 2);
end
