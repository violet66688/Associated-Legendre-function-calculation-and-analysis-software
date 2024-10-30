function errors = Error_curve(n, theta)
global P1 P2 P3 P4
m=n;
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
i=0:n;
p2n1=(2*i+1);
row_sums=sum(w,2);
row_sum=row_sums';
p1=abs(row_sum  - p2n1);
p2=1 ./ p2n1;
errors=p1.*p2;
end


      







