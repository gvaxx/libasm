          global    _ft_strcmp

_ft_strcmp:
    mov rax,0
    mov rbx,0
    strcmp_loop:
        mov byte dl,[rdi+rax]
        mov byte dh,[rsi+rax]
        inc rax
        cmp dl,0
        je strcmp_end_0
        cmp dl, dh
        je strcmp_loop
        jl strcmp_end_1
        jg strcmp_end_2
    strcmp_end_0:
        cmp dh,0
        jne strcmp_end_1
        xor rax,rax
        ret
    strcmp_end_1:
        mov rax,1
        ret
    strcmp_end_2:
        mov rax,-1
        ret