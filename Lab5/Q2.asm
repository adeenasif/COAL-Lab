INCLUDE Irvine32.inc

.data
    myByte BYTE 12h
    myWord WORD 1234h
    myDword DWORD 12345678h 

.code
main PROC
    ; PART a
    mov esi, OFFSET myByte  ; esi = address of 12h
    call dumpregs           
    call Crlf
    
    mov esi, OFFSET myWord  ; esi = address of 1234h
    call dumpregs
    call Crlf
    
    mov esi, OFFSET myDword ; esi = address of 12345678h
    call dumpregs
    call Crlf

    ; PART b
    mov ax, WORD PTR [myDWord+2] ; ax = 1234h
    call dumpregs
    call Crlf

    ; PART c
    mov bx, TYPE myByte  ; bx = 0001
    call dumpregs
    call Crlf

    mov bx, TYPE myWord  ; bx = 0002
    call dumpregs
    call Crlf
    
    mov bx, TYPE myDword ; bx = 0004
    call dumpregs

exit
main ENDP
END main
