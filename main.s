///Program Entry Point file
//
//Imports
.extern _num_to_ASCII

.global _main
_main:
// math
mov x3, #16
sub x3, x3, #7
// allocate memory
sub sp, sp, #16
mov x1, sp //point x1 at sp
//conv to ascii and assign memory
mov x0, x3
bl _num_to_ASCII
strb w0, [sp]
mov w0, #10
strb w0, [sp, #1]
// message length
mov x2, #2
//syscall number
mov x16, #4
mov x0, #1 //stdout
svc #0x80
//exit syscall
mov x16, #1
add sp, sp, #16 //free memory
mov x0, #0
svc #0x80
