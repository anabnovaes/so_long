# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: apaula-b <apaula-b@student.42sp.org.br>    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/01/09 11:04:35 by apaula-b          #+#    #+#              #
#    Updated: 2022/01/09 11:13:00 by apaula-b         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #


NAME = so_long

CC= gcc

HEADER = so_long.h

SRC = ./src/

# flags to compile
FLAGS = -Wall -Wextra -Werror -fsanitize=address

FILES = main.c

# flags to run with minilibx
MINILIBX_FLAGS = -Imlx -lX11 -lXext

LIBS = minilibx/libmlx_Linux.a

OBJ = $(FILES:.c=.o)

#1st rule to execute
all: $(NAME)

#rule name
$(NAME): $(HEADER)
	gcc $(FILES) $(LIBS) $(MINILIBX_FLAGS) -o $(NAME)

clean:
		rm -rf *.o

fclean: clean
		rm -rf *.a

re: fclean all

.PHONY: all clean fclean re


