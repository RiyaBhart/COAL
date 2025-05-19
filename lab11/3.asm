include Irvine32.inc

.data

.code
main PROC
    mov ax, 1
    mov bx, 0

    bt ax, 0
    rol bx, 1
    rcl bx, 1

    mov ax, 1
    mov bx, 0

    shrd bx, ax, 1

    exit
main ENDP
END main
