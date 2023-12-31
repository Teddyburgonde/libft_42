# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: tebandam <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/10/30 13:05:47 by tebandam          #+#    #+#              #
#    Updated: 2023/11/09 10:45:51 by tebandam         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME=libft.a

SRCS=ft_isalpha.c ft_isdigit.c ft_isalnum.c ft_isascii.c ft_isprint.c ft_strlen.c ft_memset.c \
	ft_bzero.c ft_memcpy.c ft_memmove.c ft_strlcpy.c ft_strlcat.c ft_toupper.c ft_tolower.c \
	ft_strchr.c ft_strrchr.c ft_strncmp.c ft_memchr.c \
	ft_memcmp.c ft_strnstr.c ft_atoi.c ft_calloc.c ft_strdup.c \
	ft_substr.c ft_strjoin.c ft_strtrim.c ft_split.c ft_itoa.c ft_strmapi.c \
	ft_striteri.c ft_putchar_fd.c ft_putstr_fd.c ft_putendl_fd.c ft_putnbr_fd.c 

BONUS= ft_lstnew_bonus.c ft_lstadd_back_bonus.c ft_lstadd_front_bonus.c \
		ft_lstclear_bonus.c ft_lstdelone_bonus.c \
	ft_lstiter_bonus.c ft_lstlast_bonus.c ft_lstmap_bonus.c ft_lstsize_bonus.c 

OBJS=$(SRCS:.c=.o)

OBJS_BONUS=$(BONUS:.c=.o)

RM=rm -f

CC= cc
ARRC=ar -rc
CFLAGS=-Wall -Wextra -Werror

ifdef value
	SRCS+=$(BONUS)
endif

all: $(NAME)

$(NAME) : $(OBJS) 
	$(ARRC) $(NAME) $(OBJS)

bonus: 
	@make value=1;

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@ 

clean: 
	$(RM) $(OBJS) $(OBJS_BONUS)

fclean: clean
	$(RM) $(NAME)

re: fclean $(NAME)
