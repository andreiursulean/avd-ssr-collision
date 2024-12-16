clc
clear
close all
x_list = [];
y_list = [];
z_list = [];
L = 0
nr = 0;
alta = 0
Values = []
for q = 1:x %catva
    for i =1:q
        a = coord(1000, 1500);
        
        x_list = [x_list, a(1)]; 
        y_list = [y_list, a(2)];
        z_list = [z_list, a(3)];

        angles = atan2(y_list, x_list) 

        for j = 1:L
            if angles(j) < 0
                angles(j) = angles(j) + 360;
            end
        end

        Values = [x_list;y_list;angles]
        Values = Values' 
        Values = sortrows(Values, 3)
        Values = Values' 

        x_list = Values(1, :)
        y_list = Values(2, :)
        angles = Values(3, :)

        L = length(angles)
        for u = 1:L-1
            for v = u+1:L
              if (angles(v) - angles(u))< 6 %pus la puleala
                  if dist(x_list(u), y_list(u), z_list(u), x_list(v), y_list(v), z_list(v))< 10000 %pus la puleala
                      nr = nr +1
                      alta = alta+1
                  end
            disp(alta)
            nr = 0;
              end
            end
        end  
        nr = 0;
    end
end


