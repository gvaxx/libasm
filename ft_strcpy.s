          global    _ft_strcpy
;char *strcpy(char * dst, const char * src);
_ft_strcpy:
    mov rax, 0
loop:
    mov dl, byte [rsi + rax]
    mov byte [rdi + rax], dl
    inc rax
    cmp byte [rsi + rax], 0
    je end
    jne loop
    
end:
    mov dl, byte [rsi + rax]
    mov byte [rdi + rax], dl
    mov rax, rdi
    ret