# setup

goto -1
<
store 'x' @-1
++++++++++++++++++++++++++++++++++++++++++
goto 0
>

store '0' @0
++++++++++++++++++++++++++++++++++++++++++++++++
goto 1
>
store '1' @1
+++++++++++++++++++++++++++++++++++++++++++++++++
goto 2
>
store '2' @2
++++++++++++++++++++++++++++++++++++++++++++++++++
goto 3
>
store '3' @3
+++++++++++++++++++++++++++++++++++++++++++++++++++
goto 4
>
store '4' @4
++++++++++++++++++++++++++++++++++++++++++++++++++++
goto 5
>
store '5' @5
+++++++++++++++++++++++++++++++++++++++++++++++++++++
goto 5
>
store '6' @6
++++++++++++++++++++++++++++++++++++++++++++++++++++++
goto 7
>
store '8' @8
+++++++++++++++++++++++++++++++++++++++++++++++++++++++
goto 9
>
store '9' @9
++++++++++++++++++++++++++++++++++++++++++++++++++++++++
goto 10
>
store 'e' @10
+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
goto 11
>
store 'u' @11
+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
goto 12
>
store 'r' @12
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
goto 13
>
store 'o' @13
+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
goto 14
>
store 'c' @14
+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
goto 15
>
store 'n' @15
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
goto 16
>
store 't' @16
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
goto 17
>
store 's' @17
+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
goto 18
>
store ':' @18
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
goto 19
>
store '\n' @19
++++++++++
goto 20
>
store ' ' @20
++++++++++++++++++++++++++++++++

## print 'euro: '
goto 10 print 'e' <<<<<<<<<<.
goto 11 print 'u' >.
goto 12 print 'r' >.
goto 13 print 'o' >.
goto 18 print ':' >>>>>.
goto 20 print ' ' >>.

## euro input
>

goto 22 input char >,
print input .
decrement by 48 to get decimal value ------------------------------------------------


## print '\ncents: '
goto 19 print '\n' <<<.
goto 14 print 'c' <<<<<.
goto 10 print 'e' <<<<.
goto 15 print 'n' >>>>>.
goto 16 print 't' >.
goto 17 print 's' >.
goto 18 print ':' >.
goto 20 print ' ' >>.


## cents input
goto 23 input char >>>,
print input .
decrement by 48 to get decimal value ------------------------------------------------

goto 24 input char >,
print input .
decrement by 48 to get decimal value ------------------------------------------------

print '\n' <<<<<. now @19



#####
MP: 19
euro 10^0 @22

counted 2 euros @25
counted 1 euros @26
zero cell for braking loops @27
####

goto 22 >>>

@0+1>>
@2 a++++5>
@3 b+++6>>
@5+<<<
@2 [[-1>]<<]
<
[>>>>>-<<<<
    a greater b#
@1]
>>
[->>-<<
    b greater a #
@3]
>>
[-
    a=b #
@5]