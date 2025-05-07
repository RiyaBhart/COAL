Include irvine32.inc
.data
str1 byte "banana",0
str2 byte "apple",0
equal byte "strings are equal",0
greater byte "string1>string2",0
lesser byte "string1<string2",0
.code
main proc 
call iscompare
exit
main endp

iscompare proc
cld
mov esi, OFFSET str1
mov edi, OFFSET str2
mov ecx, lengthof str1
cmpsb
ja g
jb l
je e

g:
mov edx, offset greater
call writestring
ret

l:
mov edx,offset lesser
call writestring
ret

e:
mov edx, offset equal
call writestring
ret

iscompare endp

end main
