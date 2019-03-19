function [r, phi, z] = generate_acft(n, radius, height)
%GENERATE_ACFT generates n random aircraft positions in a cylinder of radius
%R and height H    
    phi = rand(1, n) * 2 * pi;
    r = rand(1, n) * radius;
    z = rand(1, n) * height ;
end

