INCLUDE Irvine32.inc
.data
arr1 WORD 0,1,2,3,4,5,6,7,8,9
arr2 WORD 10 DUP (?)
msg1 BYTE "Pushed onto stack",0
msg2 BYTE "Popped from stack into another array",0
msg3 BYTE "Array 2 is : ",0
.code
main PROC
mov esi,0
mov ecx,10
L1:
push arr1[esi]
add esi, TYPE arr1
loop L1
mov edx, OFFSET msg1
call WriteString
call Crlf

mov esi,0
mov ecx,10
L2:
pop dx
mov arr2[esi],dx
add esi, TYPE arr2
loop L2
mov edx, OFFSET msg2
call WriteString
call Crlf

mov esi,0
mov ecx,10
mov edx, OFFSET msg3
call WriteString
call Crlf
L3:
movzx eax,arr2[esi]
call WriteInt
call Crlf
add esi, TYPE arr2
loop L3

exit
main ENDP
END main
