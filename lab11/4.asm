include Irvine32.inc

.data
val1 sdword 60
val2 sdword 20
val3 sdword 5

.code
main PROC
    mov eax, val2
    cdq
    idiv val3
    mov ebx, eax

    mov eax, val1
    cdq
    idiv val2
    mov ecx, eax

    imul ebx, ecx

    mov val1, ebx

    mov eax, val1
    call WriteInt
    call Crlf

    exit
main ENDP
END main
