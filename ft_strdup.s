          global    _ft_strdup
;char *strdup(const char *s1);
extern _malloc
extern _ft_strlen
extern _ft_strcpy
_ft_strdup:
    call _ft_strlen
    push rdi
    inc rax
    mov rdi, rax
    call _malloc
    cmp rax, 0
    je end
    mov rdi, rax
    pop rsi
    call _ft_strcpy
    ret
    
end:
    ret