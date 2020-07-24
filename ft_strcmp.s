          global    _ft_strcmp

_ft_strcmp:
    mov rax,0
    mov rbx,0
    loop:
        mov byte dl,[rdi+rax]
        mov byte dh,[rsi+rax]
        inc rax
        cmp dl,0
        je equal
        cmp dl, dh
        je loop
        jl less
        jg greater
    equal:
        cmp dh,0
        jne less
        xor rax,rax
        ret
    less:
        mov rax,-1
        ret
    greater:
        mov rax,1
        ret