Include irvine32.inc
.data
val1 SDWORD 8000
.code
main PROC
ADD val1,1
mov eax,val1
call DumpRegs
exit
main endp
end main
