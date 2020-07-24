          global    _ft_write
extern ___error
_ft_write:
    push rbx
    mov rax, 0x2000004
    syscall
    jc sys_er
    pop rbx
    ret
sys_er:
    mov rdx, rax
    call ___error
    pop rbx
    mov [rax], rdx
    mov rax, -1
    ret

