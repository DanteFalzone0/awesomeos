	[org	0x7c00]

	mov	bx, hello
	call	print_nl
	call	print
	call	print_nl
	mov	bx, welcome
	call 	print
	call	print_nl

	jmp	$

%include "print.asm"

hello:
	db	"Hello, world!", 0
welcome:
	db	"Welcome to Dante's operating system, AwesomeOS.", 0

	times	510-($-$$) db 0
	dw	0xaa55