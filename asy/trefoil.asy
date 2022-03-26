settings.render=32;
import three;
size(5.5cm);
currentprojection=orthographic(1,1.8,4);
currentlight=light(0,10,3);
currentlight = White;

real a,b,h,k;
a=4;
b=a-a*a/(2+2*a);
k=((b/2)/(2+a-b/2))/(1+a);
h=3;


triple P=(1,0,0);
triple Q=rotate(120,Z)*P;
triple R=rotate(-120,Z)*P;
triple H=(0,0,h);

triple A=P+a*(P-R)/2+H;
triple B=Q+a*(Q-R)/2-H;
triple C=rotate(-120,Z)*A;
triple D=rotate(-120,Z)*B;
triple E=rotate(120,Z)*A;
triple F=rotate(120,Z)*B;

triple BC=(B+C)/2+k*(B-C)/2;
triple CB=(B+C)/2-k*(B-C)/2;
triple DE=rotate(-120,Z)*BC;
triple ED=rotate(-120,Z)*CB;
triple FA=rotate(120,Z)*BC;
triple AF=rotate(120,Z)*CB;

draw(A--B--C--D--E--F--cycle,2bp+2gray, light=currentlight);

triple W=(0,0,(h/3)/(1+a));
triple V=-W;

path3[] first;

first.push(A--C--E--E--cycle);
first.push(B--D--C--C--cycle);
first.push(A--B--D--A--cycle);
first.push(A--B--E--A--cycle);
first.push(C--D--A--C--cycle);
first.push(C--D--F--C--cycle);
first.push(E--F--B--E--cycle);
first.push(E--F--C--E--cycle);

path3[] second;

second.push(W--CB--BC--ED--cycle);
second.push(W--ED--DE--AF--cycle);
second.push(W--AF--FA--CB--cycle);
second.push(V--FA--CB--BC--cycle);
second.push(V--BC--ED--DE--cycle);
second.push(V--DE--AF--FA--cycle);


draw(first,.5bp+gray+opacity(.5));
draw(surface(first),gray+opacity(.2));
draw(second,.5bp+gray+opacity(.5));
draw(surface(second),gray+opacity(.7));
//draw(W--BC,.5bp+white+opacity(1));
//draw(W--DE,.5bp+white+opacity(1));
//draw(CB--ED,.5bp+white+opacity(1));
//dot(W,white);
