input macros
input hatching
input mparrows

verbatimtex
%&latex
\documentclass[oneside]{book}
\usepackage{../lectures}
\begin{document}
etex

filenametemplate "%j-%1c.mps";
prologues:=3;
setarrows(barbedsharp);
linecap:=butt;
%linejoin:=mitered;
%filenametemplate "%j-%1c.svg";
outputformat := "eps";

beginfig(13) 
save u;
u:=.5cm;
v:=.7cm;

z.a1=(0*u,0*v);
z.a2=(1*u,-1*v);
z.a3=(3*u,1*v);
z.a4=(5*u,-1*v);
z.a5=(8*u,2*v);
z.a6=(6*u,2*v);
z.a7=(9*u,-1*v);
z.a8=(10*u,0*v);


save p; path p[];
p0=z.a1--z.a2--z.a3--z.a4--z.a5--z.a6--z.a7--z.a8---cycle;

draw p0;
fill p0 withcolor black;

label(btex $U$ etex, ((5*u,1*v)));

endfig;

beginfig(14) 
save u;
u:=.7cm;

z.a1=(-2,0)*u;
z.a2=(2,0)*u;
z.a3=(-1,3)*u;
z.a4=(-3,1)*u;
z.a5=(3,1)*u;
z.a6=(1,3)*u;

save p; path p[];
p0=z.a1--z.a2--z.a3--z.a4--z.a5--z.a6--cycle;


fill p0 withcolor black;

z.x=whatever[z.a2,z.a3]=whatever[z.a4,z.a5];
z.y=whatever[z.a6,z.a1]=whatever[z.a4,z.a5];
z.z=whatever[z.a2,z.a3]=whatever[z.a6,z.a1];

fill z.x--z.y--z.z--cycle withcolor white;

draw p0;

label(btex $D$ etex, .6[z.z,.5[z.x,z.y]]);
label.bot(btex $U$ etex, .5[z.a3,z.a6]);
endfig;

beginfig(15) 
save u;
u:=1.4cm;

z.o=origin;
z.p1=(-1,1.2)*u;
z.p2=(0,2)*u;
z.p3=(1,1.4)*u;

draw z.o--z.p1--z.p2--z.p3--z.o--z.p2;

labelarcsprof(z.p1, z.o, z.p2, 10, 12, btex $\psi_i$ etex);
labelarcsprof(z.o, z.p1, z.p2, 10, 13, btex $\theta_{i-1}$ etex);
labelarcsprof(z.o, z.p2, z.p3, 10, 11, btex $\theta_i$ etex);
labelarcsprof(z.p3, z.p2, (2[z.p1,z.p2]), 10, 12, btex $\phi_i$ etex);

fill_angle(z.p3, z.p2, (2[z.p1,z.p2]), 10);

dOt z.o,z.p1,z.p2,z.p3;

label.bot(btex $o$ etex, z.o);

label.lft(btex $p_{i-1}$ etex, z.p1+(2,0));
label.top(btex $p_i$ etex, (z.p2+(-2,0)));
label.rt(btex $p_{i+1}$ etex, z.p3);

endfig;



beginfig(17) 
save u;
u:=1cm;

z.p0=(0,0)*u;
z.p1=(1,1)*u;
z.p2=(2,0)*u;
z.ww=.7[z.p1,z.p2];
z.w=.7[z.p1,z.ww];
z.x=.6[z.p0,z.ww];
z.y=altitude(z.p0, z.x, z.w);

draw z.w--z.p0--z.p1--z.p2;
draw z.p0--z.ww dashed evenly;
dOt z.p0,z.p1,z.p2,z.x,z.y,z.w,z.ww;


label.llft(btex $p_n=p_0$ etex, z.p0+(4,0));
label.top(btex $p_1$ etex, z.p1);
label.bot(btex $p_2$ etex, z.p2);
label.urt(btex $w_1$ etex, z.w);
label.rt(btex $w_1'$ etex, z.ww);
label.bot(btex $y_1$ etex, z.x);
label.top(btex $x_1$ etex, z.y);
endfig;

beginfig(18) 
save u,a;
u:=1cm;
a:=45;

z.i=(0,1)*u;
z.a1= z.i rotated -a;
z.a2= z.i rotated a;
z.a3=z.a1 rotated -120;
z.a4=z.a2 rotated -120;
z.a5= z.a1 rotated 120;
z.a6=z.a2 rotated 120;

z.a23=.5[z.a2,z.a3];
z.a45=.5[z.a4,z.a5];
z.a61=.5[z.a6,z.a1];

z.a223=whatever[z.a2,z.a3]=whatever[z.a4,z.a5];
z.a661=whatever[z.a6,z.a1]=whatever[z.a2,z.a3];
z.a445=whatever[z.a4,z.a5]=whatever[z.a6,z.a1];

draw z.a2--z.a23 penbold;
fill circle(z.a223,2.5) withcolor white;

draw z.a45--z.a5--z.a6--z.a61 penbold;
fill circle(z.a661,2.5) withcolor white;


draw z.a23--z.a3--z.a4--z.a45 penbold;
fill circle(z.a445,2.5) withcolor white;
draw z.a61--z.a1--z.a2 penbold;

endfig;

beginfig(19) 
save u;
u:=1cm;

z.a0=(0,0)*u;
z.a1=(-.4,-1.3)*u;
z.a2=(.4,-2)*u;
z.a3=(.1,-3)*u;
z.b1=(.7,-.9)*u;
z.b2=(-.7,-2.3)*u;
z.x=whatever[z.a1,z.a2]=whatever[z.b1,z.b2];

hatchfill z.a0--z.a1--z.b1--cycle  withcolor (87, 1.4mm, -.5bp);
%hatchfill z.a1--z.b1--z.a2--cycle  withcolor (27, 1.4mm, -.5bp);
%hatchfill z.b1--z.b2--z.a2--cycle  withcolor (-24, 1.4mm, -.5bp);

draw z.a1--z.a0--z.b1--z.b2--z.a3--z.a2 penbold;
fill circle(z.x,2) withcolor white;
draw z.a1--z.a2 penbold;
%draw z.x--z.a2 dashed evenly penbold;
draw z.a1--z.b1;
draw z.b1--z.a2--z.b2 dashed evenly;

dOt z.a0,z.a1,z.a2,z.a3,z.b1,z.b2;

label.lft(btex $p_{n-1}$ etex, z.a1);
label.top(btex $p_n$ etex, z.a0);
label.rt(btex $p_1$ etex, z.b1);
endfig;

beginfig(20) 
save u;
u:=.7cm;

z.a=origin;
z.b=(1,0)*u;
z.c=2*z.b;
z.d=3*z.b;

save p; path p[];
p0=z.a..z.c..z.b..z.d..cycle;

draw p0;
draw -.2[z.a,z.d]--1.2[z.a,z.d];
drawarrow subpath (3.2,3.7) of p0;
drawarrow subpath (1.2,1.7) of p0;
drawarrow subpath (.1,.3) of p0;
drawarrow subpath (2.2,2.7) of p0;
dOt z.a,z.b,z.c,z.d;


label.urt(btex $a$ etex, z.a);
label.ulft(btex $b$ etex, z.b);
label.urt(btex $c$ etex, z.c);
label.ulft(btex $d$ etex, z.d);
label.top(btex $\gamma$ etex, point 3.5 of p0);
endfig;

beginfig(41) 
save u,a,k;
u:=1cm;
a:=45;
k:=.3;

path p[];

z.i=(0,-1)*u;
z.a1= z.i rotated -a;
z.a2= z.i rotated a;
z.a3=z.a1 rotated -120;
z.a4=z.a2 rotated -120;
z.a5= z.a1 rotated 120;
z.a6=z.a2 rotated 120;

z.a23=.5[z.a2,z.a3];
z.a45=.5[z.a4,z.a5];
z.a61=.5[z.a6,z.a1];

z.a223=whatever[z.a2,z.a3]=whatever[z.a4,z.a5];
z.a661=whatever[z.a6,z.a1]=whatever[z.a2,z.a3];
z.a445=whatever[z.a4,z.a5]=whatever[z.a6,z.a1];

draw z.a2--z.a23 penbold;
fill circle(z.a223,2.5) withcolor white;

draw z.a45--z.a5--z.a6--z.a61 penbold;
fill circle(z.a661,2.5) withcolor white;


draw z.a23--z.a3--z.a4--z.a45 penbold;
fill circle(z.a445,2.5) withcolor white;
draw z.a61--z.a1--z.a2 penbold;

p0=ddline(k[z.a5,z.a6],k[z.a4,z.a3])(.2,.2);
draw p0;

z.d=whatever[z.a5,z.a6]=whatever[k[z.a5,z.a6],k[z.a4,z.a3]];
z.c=whatever[z.a2,z.a3]=whatever[k[z.a5,z.a6],k[z.a4,z.a3]];
z.b=whatever[z.a1,z.a6]=whatever[k[z.a5,z.a6],k[z.a4,z.a3]];
z.a=whatever[z.a3,z.a4]=whatever[k[z.a5,z.a6],k[z.a4,z.a3]];

dOt z.a,z.b,z.c,z.d;

label.ulft(btex $a$ etex, z.a);
label.ulft(btex $b$ etex, z.b);
label.urt(btex $c$ etex, z.c);
label.urt(btex $d$ etex, z.d);
endfig;

beginfig(43) 
save u;
u:=1cm;
path p[];

z.a0=(-1,1)*u;
z.a1=(.8,1)*u;
z.a2=(-1.2,.2)*u;
z.a3=(-.5,-1)*u;
z.a4=(1,-.1)*u;

z.v=.3[z.a2,z.a3];
z.w=.3[z.a4,z.a0];

z.x=whatever[z.a1,z.a2]=whatever[z.a4,z.a0];
p0=z.a0--z.a1--z.a2--z.a3--z.a4--cycle;

draw subpath (0,4) of p0 penbold;
fill circle(z.x,2.5) withcolor white;
draw subpath (4,5) of p0 penbold;

draw z.v--z.w dashed evenly;
draw ddline(z.v,z.w)(1,-1) ;

dOt z.v,z.w;

whitelabel. rt(btex $\alpha(x)$ etex, z.v+(1,0));
label.urt(btex $\alpha(x+y)$ etex, z.w);
label(btex $r(x,y)$ etex rotated angle (z.w-z.v), 1.6[z.w,z.v]+(-1,6));
endfig;

beginfig(46) 
save u,n;
u:=.2cm;
n:=10;
path p[];

p0=(0,0)*u--(0,1)*u--(3,1)*u--(3,2)*u--(2,2)*u--(2,5)*u--(4,5)*u--(4,4)*u--(3,4)*u--(3,3)*u--(6,3)*u--(6,4)*u--(7,4)*u--(7,3)*u--(6,3)*u--(6,1)*u--(5,1)*u--(5,2)*u--(4,2)*u--(4,1)*u--(6,1)*u--(n,1)*u--(n,0)*u--cycle;

p1=(6,5)*u--(8,5)*u--(8,6)*u--(7,6)*u--(7,7)*u--(6,7)*u--cycle;

p2=(6,5)*u--(7,5)*u--(7,6)*u--(6,6)*u--cycle;

p3=(0,1)*u--(3,1)*u--(3,2)*u--(2,2)*u--(2,5)*u--(4,5)*u--(4,4)*u--(3,4)*u--(3,3)*u--(6,3)*u--(6,1)*u--(n,1)*u;

fill p0 withcolor .5;
fill p2 shifted ((1,1)*u) withcolor .5;
draw p3 penbold;

for i=0 step 1 until n:
draw (i,0)*u--(i,n)*u penhair;
draw (0,i)*u--(n,i)*u penhair;
endfor

endfig;

beginfig(51) 
save u,N;
u:=1cm;
path p[];
N:=90;

p0=origin--(5,0)*u;

z.a0=(1,0)*u;
z.a1=(1,0)*u rotated (25*360/N) scaled 1.4;
z.a2=(1,0)*u rotated (40*360/N) scaled .4;
z.a3=(1,0)*u rotated (55*360/N) scaled 1.2;
z.a4=(1,0)*u rotated (75*360/N) scaled 1;
z.a5=.5[z.a0,z.a4];

p1=z.a5--z.a4--z.a3--z.a2--z.a1--z.a0--cycle;

z.b5=whatever*z.a5=(1.8,whatever)*u;

p2=z.b5--(1.8,2)*u--(-1.8,2)*u--(-1.8,-1.4)*u--(1.8,-1.4)*u--cycle;

for i=0 step 360/N until 359.9:
draw p0 rotated i;
endfor

clip currentpicture to p1--p2--cycle;

fill p1 withcolor .8;
draw p1 penbold;

dOt origin;

label.lft(btex $o$ etex, origin);
label.top(btex $\alpha$ etex, .5[z.a3,z.a4]);
label(btex $\Sigma$ etex, (.4,-.1)*u);
whitelabel.bot(btex collar etex, (0,2)*u+(0,-4));
endfig;

end
