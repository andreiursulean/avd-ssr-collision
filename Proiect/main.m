clc
clear
close all
grid on
circle(0,0,1000)
hold on
axis equal
x_list = [];
y_list = [];
x1_list = [];
y1_list = [];
nr = 0;
alta = 0
for q = 4%nici aici nu mai stiu ce numere voia
    for i =1:q
    a = coord(1000);%=[x,y]
   
    x_list = [x_list, a(1)]; %lista cu toate coordonatele OX la care adaug pe rand X-uri
    x1_list = [x1_list, a(1)]
    y_list = [y_list, a(2)]; %lista cu toate coordonatele OY la care adaug pe rand Y-uri
    y1_list = [y1_list, a(2)]
    angles = atan2(y_list, x_list); %toate unghiurile raportate la axa OX in radiani
    

%am facut diferenta de unghiuri la toate perechile din angles si am pus
%conditia sa fie mai mica ca 1 grad
    for u =1:length(angles)
        for v = u:length(angles)-1
          if (angles(u) * angles (v) < 0) 
              
              if  (angles(u) > pi/2 || abs(angles(v)) > pi/2) 
                  if pi - abs(angles(u)) - abs(angles(v)) <= 1/pi
                      if dist(x_list(u), y_list(u), x_list(v), y_list(v))<10000 
                        nr=nr +1;
                        alta=alta+1
                      end
                  end
              end
              
              if angles(u) < pi/2 || abs(angles(v)) < pi/2
                  if abs(angles(u)) + abs(angles(v)) <= 1/pi
                      if dist(x_list(u), y_list(u), x_list(v), y_list(v))<10000 
                        nr=nr+1;
                        alta=alta+1
                      end
                  end
              end
          
              
 
          elseif angles(u) < 0 && angles(v) < 0
              if abs(abs(angles(u)) - abs(angles(v))) <= 1/pi
                  if dist(x_list(u), y_list(u), x_list(v), y_list(v)) < 10000 
                    nr=nr+1;
                    alta=alta+1
                  end
              end
          end
              
                  
                 
                  
            if (angles(u) > 0 & angles (v) > 0)      
                if abs(angles(u) - angles(v)) <= 1/pi
                    %daca dif e mai mica de un grad si distanta emai mica decat
                    %constanta aia (10000 e tot la puleala), cresc nr ul
                    if dist(x_list(u), y_list(u), x_list(v), y_list(v))<10000 
                        nr=nr+1;
                        alta=alta+1
                    end
                end
            end
        disp("asta e ")
        disp(alta)
        
        nr = 0;
        end
    end
    
    end
    x_list = [];

    y_list = [];

    nr = 0;
end
disp (alta)
