INCLUDE Irvine32.inc

.data
input BYTE "Enter a number : ",0
output BYTE "This is square of the input number : ",0

.code
main PROC
    call LocalSquare
    call Crlf
    exit
main ENDP

LocalSquare PROC
LOCAL value :DWORD
enter 4,0
mov edx, OFFSET input
call WriteString
call ReadInt
mov value,eax
mul eax
mov edx, OFFSET output
call WriteString
call WriteInt
leave
    ret
LocalSquare ENDP

END main
