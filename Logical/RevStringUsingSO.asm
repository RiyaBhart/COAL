INCLUDE Irvine32.inc
.data
str1 BYTE 'hello world'
reversed BYTE LENGTHOF str1 DUP(?)
.code
main PROC
push OFFSET str1
push LENGTHOF str1
call Str_Reverse
exit
main ENDP
Str_Reverse PROC
push ebp
mov ebp, esp
mov esi, [ebp+12] 
mov ecx, [ebp+8]
mov edi, OFFSET reversed 
add esi, ecx
dec esi
call crlf
L1:
std
lodsb
cld
stosb
loop L1
mov edx, OFFSET reversed 
call crlf
call writestring 
call crlf
pop ebp
ret
Str_Reverse ENDP 
END main
