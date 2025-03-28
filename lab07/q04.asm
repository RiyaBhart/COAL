INCLUDE Irvine32.inc
.data 
rows DWORD 5
star BYTE "*", 0
space BYTE " ", 0

.code
main PROC

mov ecx, rows
mov ebx, 1

outer:
    mov edx, rows
    sub edx, ebx
    call printspaces  

    mov edx, ebx
    call printstars    

    call Crlf         
    inc ebx
    cmp ebx, rows
    jle outer         

exit
main ENDP

printspaces PROC
    mov ecx, edx
L1:
    cmp ecx, 0
    jle endspace
    mov edx, OFFSET space
    call WriteString
    loop L1
endspace:
    ret
printspaces ENDP

printstars PROC
    mov ecx, edx
L2:
    cmp ecx, 0
    jle endstar
    mov edx, OFFSET star
    call WriteString
    loop L2
endstar:
    ret
printstars ENDP

END main
