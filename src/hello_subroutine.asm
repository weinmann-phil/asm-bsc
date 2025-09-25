global _start

;
; CONSTANTS
;
SYS_WRITE   equ 1
SYS_EXIT    equ 60
STDOUT      equ 1

;
; Initialised data
;
SECTION .data
hello       db "Hello from the subroutine!", 10 ; char *
hello_len   equ $-hello                         ; size_t

;
; Code Section
;
SECTION .text

_start:
    ; jmp(_printHello);
    call    _printHello

    ; syscall(SYS_EXIT, <sys_write return value> - hello_len);
    mov     rax, SYS_EXIT
    pop     rdi,
    sub     rdi, hello_len
    syscall

_printHello:
    ; syscall(SYS_WRITE, STDOUT, hello, hello_len);
    mov     rax, SYS_WRITE
    mov     rdi, STDOUT
    mov     rsi, hello
    mov     rdx, hello_len
    syscall
    ret
