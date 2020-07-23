          global    _ft_read
_ft_read:
; ft_read(int fd, void *buf, size_t count);
    mov rax, 0x2000003
    syscall
    mov rax, 1
    ret
