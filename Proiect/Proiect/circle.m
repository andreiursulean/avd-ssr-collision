function f = circle(x,y,z,r)
hold on
th = 0:pi/50:2*pi;
xunit = r * cos(th) + x;
yunit = r * sin(th) + y;
zunit = z
f = plot(xunit, yunit, zunit);
