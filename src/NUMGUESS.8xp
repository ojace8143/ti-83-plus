ClrHome

Lbl PA

0->G
1->dim(L_1)
0->C

0->D

"1 -NM
"2 -EZ
"3 -HD
"4 -CUSTOM

" Note: if you see something like '"....' that is a half assed comment because comments arent a thing in ti-basic, so this is the way to get aound it. its just there for me so i know what the hell my code does

Menu("CHOOSE DIFF","NOMRAL",NM,"EASY",EZ,"HARD",HD)

Lbl NM
randInt(0,100)->N

1->D
Goto ST

Lbl EZ
randInt(0,50)->N

2->D
Goto ST

Lbl HD
randInt(-500,500)->N
3->D
Goto ST

Lbl ST

ClrHome

While G/=N
If D=1
Then
Disp "GUESS NUM"
Disp "1-100"
End

If D=2
Then
Disp "GUESS NUM"
Disp "0-50"
End

If D=3
Then
Disp "GUESS NUM"
Disp "-500-500"
End

Lbl CY

Input G
If G>N
Disp "TOO LARGE"
If G<N
Disp "TOO SMALL"

C+1->C
G->L_1(C)

End

ClrHome
Disp "YOU WIN BIG BOY"

Pause

Lbl MM
Menu("END OF GAME","SVE GUESSES+EX",SG,"QUIT",QT,"PLAY AGAIN", PA)

Lbl SG
Disp L_1
Disp "SAVED TO L1"
Pause

Lbl QT
ClrTable
Disp "BYE CHUD"


