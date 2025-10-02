INCLUDE Irvine32.inc

.data
    msg1 BYTE "*", 0
    rows DD 5       

.code
main PROC
    
    mov ecx, rows  ; ecx = rows = 5 (outer loop)
    mov ebx, 1     ; ebx = 1 (inner loop starts from 1)
    L1:
        mov rows, ecx   ; save ecx (5)
        mov ecx, ebx    ; for inner loop
        L2:
            mov al, msg1     ; stores *
            call WriteChar   ; prints *
            loop L2

        call Crlf      ; newline after each row
        inc ebx        ; inc inner loop (next row)
        mov ecx, rows  ; restore ecx for outer loop
        loop L1

exit
main ENDP
END main
