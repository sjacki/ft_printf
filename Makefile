# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: sjacki <sjacki@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/11/21 20:21:38 by sjacki            #+#    #+#              #
#    Updated: 2021/01/20 05:54:03 by sjacki           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME 		= 		libftprintf.a
FLAG		=		-Wall -Wextra -Werror

SRC			=	base/ft_printf.c 					parser/parser.c \
				\
				\
				libft/ft_atoi.c		 				libft/ft_isdigit.c 						libft/ft_putnbr_fd.c \
				libft/ft_putstr_fd.c 				libft/ft_strchr.c  						libft/ft_strlen.c \
				libft/ft_putchar_fd.c 				libft/ft_putnbr_hex.c 					libft/ft_putnbr_hex_p.c\
				\
				\
				processor/ft_processor.c			processor/ft_processor_utils_d_i.c		processor/ft_processor_d_i.c \
				processor/ft_processor_u.c			processor/ft_processor_utils_u.c 		processor/ft_processor_c.c \
				processor/ft_processor_s.c			processor/ft_processor_percent.c 		processor/ft_processor_x.c \
				processor/ft_processor_p.c \

OBJ:= $(SRC:c=o)

%.o: %.c
	gcc $(FLAG) -c $< -o $@

all: $(NAME)

$(NAME): $(OBJ)
	ar rc $(NAME) $(OBJ)

clean:
	rm -f $(OBJ)

fclean: clean
	rm -f $(NAME)

re: fclean all
