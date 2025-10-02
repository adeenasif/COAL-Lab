INCLUDE Irvine32.inc

.data
.code
main PROC
    ; PART a

    mov al, 7Fh
    add al, 1
    ; 7F + 1 = 80h (1000 0000)
    ; SF = 1, AF = 1, OF = 1 (Carry = 0, MSB = 1, 0 XOR 1 = 1)
    call dumpregs
    call Crlf

    ; PART b
    mov al, 7Fh
    sub al, 80h
    ; 7Fh - 80h = -1 (FF)
    ; SF = 1 (MSB = 1), PF = 1 (even 1s), CF = 1 (7F < 80), OF = 1 ()
    call dumpregs

exit
main ENDP
END main
