# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: apaula-b <apaula-b@student.42sp.org.br>    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/01/02 20:04:26 by apaula-b          #+#    #+#              #
#    Updated: 2022/01/02 20:10:57 by apaula-b         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #


NAME = so_long

CC= gcc

HEADER = ft_printf.h

SRC = ./src/

#flags to compile
FLAGS = -Wall -Wextra -Werror

FILES = main.c

OBJ = $(FILES:.c=.o) 

#1st rule to execute
all: $(NAME)

#rule name
$(NAME): $(OBJ) $(HEADER)
 			gcc ${FLAGS} -std=gnu99 -I. -g ${OBJ} -lm -lGLEW -lglfw -lGL \
    minilibx/libmlx_Linux.a -o ${NAME}

$(OBJ): $(FILES)
		$(CC) $(FLAGS) -c $(FILES) $(SRC_FILES)

#the flag -s is for not run the message of changing directories
$(MLX):
	@make -s -C ./minilibx

clean:
		rm -rf *.o

fclean: clean
		rm -rf *.a

re: fclean all

bonus: all

mlx: ${MLX}

.PHONY: all clean fclean re


