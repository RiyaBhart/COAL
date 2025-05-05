INCLUDE Irvine32.inc

.data
    result BYTE "1x2x3 = ", 0

.code
main PROC
    push 3
    push 2
    push 1
    call ThreeProd
    call Crlf
    exit
main ENDP

ThreeProd PROC
    push ebp
    mov ebp, esp

    mov eax, [ebp + 12]    
    mov ebx, [ebp + 8]    
    imul eax, ebx         

    mov ecx, [ebp + 16]   
    imul eax, ecx          

    mov edx, OFFSET result
    call WriteString
    call WriteInt

    pop ebp
    ret 12                 
ThreeProd ENDP

END main
