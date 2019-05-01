r: *** Run this program with 211 bytes free after loading to force
r:     garbage collection.
r:
r:------ Create some static strings
c:$s1=STRING1
c:$s2=STRING2
r:------ Now create some dynamic strings:
r:       < 15+31+15+4 = 65 bytes used >
c:$s3=$s1+$s2
c:$s4=$s1+$s2+$s3
c:$s5=$s3
c:$s6=$s2
r:------ Force creation of deleted space by redefining a dynamic string
r:       < 65+7 = 72 bytes used, 15 in deleted space >
c:$s5=$s1
r:------ Now we'll reuse the deleted space for a smaller string
r:       < still 72 bytes used, 6 in deleted space >
c:$s6=*$s2*
r:------ Here we have a deleted space at the old $s6,
r:       and a reused space at the old $s5
t:'$s1' '$s2' '$s3' '$s4' '$s5' '$s6'
r:------ Test garbage collection here, and compare results with previous T
r:       < 66 bytes used after garbage collection >
i:
c:$gc=$s4+$s4
c:$gc=static
t:'$s1' '$s2' '$s3' '$s4' '$s5' '$s6'
r:------ Allocate one more string to ensure everything is OK
r:       < 66 + 9 = 75 bytes used, 72 + 9 = 81 bytes w/o garbage collection >
c:$s7=($s1)
t:'$s1' '$s2' '$s3' '$s4' '$s5' '$s6' '$s7'
e:
