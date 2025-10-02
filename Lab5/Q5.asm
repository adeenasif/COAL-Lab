INCLUDE Irvine32.inc

.data
    arrayD DWORD 1000h,2000h,3000h,4000h

.code
main PROC
    ; PART a
    mov esi, 1
    mov eax, arrayD[esi * TYPE arrayD]  ; eax = 2000h
    call WriteHex     
    call Crlf
    
    ; PART b
    mov esi, 3
    mov ebx, arrayD[esi * TYPE arrayD]  ; ebx = 4000h
    call dumpregs

    ; PART c
    ; TYPE operator is used to automatically calculate the correct offset
exit
main ENDP
END main
