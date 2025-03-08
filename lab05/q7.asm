INCLUDE irvine32.inc
.data
arrayB BYTE 60, 70, 80
arrayW WORD 150, 250, 350
arrayD DWORD 600, 1200, 1800
sumB DWORD ?
sumW DWORD ?
sumD DWORD ?
.code
main PROC
mov esi,OFFSET arrayB
movzx eax,BYTE PTR [esi]
movzx ebx,BYTE PTR [esi+(2*TYPE arrayB)]
add eax,ebx
mov sumB,eax

mov esi,OFFSET arrayW
movzx eax,WORD PTR [esi]
movzx ebx, WORD PTR [esi+(2*TYPE arrayW)]
add eax,ebx
mov sumW,eax

mov esi,OFFSET arrayD
mov eax,DWORD PTR [esi]
mov ebx,DWORD PTR [esi+(2*TYPE arrayD)]
add eax,ebx
mov sumD,eax

mov eax,sumB
call WriteInt
call Crlf

mov eax,sumW
call WriteInt
call Crlf

mov eax,sumD
call WriteInt
call Crlf

exit
main ENDP
END main
