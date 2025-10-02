INCLUDE Irvine32.inc

.data
.code
main PROC
    mov ecx, 11      ; counter (for loop 11 times 5->15)
    mov eax, 5       ; starting value = 5

    printNums:
        call WriteInt  ; prints num
        call Crlf      ; new line
        inc eax        ; increments num
        loop printNums

exit
main ENDP
END main
