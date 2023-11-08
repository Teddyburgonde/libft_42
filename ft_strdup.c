/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strdup.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: tebandam <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/10/30 12:23:08 by tebandam          #+#    #+#             */
/*   Updated: 2023/10/30 17:43:39 by tebandam         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

char	*ft_strdup(const char *s1)
{
	char		*tab;
	int			i;

	i = 0;
	tab = malloc(sizeof(char) * ft_strlen(s1) + 1);
	if (tab)
	{
		while (s1[i])
		{
			tab[i] = s1[i];
			i++;
		}
		tab[i] = '\0';
	}
	return ((char *)tab);
}
