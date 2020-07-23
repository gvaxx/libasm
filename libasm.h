/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   libasm.h                                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: mcaptain <mcaptain@msk-school21.ru>        +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/07/23 18:18:42 by mcaptain          #+#    #+#             */
/*   Updated: 2020/07/23 18:18:45 by mcaptain         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <fcntl.h>
#include <stdlib.h>
#include <sys/types.h>

int ft_read(int fd, void *buf, size_t count); 
ssize_t ft_write(int fildes, const void *buf, size_t nbyte);
char *ft_strcpy(char * dst, const char * src);
char *ft_strdup(const char *s1);
int ft_strlen(char *str);
int ft_strcmp(const char *s1, const char *s2);