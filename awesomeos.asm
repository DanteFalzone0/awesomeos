; Assemble as follows:
;	nasm -f bin awesomeos.asm -o awesomeos.bin
; or:
;	nasm -f bin awesomeos.asm -o awesomeos.iso
;
; You can run this from a USB drive; install it from the .iso file as follows:
;	sudo dd if=<filepath>/awesomeos.iso of=dev/<mount point for your usb>
;

	[org    0x7c00]

        mov     ax, 0
        mov     ds, ax ; stackoverflow says this must be set to zero
        mov     bx, hello
        call    print_nl
        call    print
        call    print_nl
        mov     bx, welcome
        call    print
        call    print_nl

        jmp     $

%include "print.asm"

hello:
        db      "Hello, world!", 0
welcome:
        db      "Welcome to Dante's operating system, AwesomeOS.", 0

        times   510-($-$$) db 0
        dw      0xaa55
