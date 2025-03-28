INCLUDE Irvine32.inc
.data
num1 DWORD 1
num2 DWORD 2
num3 DWORD 3
result BYTE "Sum is : ",0
.code
main PROC
mov eax,0
push num1
push num2
push num3
pop edx
add eax,edx
pop edx
add eax,edx
pop edx
add eax,edx
mov edx, OFFSET result
call WriteString
call WriteInt

exit
main ENDP
END main
