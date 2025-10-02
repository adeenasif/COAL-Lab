INCLUDE Irvine32.inc

.data
    arr1 BYTE 10,20,30,40
    arr2 WORD 100h,200h,300h
    arr3 DWORD 5 DUP(0)

.code
main PROC
    ; PART a
    mov eax, LENGTHOF arr1  ; eax = 4
    call WriteDec           
    call Crlf
    
    mov eax, LENGTHOF arr2  ; eax = 3
    call WriteDec
    call Crlf
    
    mov eax, LENGTHOF arr3 ; eax = 5
    call WriteDec
    call Crlf

    ; PART b and c
    mov ax, SIZEOF arr1  ; ax = 0004
    call dumpregs
    call Crlf

    mov bx, SIZEOF arr2  ; bx = 0006
    call dumpregs
    call Crlf
    
    mov cx, SIZEOF arr3 ; cx = 0020d (0014 in hexa)
    call dumpregs

exit
main ENDP
END main
