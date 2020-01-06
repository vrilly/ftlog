# **************************************************************************** #
#                                                                              #
#                                                         ::::::::             #
#    Makefile                                           :+:    :+:             #
#                                                      +:+                     #
#    By: tjans <tjans@student.codam.nl>               +#+                      #
#                                                    +#+                       #
#    Created: 2020/01/06 19:31:38 by tjans         #+#    #+#                  #
#    Updated: 2020/01/06 19:37:19 by tjans         ########   odam.nl          #
#                                                                              #
# **************************************************************************** #

CFLAGS	= -Wall -Wextra -Werror -I libft/out

TARGET	= ftlog.a
SRCS	= ftlog.c

all: $(TARGET)

$(TARGET): ftlog.c ftlog.h
	@$(MAKE) -C libft
	@$(CC) $(CFLAGS) -c -o ftlog.o ftlog.c
	@$(AR) rcs $@ ftlog.o

clean:
	@$(RM) ftlog.o

fclean: clean
	@$(MAKE) -C libft fclean
	@$(RM) ftlog.a

re: fclean all
