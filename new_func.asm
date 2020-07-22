          global    _new_fun

_new_fun: 
    mov rax, -1         

loop:
    inc rax
    mov dl, [rdi + rax]
    cmp dl, 0
    jnz loop
    ret