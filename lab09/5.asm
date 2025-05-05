INCLUDE Irvine32.inc

.data
    array DWORD 5, 2, 9, 1, 6, 3
    arraySize DWORD 6
    msgUnsorted BYTE "Unsorted array:", 0
    msgSorted   BYTE "Sorted array:", 0

.code
main PROC
    ; Display original array
    mov edx, OFFSET msgUnsorted
    call WriteString
    call Crlf

    lea esi, array
    mov ecx, arraySize
    call DisplayArray

    ; Push parameters to stack
    push arraySize
    lea eax, array
    push eax

    ; Call BubbleSort
    call BubbleSort

    ; Display sorted array
    call Crlf
    mov edx, OFFSET msgSorted
    call WriteString
    call Crlf

    lea esi, array
    mov ecx, arraySize
    call DisplayArray

    exit
main ENDP

;---------------------------------------------
; Procedure: BubbleSort
; Receives:
;   [ESP+4] = address of array
;   [ESP+8] = size of array
;---------------------------------------------
BubbleSort PROC
    push ebp
    mov ebp, esp

    mov esi, [ebp + 8]    ; pointer to array
    mov ecx, [ebp + 12]   ; number of elements

    dec ecx               ; outer loop: n-1 passes
outer_loop:
    push ecx
    mov edi, 0            ; index

inner_loop:
    mov eax, [esi + edi*4]
    mov ebx, [esi + edi*4 + 4]
    cmp eax, ebx
    jle skip_swap

    ; swap [esi + edi*4] and [esi + edi*4 + 4]
    mov [esi + edi*4], ebx
    mov [esi + edi*4 + 4], eax

skip_swap:
    inc edi
    mov eax, [ebp + 12]
    dec eax
    cmp edi, eax
    jl inner_loop

    pop ecx
    loop outer_loop

    pop ebp
    ret 8
BubbleSort ENDP

;---------------------------------------------
; DisplayArray: prints array elements from ESI, count in ECX
;---------------------------------------------
DisplayArray PROC
    push ecx
    push esi

print_loop:
    mov eax, [esi]
    call WriteInt
    call Crlf
    add esi, 4
    loop print_loop

    pop esi
    pop ecx
    ret
DisplayArray ENDP

END main
