INCLUDE irvine32.inc

.data
array1 BYTE 10, 20, 30, 40
array2 BYTE 4 DUP (?)

.code
main PROC
    mov esi,3
    mov edi,0
    mov al,[array1+esi]
    mov [array2+edi],al
    dec esi
    inc edi
    mov al,[array1+esi]
    mov [array2+edi],al
    dec esi
    inc edi
    mov al,[array1+esi]
    mov [array2+edi],al
    dec esi
    inc edi
    mov al,[array1+esi]
    mov [array2+edi],al

    movzx eax,[array2+esi]
    call WriteInt
    call Crlf
    inc esi
    movzx eax,[array2+esi]
    call WriteInt
    call Crlf
    inc esi
    movzx eax,[array2+esi]
    call WriteInt
    call Crlf
    inc esi
    movzx eax,[array2+esi]
    call WriteInt
    call Crlf
   
    call DumpRegs
    exit
main ENDP
END main
