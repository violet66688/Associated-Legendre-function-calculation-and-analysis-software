function [results] = Feasible_area(n,theta_values,eps)
global P1 P2 P3 P4
    num_thetas = length(theta_values); 
    results = zeros(num_thetas, n+1); 
    m=n;
    h = waitbar(0, '开始计算...');
for idx = 1:num_thetas
    theta = theta_values(idx);
     if P1==1
     [Pnm,p] = Pnm_row(n, m, theta);
      w=p.*p;
     elseif P2==1     
     [Pnm,P] = Pnm_column(n, m, theta);
      w=P.*P;
     elseif P3==1
      [P,Pnm]=Pnm_corss_order(n,m,theta);
      w=P.*P;
     elseif P4==1
     [Pnm, P_matrix] = Pnm_Belikov(n, m, theta);
      w=P_matrix.*P_matrix;
 end        
    i = 0:n;
    p2n1 = power(i + 1, 2);
    sumrow = sum(w, 2);
    column = cumsum(sumrow);
    Sum_of_squares = column';
    p1 = abs(Sum_of_squares - p2n1);
    p2 = 1 ./ p2n1;
    p3 = p1 .* p2;
    Limits =eps;
    p4 = p3;
    p4(p3 < Limits) = 1;
    p4(p3 > Limits) = 0;   
    results(idx, :) = p4; 
    waitbar(idx / num_thetas, h,['正在分析可行范围   ',num2str(round(100*(idx / num_thetas))),'%']);
end
close(h);
end

 