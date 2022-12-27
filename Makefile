# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: guferrei <guferrei@student.42sp.org.br>    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/12/21 11:56:38 by guferrei          #+#    #+#              #
#    Updated: 2022/12/27 10:02:50 by guferrei         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

all: setup

setup: volumes
	sudo chmod a+w /etc/hosts && sudo cat /etc/hosts | grep guferrei.42.fr || \
	sudo echo "127.0.0.1 guferrei.42.fr" >> /etc/hosts
	docker-compose -f srcs/compose.yml up -d --build

down:
	docker-compose -f srcs/compose.yml down

volumes:
	mkdir -p ~/guferrei/data/wordpress
	mkdir -p ~/guferrei/data/db

