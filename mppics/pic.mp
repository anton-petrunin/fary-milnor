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
u:=1cm;

z.a1=(0,0)*u;
z.a2=(1,0)*u;
z.a3=(0,1)*u;
z.a4=(2,1)*u;
z.a5=(1,2)*u;
z.a6=(.5,3)*u;
z.a7=(.2,2)*u;
z.a8=(3,2)*u;
z.a9=(3,3)*u;


save p; path p[];
p0=z.a1--z.a2--z.a3--z.a4--z.a6--z.a7--z.a8--z.a9--cycle;

draw p0;
fill p0 withcolor black;

label(btex $U$ etex, ((2.5,.5)*u));

endfig;

beginfig(14) 
save u;
u:=.5cm;

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
label(btex $U$ etex, .5[z.a3,z.a6]);
endfig;

beginfig(15) 
save u;
u:=1cm;

z.o=origin;
z.p1=(-1,1)*u;
z.p2=(0,2)*u;
z.p3=(1,2.1)*u;

z.sh=(4,0)*u;

z.oo=z.o+z.sh;
z.q1=z.p1+z.sh;
z.q2=z.p2+z.sh;
z.q3=(z.p3+z.sh) reflectedabout (z.oo,z.q2);

draw z.o--z.p1--z.p2--z.p3--z.o--z.p2;
%draw z.oo--z.q1--z.q2--z.q3--z.oo--z.q2;

fill_angle(z.p3, z.p2, (2[z.p1,z.p2]), 10);
%fill_angle(z.q3, z.q2, (2[z.q1,z.q2]), 10);

dOt z.o,z.p1,z.p2,z.p3;

label.bot(btex $o$ etex, z.o);


label.rt(btex $p_{i-1}$ etex, z.p1+(2,0));
label.top(btex $p_i$ etex, (z.p2+(-2,0)));
label.top(btex $p_{i+1}$ etex, z.p3);



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


label.bot(btex $p_0$ etex, z.p0);
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



end
