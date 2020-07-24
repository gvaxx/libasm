          global    _ft_read
extern ___error

_ft_read:
; ft_read(int fd, void *buf, size_t count);
    push rbx
    mov rax, 0x2000003
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

