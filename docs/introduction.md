# Introduction

## Overview

Lorem ipsum

## Registers

`Registers` may be regarded a special kind of memory built into the CPU.
Being different from the actual memory, it of course does not offer much
storage capacity.
Instead, it is designed for extremely fast access.

In an `x86-64` architecture, there are many different kinds of registers,
that may, however, be divided into `general-purposes` and `specialized`
registers.

Of the `general-purpose` registers there are sixteen, each of them 64 bits wide
and for each lower byte "word and double-word can be addressed individually".

> **NOTE:**
>
> 1 word        := 2 bytes
> 1 double-word := 4 bytes

| register | lower byte | lower word | lower dword |
|----------|------------|------------|-------------|
| rax      | al         | ax         | eax         |
| rbx      | bl         | bx         | ebx         |
| rcx      | cl         | cx         | ecx         |
| rdx      | dl         | dx         | edx         |
| rsp      | spl        | sp         | esp         |
| rsi      | sil        | si         | esi         |
| rdi      | dil        | di         | edi         |
| rbp      | bpl        | bp         | ebp         |
| r8       | r8b        | r8w        | r8d         |
| r9       | r9b        | r9w        | r9d         |
| r10      | r10b       | r10w       | r10d        |
| r11      | r11b       | r11w       | r11d        |
| r12      | r12b       | r12w       | r12d        |
| r13      | r13b       | r13w       | r13d        |
| r14      | r14b       | r14w       | r14d        |
| r15      | r15b       | r15w       | r15d        |

Despite being regarded `general-purpose` registers it is not the case that any
register may be used by any one set of instructions.
Some instructions can only be used with certain registers.
Some registers have special meaning for certain instructions.

> **IMPORTANT**
>
> The registry `rsp` holds the stack pointer, used by instructions like `push`,
> `pop`, `call`, and `ret`.
>
> Registries `rsi` and `rdi` serve as source and destination index for "string
> manipulation" instructions.
>
> Multiplication instructions required one of the multiplier values to be in 
> the register `rax`, and write the result into the pair of registers `rax` and
> `rdx`.

Two additional registers are important:

* The register `rip` holds addresses of the next instructions in the sequecence
  of execution, such as `call` and `jmp`.
* the register `rflags` holds binary flags indicating flags about the program's
  state, e.g. status of last operation being (a) less, (b) equal, or (c) 
  greater than 0.

Most of the other register are used for SIMD (`Single Instruction, Multiple 
Data`) or floating-point instructions.



