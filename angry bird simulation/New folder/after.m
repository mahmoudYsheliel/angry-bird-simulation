function [v1,v2,th]=after(x0,y0,x,y,v0,m1,m2)
g=9.81;
vi=sqrt(v0^2-2*g*y);
th=atan((y-y0)/(x-x0));
v1=vi*(m1-m2)/(m1+m2);
v2=(2*m1*vi)/(m1+m2);
end 