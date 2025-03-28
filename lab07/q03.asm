INCLUDE Irvine32.inc
.data 
arr1 DWORD 1,2,3,4,5
arr2 DWORD 1,2,3,4,5
sum1 DWORD ?
sum2 DWORD ?
resultmsg BYTE "sum of both arrays is : ",0
.code
main PROC 
call p1
call p2
call resultp
exit
main ENDP 

p1 PROC
mov ecx,5
mov esi,0
mov eax,0
L1:
add eax, arr1[esi]
add esi,TYPE arr1
loop L1
mov sum1,eax
ret
p1 ENDP

p2 PROC
mov ecx,5
mov esi,0
mov eax,0
L2:
add eax, arr2[esi]
add esi,TYPE arr2
loop L2
mov sum2,eax
ret
p2 ENDP

resultp PROC
mov edx,OFFSET resultmsg
call WriteString
mov eax,sum1
add eax,sum2
call WriteInt
ret
resultp ENDP


END main
