NAME = libftprintf.a

CC = cc

CFILES = ft_printf.c\
ft_putchar_print.c\
ft_putstr_print.c\
ft_putnbrs_print.c\

HEADER_DIR = /

OBJS = $(CFILES:.c=.o)

FLAGS = -Wall -Werror -Wextra

all: $(NAME)

$(NAME): $(OBJS)
#	$(CC) $(CFLAGS) $(OBJS) -o $(NAME)
	ar rc $(NAME) $(OBJS)

clean:
	rm -f $(OBJS)

fclean: clean
	rm -f $(NAME)

re: fclean all

test: re
	@./$(NAME)

.PHONY = all clean fclean re test