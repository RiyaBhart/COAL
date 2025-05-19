include Irvine32.inc

.data
num1 dq 1234567890123456789
num2 dq 987654321098765432
result dq 0

.code

Extended_Add PROC
    mov eax, [esi]
    add eax, [edi]
    mov [edx], eax
    mov eax, [esi+4]
    adc eax, [edi+4]
    mov [edx+4], eax
    ret
Extended_Add ENDP

main PROC
    mov esi, OFFSET num1
    mov edi, OFFSET num2
    mov edx, OFFSET result
    call Extended_Add
    exit
main ENDP

END main
