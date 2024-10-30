function [Pnm,p] = Pnm_row(n, m, theta)
    % Convert theta to radians
    theta = theta * pi / 180;

    % Initialize the p array with dynamic size
    p = zeros(n + 1, n + 1);
    p(1, 1) = 1.0;
    p(2, 1) = sqrt(3) * cos(theta);
    p(2, 2) = sqrt(3) * sin(theta);

    for i = 2:n
        for j = i:-1:0
            if i == j
                c_mm = sqrt((2 * j + 1) / (2 * j));
                p(i + 1, j + 1) = c_mm * sin(theta) * p(i, j);
            else
                if j == 0
                    j_j = 2.0;
                else
                    j_j = 1.0;
                end
                h_nm = sqrt(((i + j + 2) * (i - j - 1)) / ((i - j) * (i + j + 1)));
                g_nm = 2 * (j + 1) / sqrt((i - j) * (i + j + 1));
                if h_nm == 0
                    p(i + 1, j + 1) = (1 / sqrt(j_j)) * g_nm * cos(theta) / sin(theta) * p(i + 1, i + 1);
                else
                    p(i + 1, j + 1) = (1 / sqrt(j_j)) * (g_nm * cos(theta) / sin(theta) * p(i + 1, j + 2) - (h_nm * p(i + 1, j + 3)));
                end
            end
        end
    end

    Pnm = p(n + 1, m + 1);
end
