function [Pnm, P_matrix] = Pnm_Belikov(n, m, theta)
    % ������Pnm
    % ����: n����, m����, theta�Ƕȣ����ȣ�
    % ���: Pnm(theta) ���������õº���ֵ�ľ���

    theta = theta * pi / 180; % ���Ƕ�ת��Ϊ����

    % ��������Ƿ���Ч
    if m > n
        error('Degree m must not be greater than order n.');
    end
    if abs(theta) > pi
        error('Theta must be within the range [-pi, pi].');
    end

    % ��ʼ��Pnm����
    maxn = n;
    pnm = zeros((maxn + 2)^2, 1);
    P_matrix = zeros(maxn + 1, maxn + 1);

    % ����u
    t = cos(theta);
    u = sin(theta);

    % ��ʼ��pnm�Ļ���ֵ
    pnm(1) = 1;
    pnm(2) = sqrt(3) * t;
    pnm(3) = sqrt(3) * u;

    % ����ʼֵ����P_matrix��
    P_matrix(1, 1) = pnm(1);
    if maxn >= 1
        P_matrix(2, 1) = pnm(2);
        P_matrix(2, 2) = pnm(3);
    end

    % ѭ�������1��maxn��ֵ
    for ni = 1:maxn
        a = sqrt(2*ni + 1) / sqrt(2*ni - 1);
        b = sqrt(2*(ni - 1)*(2*ni + 1)) / sqrt((2*ni - 1) * ni);
        kk = ni * (ni + 1) / 2 + 1;
        k1 = ni * (ni - 1) / 2 + 1;
        k2 = ni * (ni - 1) / 2 + 2;

        pnm(kk) = a * t * pnm(k1) - b * u / 2 * pnm(k2);
        P_matrix(ni + 1, 1) = pnm(kk); % ���浽P_matrix��

        % ѭ�������1��ni��ֵ
        for mi = 1:ni
            kk = ni * (ni + 1) / 2 + mi + 1;
            k1 = ni * (ni - 1) / 2 + mi + 1;
            k2 = ni * (ni - 1) / 2 + mi + 2;
            k3 = ni * (ni - 1) / 2 + mi;

            c = a / ni * sqrt(ni^2 - mi^2);
            d = a / ni / 2 * sqrt((ni - mi) * (ni - mi - 1));
            e = a / ni / 2 * sqrt((ni + mi) * (ni + mi - 1));

            if mi == 1
                e = e * sqrt(2);
            end

            pnm(kk) = c * t * pnm(k1) - d * u * pnm(k2) + e * u * pnm(k3);
            P_matrix(ni + 1, mi + 1) = pnm(kk); % ���浽P_matrix��
        end
    end

    % ����ָ����Pnmֵ
    Pnm_index = n * (n + 1) / 2 + m + 1;
    Pnm = pnm(Pnm_index);
end

