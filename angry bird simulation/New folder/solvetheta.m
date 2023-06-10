function the=solvetheta(xmid,ymid,v)
g=9.81;
a=g*xmid^2/(2*v^2);
b=xmid;
c=ymid+a;
the=atan((b+sqrt((b^2)-4*a*c))/(2*a));
end