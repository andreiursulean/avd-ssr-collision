function f = distance(angle_1, radius_1, height_1, angle_2, radius_2, height_2)
f = sqrt((angle_1 - angle_2)^2 + radius_1^2 + radius_2^2 - 2 * radius_1 * radius_2 * cos(angle_2 - angle_1))