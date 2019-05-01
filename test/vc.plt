R:Vowels and Constanants Version 83.03.07
R:By Kurt Albrecht

ch:
T:Vowels and Constanants
:By Kurt Albrecht
:
:My Name's Heath, whats yours?
A:$NAME
T:
:$name, I'm going to ask you to name some of the vowels and consonants
:of the alphabet.

C:$now=first

*BEGIN
T:
:Which would you like to try $now, vowels or consonants?
:Just press either V or C.
C:$now=now
I:
M:V,C
TN:I'm not sure I understand you. Please re-phrase your answer.
JN:BEGIN
M:V
JN:CONSONANTS

*VOWELS
T:
:$name, please name a vowel.
A:$ANSWER
M:A,E,I,O,U,Y
UY:CORRECT
TN:I'm sorry, $ANSWER is not a vowel.
J:CONTINUE

*CONSONANTS
T:
:Try and name a consonant $name.
A:$ANSWER
M:B,C,D,F,G,H,J,K,L,M,N,P,Q,R,S,T,V,W,X,Y,Z
UY:CORRECT
TN:Nope, $ANSWER is not a consonant.
J:CONTINUE

*CORRECT
T:That's right $name!!!
E:

*CONTINUE
T:Do you want to continue (Just press either Y or N)?
I:
M:Y,N
TN:I'm sorry $name, But I don't understand you.
JN:CONTINUE
M:Y
JY:BEGIN
T:Well I hope you enjoyed our little game $name, so long.
