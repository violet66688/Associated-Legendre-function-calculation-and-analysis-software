
function [P,Pnm]=Pnm_corss_order(n,m,theta)
theta = theta * pi / 180.0;
% Initialize the 2D array
P = zeros(n+1, m+1);
% Seed points
P(1, 1) = 1; % P(0,0)
P(2, 1) = sqrt(3) * cos(theta); % P(1,0)
P(2, 2) = sqrt(3) * sin(theta); % P(1,1)
for nn = 0:n
for mm = 0:nn
if (nn == 0 &&mm==0)
continue
elseif (nn == 1 &&mm==0)
continue 
elseif (nn == 1 &&mm==1)
continue
end 
n1=nn+1;
m1=mm+1;
if (mm==0 || mm==1)
anm=sqrt(((2*nn-1)*(2*nn+1)) ...
/ ((nn-mm)*(nn+mm)));
bnm=sqrt(((2*nn+1)*(nn+mm-1)*(nn-mm-1))...
/ ((nn-mm)*(nn+mm)*(2*nn-3)));
P(n1,m1)=anm*cos(theta)*P(n1-1,m1)-...
bnm*P(n1-2,m1);
else
if mm==2
delta =2;
else
delta=1;
end
anm=sqrt(((2*nn+1)*(nn-mm)*(nn-mm-1)) ...
/ ((2*nn-3)*(nn+mm)*(nn+mm-1)));
bnm=sqrt(delta*((2*nn+1)*(nn+mm-2)*(nn+mm-3))...
/ ((2*nn-3)*(nn+mm)*(nn+mm-1)));
ynm=sqrt( delta*((nn-mm+1)*(nn-mm+2))/...
((nn+mm)*(nn+mm-1)));
P(n1,m1)=anm*P(n1-2,m1)+bnm*P(n1-2,m1-2)-ynm*P(n1,m1-2);
end
end
end
Pnm=P(n+1,m+1);
end

