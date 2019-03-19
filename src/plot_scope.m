function plot_scope(radius, height, plane_radius, plane_azimuth, plane_height)
%PLOT_SCOPE plots radar scope
    [x, y, z] = cylinder(radius, 100);
    
    z = z * height;
    
    f = surf(x, y, z);
    set(f, 'FaceAlpha', 0.2);
    
    hold on;
    plot3(plane_radius .* cos(plane_azimuth), plane_radius .* sin(plane_azimuth), plane_height, 'go');
end