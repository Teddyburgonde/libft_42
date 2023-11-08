/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_atoi.c                                          :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: tebandam <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/10/30 12:21:59 by tebandam          #+#    #+#             */
/*   Updated: 2023/11/08 13:02:38 by tebandam         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

static int	is_whitespace(char c)
{
	if ((c >= 9 && c <= 13) || c == 32)
		return (1);
	return (0);
}

int	ft_atoi(const char *str)
{
	int	i;
	int	a;
	int	sign;

	i = 0;
	a = 0;
	sign = 1;
	while (is_whitespace(str[i]))
		i++;
	while (str[i] == '+' || str[i] == '-')
	{
		if (str[i + 1] == '+')
			return (0);
		if (str[i] == '-')
			sign *= -1;
		if (str[i + 1] == '-')
			return (0);
		i++;
	}
	while (str[i] >= '0' && str[i] <= '9')
	{
		a = a * 10 + (str[i] - '0');
		i++;
	}
	return (a * sign);
}
