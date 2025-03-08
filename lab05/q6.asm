INCLUDE irvine32.inc
.data
arr DWORD 100,20,30,15,10
finalResult DWORD ?
.code
main PROC
mov esi,OFFSET arr
mov eax,[esi]
add esi,4
sub eax,[esi]
add esi,4
sub eax,[esi]
add esi,4
sub eax,[esi]
add esi,4
sub eax,[esi]
mov finalResult,eax
mov eax,finalResult
call WriteInt
call Crlf
call DumpRegs
exit
main ENDP
END main
