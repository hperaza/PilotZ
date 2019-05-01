T:User subroutine call test
U:MYSUB
T:Should return here
T:Recursive call test
T:Should produce stack overflow
*RECURSE
U:RECURSE
T:This line never executed
E:
*MYSUB
T:Hello from subroutine
E:
