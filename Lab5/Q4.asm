INCLUDE Irvine32.inc

.data
    arrayB BYTE 11h, 22h, 33h
    arrayW WORD 4444h, 5555h, 6666h

.code
main PROC
    ; PART a
    mov esi, OFFSET arrayB
    mov al, [esi]   ; al = 00000011h
    call dumpregs           
    call Crlf

    inc esi
    mov al, [esi]   ; al = 00000022h
    call dumpregs
    call Crlf
    
    inc esi
    mov al, [esi]   ; al = 00000033h
    call dumpregs
    call Crlf

    ; PART b 
    mov esi, OFFSET arrayW
    mov ax, [esi]   ; ax = 00004444h
    call dumpregs           
    call Crlf

    add esi, 2
    mov ax, [esi]   ; ax = 00005555h
    call dumpregs
    call Crlf
    
    add esi, 2
    mov ax, [esi]   ; ax = 00006666h
    call dumpregs

    ; Part c
    ; BYTE holds 1 byte in memory while word holds 2 bytes
    ; Therefore, to move to next element in byte, increment the address by 1
    ; and to move to next elemet in word, increment the address by 2
    
exit
main ENDP
END main
