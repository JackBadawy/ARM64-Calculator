///Program Entry Point file
//
//Imports
.extern num_to_ASCII

.global _start
_start:
// math
mov x3, #16
sub x3, x3, #7
// allocate memory
sub sp, sp, #1
mov x1, sp //point x1 at sp
//conv to ascii and assign memory
mov x0, x3
bl num_to_ASCII
strb x0, [sp]
// message length
mov x2, #1
//syscall number
mov x8, #64
mov x0, #1 //stdout
svc #0
//exit syscall
mov x8, #93
add sp, sp, #1 //free memory
mov x0, #0
svc #0
