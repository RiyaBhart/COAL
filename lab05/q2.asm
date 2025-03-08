Include irvine32.inc
.data
arr BYTE 61,43,11,52,25
arr2 BYTE 5 DUP(?)
msg BYTE "sorted array: ",0
.code
main PROC
mov al,[arr+2]
mov [arr2],al
mov al,[arr+4]
mov [arr2+1],al
mov al,[arr+1]
mov [arr2+2],al
mov al,[arr+3]
mov [arr2+3],al
mov al,[arr]
mov [arr2+4],al
mov edx, OFFSET msg  
call WriteString
movzx eax, BYTE PTR [arr2] 
call WriteDec
call Crlf
movzx eax, BYTE PTR [arr2+1]  
call WriteDec
call Crlf
movzx eax, BYTE PTR [arr2+2]  
call WriteDec
call Crlf
movzx eax, BYTE PTR [arr2+3]  
call WriteDec
call Crlf
movzx eax, BYTE PTR [arr2+4] 
call WriteDec
call Crlf
call DumpRegs
exit
main endp
end main
