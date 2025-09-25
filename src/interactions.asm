global _start

; 
; CONSTANTS
;
SYS_READ    equ 0
SYS_WRITE   equ 1
SYS_EXIT    equ 60
STDIN       equ 0
STDOUT      equ 1
STDERR      equ 2

;
; Initialised data
;
SECTION .data
queryName       db  "What is your name? ", 10   ; char *
greetName       db  "Hello, "                   ; char *
queryName_len   equ $-queryName                 ; size_t
greetName_len   equ $-greetName                 ; size_t

;
; Reserved section for input data
;
SECTION .bss
name            resb  20

;
; Code Section
;
SECTION .text

_start:
    ; calls subroutines
    call    _queryName
    call    _getName
    call    _greetName
    call    _printName

    ; syscall(SYS_EXIT, <sys_read return value>);
    mov     rax, SYS_EXIT
    mov     rdi, STDIN
    syscall

_queryName:
    ; syscall(SYS_WRITE, STDOUT, queryName, queryName_len);
    mov     rax, SYS_WRITE
    mov     rdi, STDOUT
    mov     rsi, queryName
    mov     rdx, queryName_len
    syscall
    ret

_getName:
    ; syscall(???);
    mov     rax, SYS_READ
    mov     rdi, STDIN
    mov     rsi, name
    mov     rdx, 20
    syscall
    ret

_greetName:
    ; syscall(SYS_WRITE, STDOUT, greetName, greetName_len);
    mov     rax, SYS_WRITE
    mov     rdi, STDOUT
    mov     rsi, greetName
    mov     rdx, greetName_len
    syscall
    ret

_printName:
    ; syscall(SYS_WRITE, STDOUT, );
    mov     rax, SYS_WRITE
    mov     rdi, STDOUT
    mov     rsi, name
    mov     rdx, 20
    syscall
    ret
