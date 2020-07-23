SRC = ft_read.s ft_write.s ft_strcpy.s ft_strlen.s ft_strcmp.s ft_strdup.s
OBJ = $(SRC:.s=.o)
NAME = libasm.a
all: $(NAME)

$(NAME): $(OBJ)
		ar rc $(NAME) $(OBJ)
		ranlib $(NAME) 

%.o: %.s
	nasm -fmacho64 $<

clean:
	rm -f $(OBJ)

fclean: clean
	rm -f $(NAME)

re: fclean all
