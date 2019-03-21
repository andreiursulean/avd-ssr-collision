function [sorted_r, sorted_phi, sorted_z] = sort_acft(r, phi, z)
%SORT_ACFT sorts the aircraft by relative bearing
% r     distance from SSR array
% phi   relative bearing
% z     height

    for i = 1:(numel(phi) - 1)
        for j = (i + 1):numel(phi)
            if phi(i) > phi(j)
                aux_r = r(i);
                r(i) = r(j);
                r(j) = aux_r;

                aux_phi = phi(i);
                phi(i) = phi(j);
                phi(j) = aux_phi;

                aux_z = z(i);
                z(i) = z(j);
                z(j) = aux_z;
            end
        end
    end

    sorted_r = r;
    sorted_phi = phi;
    sorted_z = z;
end