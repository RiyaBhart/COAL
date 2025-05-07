INCLUDE Irvine32.inc

.data
string BYTE "123#123",0
nf     BYTE "not found",0
f      BYTE "found at ",0

.code
main PROC 
    call Scan_String
    call Crlf
    exit
main ENDP 

Scan_String PROC
    mov ecx, LENGTHOF string
    mov edi, OFFSET string 
    mov al, '#'
    cld
    repne scasb
    jnz not_found
    dec edi                
    mov ebx, LENGTHOF string
    sub ebx, ecx            
    mov eax, ebx
    mov edx, OFFSET f
    call WriteString
    call WriteDec
    call Crlf
    ret

not_found:
    mov edx, OFFSET nf
    call WriteString
    call Crlf
    ret
Scan_String ENDP

END main
