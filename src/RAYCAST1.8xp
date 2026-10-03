ClrHome

Menu("CONF", "DEFAULT",DF,"CUSTOM",CM)

Lbl CM

Disp "START X"
Input X

Disp "START Y"
Input Z

Disp "FOV"
Input F

Disp "<theta>"
Input A

Disp "<theta> STEP"
Input Q

Disp "BOUNCES"
Input C

F/Q+1->N

Goto ST

Lbl DF

48->X
32->Z

0->A
90->F
10->Q
F/Q+1->N

Goto ST

Lbl ST

ClrDraw
RecallPic Pic1

1->J

Lbl C
A-F/2+Q(J-1)->B
cos(B)->V
sin(B)->W

Z->Y

X->R
Y->S
0->D

Lbl S
R+V->R
S+W->S
D+1->D

If int(R)<0
Goto H
If int(R)>95
Goto H
If int(S)<0
Goto H
If int(S)>63
Godo H

int(R)->C
int(S)->E

If pxl-Test(E,C)
Goto H

Goto S

Lbl H
D->L_1(J)

If J=N
Goto D

J+1->J
Goto C

Lbl D
RecallPic Pic1

1->J

Lbl P
A-F/2+Q(J-1)->B
cos(B)->V
sin(B)->W

X->R
Y->S
0->K

Lbl T
R+V->R
S+W->S
K+1=K

If K>=L_1(J)
Goto N

Pxl=On(int(S), int(R))
Goto T

Lbl N
If J=N
Goto E

J+1->J
Goto P

Lbl E
Pause
