Include irvine32.inc
.data
msg1 BYTE "enter a number: ",0
msg2 BYTE "sum is : ",0
.code
main PROC
call SumN
exit
main ENDP

SumN PROC
mov edx, OFFSET msg1
call WriteString
call ReadInt
call Crlf
mov ebx,eax
mov ecx, ebx
mov edx,0
mov eax,0
L1:
add eax, edx
inc edx
cmp edx,ebx
jle L1

mov edx, OFFSET msg2
call WriteString
call WriteInt
ret
SumN ENDP

END main
