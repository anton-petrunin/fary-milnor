settings.render=0;

import graph3;


size(2.4cm,0);

currentprojection=perspective(1,1,1.5);

real a=.5;

draw((0,0,-1)--(0,0,1),black + linewidth(.4pt)+dashed);
draw((0,0,0)--(1,0,0),black + linewidth(.4pt)+dashed);

triple  f(pair z) {return (sin(z.x)*cos(z.y),sin(z.x)*sin(z.y),cos(z.x));}
draw(surface(f,(0,0),(pi,a), nu=20,nv=10,Spline),
     white,meshpen=black+thick(),nolight);
     
draw((0,0,0)--(0,1,0),black + linewidth(.4pt),Arrow3);
draw((0,0,0)--(-sin(a),cos(a),0),black + linewidth(.4pt),Arrow3);

draw((0,0,0)--(cos(a),sin(a),0),black + linewidth(.4pt)+dashed);

draw((0,.1,0)--(.1,.1,0)--(.1,0,0),black + linewidth(.4pt));
draw((.2*cos(a),.2*sin(a),0)--(.2*cos(a),.2*sin(a),0)+(-.2*sin(a),.2*cos(a),0)--(-.2*sin(a),.2*cos(a),0),black + linewidth(.4pt));

triple l(real t) 
{
return (-.5*sin(t),.5*cos(t),0);
}

path3 arc = graph(l, 0, a, operator ..);
draw(arc); 
