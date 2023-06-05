# setup

store 'e' at 0
+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
goto 1
>
store 'u' at 1
+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
goto 2
>
store 'r' at 2
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
goto 3
>
store 'o' at 3
+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
goto 4
>
store 'c' at 4
+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
goto 5
>
store 'n' at 5
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
goto 6
>
store 't' at 6
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
goto 7
>
store 's' at 7
+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
goto 8
>
store ':' at 8
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
goto 9
>
store '\n' at 9
++++++++++
goto 10
>
store '\s' at 10
++++++++++++++++++++++++++++++++

## print 'euro: '
goto 0 print 'e' <<<<<<<<<<.
goto 1 print 'u' >.
goto 2 print 'r' >.
goto 3 print 'o' >.
goto 8 print ':' >>>>>.
goto 10 print '\s' >>.

## euro input
goto 11 input char >,
print input .
decrement by 48 to get decimal value ------------------------------------------------

goto 12 input char >,
print input .
decrement by 48 to get decimal value ------------------------------------------------


## print '\ncents: '
goto 9 print '\n' <<<.
goto 4 print 'c' <<<<<.
goto 0 print 'e' <<<<.
goto 5 print 'n' >>>>>.
goto 6 print 't' >.
goto 7 print 's' >.
goto 8 print ':' >.
goto 10 print '\s' >>.


## cents input
goto 13 input char >>>,
print input .
decrement by 48 to get decimal value ------------------------------------------------

goto 14 input char >,
print input .
decrement by 48 to get decimal value ------------------------------------------------


#####
MP: 14
euro 10^1 at 11
euro 10^0 at 12
cents 10^1 at 13
cents 10^0 at 14
####

