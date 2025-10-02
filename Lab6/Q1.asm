INCLUDE Irvine32.inc

.data
    msg1 BYTE "Welcome", 0
    msg2 BYTE "You should not see this line", 0
    msg3 BYTE "Goodbye", 0

.code
main PROC
    mov edx, OFFSET msg1    ; stores first string
    call WriteString        ; prints first string
    call Crlf               ; new line

    jmp L3               ; unconditional jump
    mov edx, OFFSET msg2 ; gets skipped
    call WriteString     ; gets skipped

    L3:
        mov edx, OFFSET msg3  ; stores third string
        call WriteString      ; prints third string

exit
main ENDP
END main
