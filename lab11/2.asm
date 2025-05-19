include Irvine32.inc

.data

.code
main PROC
    mov ax, 0FF80h
    mov eax, ax
    sar eax, 16
    shl eax, 16
    or eax, ax
    call WriteInt
    call Crlf
    exit
main ENDP
END main
