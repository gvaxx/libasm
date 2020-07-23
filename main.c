
//int ft_write();
#include <fcntl.h>
#include <stdlib.h>
#include <sys/types.h>

int ft_read(int fd, void *buf, size_t count); 
ssize_t ft_write(int fildes, const void *buf, size_t nbyte);
char *ft_strcpy(char * dst, const char * src);
char *ft_strdup(const char *s1);
int ft_strlen(char *str);
int ft_strcmp(const char *s1, const char *s2);
void main()
{
    printf("%i\n", ft_strlen("ollarag"));
    printf("%i\n", ft_strcmp("olla2", "olla1"));
    char buff[10];
    int fd = open("hi.txt", O_RDONLY);
    ft_read(fd, buff, 5);
    buff[5] = 0;
    printf("%s\n", buff);
    ft_write(1, "hi you are prick\n", 17);
    char buf[] = "hello sunshine";
    char buf2[15];
    printf("%s\n", ft_strcpy(buf2, buf));
    printf("%s\n", ft_strdup("kapibara is cool"));
}