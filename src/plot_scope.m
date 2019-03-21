function plot_scope(radius, height, plane_radius, plane_azimuth, plane_height, phi, fov)
%PLOT_SCOPE plots radar scope
    clf;

    [x, y, z] = cylinder(radius, 100);
    
    z = z * height;
    
    f = surf(x, y, z);
    set(f, 'FaceAlpha', 0.2);
    
    hold on;
    plot3(plane_radius .* cos(plane_azimuth), plane_radius .* sin(plane_azimuth), plane_height, 'go');
    
    x1 = [0, radius * cos(phi);
        0, radius * cos(phi)];
    
    y1 = [0 radius * sin(phi);
        0 radius * sin(phi)];
    
    z1 = [0 0;
        height height];
    
    plane1 = surf(x1, y1, z1);
    set(plane1, 'FaceAlpha', 0.2);
    
    x2 = [0, radius * cos(phi + fov);
        0, radius * cos(phi + fov)];
    
    y2 = [0 radius * sin(phi + fov);
        0 radius * sin(phi + fov)];
    
    z2 = [0 0;
        height height];
    
    plane2 = surf(x2, y2, z2);
    set(plane2, 'FaceAlpha', 0.2);
end
