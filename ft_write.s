          global    _ft_write
extern ___error
_ft_write:
    push rbx
; ft_read(int fd, void *buf, size_t count); 
    mov rax, 0x2000004
    syscall
    jc sys_er
    pop rdx
    ret
sys_er:
    mov rdx, rax
    call ___error
    pop rdx
    mov [rax], rdx
    mov rax, -1
    ret

