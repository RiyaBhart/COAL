include Irvine32.inc

.data

.code
main PROC
    mov eax, 7
    mov ebx, eax
    shl eax, 4
    add eax, ebx
    shl ebx, 2
    add eax, ebx
    call WriteInt
    call Crlf
    exit
main ENDP
END main
