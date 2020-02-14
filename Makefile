NAME	= asm.a

SRC		= ft_strlen.s

NASM = ~/.brew/Cellar/nasm/2.11.08/bin/nasm

SRCDIR	= ./srcs/

INCDIR	= ./includes/

CC_FLAG = -Wall -Werror -Wextra

MAIN	= main_test

FLAG	= -f macho64

SRCS	= ft_findchar.s ft_atoi_base.s ft_strlen.s ft_create_elem.s ft_list_push_front.s ft_list_size.s\
 ft_list_sort.s

OBJS	= $(SRCS:.s=.o)

.SILENT:

all: $(NAME)

$(NAME) : $(OBJS)
	ar rc asm.a ft_findchar.o ft_atoi_base.o ft_strlen.o ft_create_elem.o ft_list_push_front.o ft_list_size.o\
	 ft_list_sort.o
	ranlib $(NAME)
	gcc asm.a main.c

%.o: %.s
	 nasm $(FLAG) $<

clean:
	rm -rf $(OBJS)

fclean: clean
	rm -rf $(NAME)
	rm -rf main_test

re: fclean all
