// to conv num to ascii i need to
//take each digit and add 48 to it, this works for 0-9

//single dig
.global num_to_ASCII
add x0, x0, #48 
ret

//multi-dig