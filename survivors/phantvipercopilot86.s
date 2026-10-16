; ====================================================
; PHANTOM VIPER
; A scanner/bomber with relocation and process spray
; CoreWars 8086 warrior
; AI -- Copilot used.
; ====================================================

; PHANTOM VIPER (ptr-free version)

;org 100h

start:
        mov     si, scanptr
        mov     di, bomb

main:
        mov     bx, [si]

       cmp word [bx], 9090h
        je      attack

        add     bx, 173
        and     bx, 0FFF0h
        mov     [si], bx

        jmp     main

attack:
        mov     byte [bx],   0FCh
		mov     byte [bx+1], 0E9h
		mov     byte [bx+2], 0CCh
		mov     byte [bx+3], 0CCh
		mov     byte [bx+4], 0F4h
		mov     byte [bx+5], 0F4h
		
        add     bx, 37
		mov     byte [bx+0], 0CCh
		mov     byte [bx+1], 0CCh

        inc     byte [gencount]
        test    byte [gencount], 7
        jnz     main

        call    relocate
        jmp     main

relocate:
        push    cs
        pop     ds

        mov     ax, [scanptr]
        add     ax, 2048
        and     ax, 0FFF0h

        mov     es, ax

        mov     si, start
        xor     di, di
        mov     cx, warrior_size

copy_loop:
        mov     al, [si]
        mov     es:[di], al
        inc     si
        inc     di
        loop    copy_loop

        push    es
        push    0
        retf

scanptr:
        dw      0531h

gencount:
        db      0

bomb:
        db      0CCh,0CCh,0CCh,0CCh

warrior_end:

warrior_size equ warrior_end - start

; ------------------------------------------------