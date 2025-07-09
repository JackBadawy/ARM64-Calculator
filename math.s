//std out
mov x0, x3

// math
mov x3, #16
sub x3, x3, #7
//mov x3, .ascii x3 temparary/uncomment when done

//conv to ascii
add x3, x3, 48

// move stack pointer down 2 bytes to create 1 byte of space
sub sp, sp, #1
// move num to free byte above stack pointer
strb x3, [sp]

// lets print 16 - 5
mov x1, sp //this is what we'll print

// message length - should look into dynamically calculating
mov x2, #1

//syscall number
mov x8, #64

//syscall
svc #0

//exit syscall
mov x8, #93
add sp, sp, #1 //free memory
mov x0, #0
svc #0
