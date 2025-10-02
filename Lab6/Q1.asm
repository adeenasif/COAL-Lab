INCLUDE Irvine32.inc

.data
    msg1 BYTE "Welcome", 0
    msg2 BYTE "You should not see this line", 0
    msg3 BYTE "Goodbye", 0

.code
main PROC
    mov edx, OFFSET msg1
    call WriteString
    call Crlf

    jmp L3
    mov edx, OFFSET msg2
    call WriteString

    L3:
        mov edx, OFFSET msg3
        call WriteString

exit
main ENDP
END main
