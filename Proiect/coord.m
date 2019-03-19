%generre random de cate un o pereche de coordonate, functia returneaza
%perechea de coordonate

function f = coord(R)
%H ul e pus doar daca trebuie sa lucram in 3D

H = 20

x = -R + 2 * rand(1,1) *  R
y =-R + 2 * rand(1,1) *  R

%daca nu sunt in cerc, apelez functia din nou
if (x^2+y^2) > R^2
    f = coord(R)
    
   
else
   f = [x,y];
    plot(x, y, 'r*')
    hold on
end

end








