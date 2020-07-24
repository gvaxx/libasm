SRC = ft_read.s ft_write.s ft_strcpy.s ft_strlen.s ft_strcmp.s ft_strdup.s
MAIN = main.c
MAIN_O = main.o
OBJ = $(SRC:.s=.o)
NAME = libasm.a
all: $(NAME)

$(NAME): $(OBJ)
		ar rc $(NAME) $(OBJ)
		ranlib $(NAME)
		gcc -Wall -Wextra -Werror -L. -lasm $(MAIN)


%.o: %.s
	nasm -fmacho64 $<

test:
	./a.out ft_read
	./a.out ft_write
	./a.out ft_strcmp
	./a.out ft_strcpy
	./a.out ft_strlen
	./a.out ft_strdup
 
clean:
	rm -f $(OBJ)

fclean: clean
	rm -f $(NAME)

re: fclean all
