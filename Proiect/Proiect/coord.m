function f = coord(R, H)

x = -R + 2 * rand(1,1) *  R;
y = -R + 2 * rand(1,1) *  R;
z = rand(1, 1) * H;

if (x^2+y^2) > R^2
    f = coord(R,H) ; 
else
   f = [x,y,z];
    plot3(x, y, z, 'r*');
    hold on;
end
end








