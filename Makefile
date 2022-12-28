# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: guferrei <guferrei@student.42sp.org.br>    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/12/21 11:56:38 by guferrei          #+#    #+#              #
#    Updated: 2022/12/27 17:58:54 by guferrei         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

DOMAIN=guferrei.42.fr

COMPOSE=srcs/compose.yml

VOL_DIR=~/guferrei

# ===============================================================================

all: setup

setup: volumes
	sudo chmod a+w /etc/hosts && sudo cat /etc/hosts | grep ${DOMAIN} || \
	sudo echo "127.0.0.1 ${DOMAIN}" >> /etc/hosts
	docker-compose -f ${COMPOSE} up -d --build

down:
	docker-compose -f ${COMPOSE} down

clean: down
	sudo rm -rf ${VOL_DIR}

fclean: down
	docker system prune -a

volumes:
	mkdir -p ${VOL_DIR}/data/wordpress
	mkdir -p ${VOL_DIR}/data/db

re: fclean all
