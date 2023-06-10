hold on
x0=input('x value');
y0=input('y value');
the=input('the angle');
v=input('the velocity');
m1=input('Mass of Projectile: ');
m2=input('Mass of the target:');
xa=x0;
ya=y0;
x=0;
y=0;
for i1=0:0.02:20
    axis([0 15*xa 0 15*ya]);
    x=cos(the/180*pi)*v*i1;
    y=v*sin(the*pi/180)*i1-4.9*i1^2;
    c1=circle(x0,y0,2);
    c2=circle(x,y,2);
    pause(0.01);
    plot(x,y);
    if  x>1.5*x0 || (x0-x)^2+(y0-y)^2<=16
       break;
    end
end
c1=circle(x0,y0,2);
c2=circle(x,y,2);
hold off;
hold on;
yc=y0;
xc=x0;
xn=x;
yn=y;
[v,v0,th]=after(x0,y0,x,y,v,m1,m2);
if   (x0-x)^2+(y0-y)^2<=16
for i2=0:0.02:20
    axis([0 15*xa 0 15*ya]);
    x=xn+cos(th)*v*i2;
    y=yn+v*sin(th)*i2-4.9*i2^2;
    x0=xc+cos(th)*v0*i2;
    y0=yc+v0*sin(th)*i2-4.9*i2^2;    
    c1=circle(x0,y0,2);
    c2=circle(x,y,2);
    pause(0.01);
    plot(x,y);
    plot(x0,y0);
if y<=2 || y0<=2
        vx=cos(th)*v;
    vy=v*sin(th)-9.8*i2;
    v0x=cos(th)*v0;
    v0y=v0*sin(th)-9.8*i2;
    break
end
end
end
    axis([0 15*xa 0 15*ya]);
   c1=circle(x0,y0,2);
   c2=circle(x,y,2);
xn=x;
yn=y;
xc=x0;
yc=y0;
   hold off
hold on
for o=0:1:3
    if y<=2
    for i3=0:0.02:20
    axis([0 15*xa 0 15*ya]);
    x=xn+vx*i3;
    y=yn-vy*i3-4.9*i3^2;
    x0=xc+v0x*i3;
    y0=yc+v0y*i3-4.9*i3^2;
    c1=circle(x,y,2);
    c2=circle(x0,y0,2);
    pause(0.01);
    plot(x,y);
    plot(x0,y0);
    if (y<=2 || y0<=2)&&(i3>0.02)
    xn=x;
    yn=y;
    xc=x0;
    yc=y0;
    vy=-vy-9.8*i3;
    v0y=v0y-9.8*i3;
    i3=0;
        break
    end
    end
    end
    if y0<=2
    for i4=0:0.02:20
    axis([0 15*xa 0 15*ya]);
    x=xn+vx*i4;
    y=yn+vy*i4-4.9*i4^2;
    x0=xc+v0x*i4;
    y0=yc-v0y*i4-4.9*i4^2;
    c1=circle(x,y,2);
    c2=circle(x0,y0,2);
    pause(0.01);
    plot(x,y);
    plot(x0,y0);
    if (y<=2 || y0<=2) && (i4>0.02)
    xn=x;
    yn=y;
    xc=x0;
    yc=y0;
    vy=vy-9.8*i4;
    v0y=-v0y-9.8*i4;
    i4=0;
        break
    end
    end    
    end
end
hold off
    axis([0 15*xa 0 15*ya]);
        c1=circle(x,y,2);
    c2=circle(x0,y0,2);