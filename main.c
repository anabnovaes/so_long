/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: apaula-b <apaula-b@student.42sp.org.br>    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/01/02 21:41:18 by apaula-b          #+#    #+#             */
/*   Updated: 2022/01/09 11:09:40 by apaula-b         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "so_long.h"

int main(void)
{
	void	*mlx;
	void 	*win;
	void	*floor;
	void	*wall;
	int		index;
	int		x;
	int		y;
	char	mapa[10] = {"100011001"};

	mlx = mlx_init();
	floor = mlx_xpm_file_to_image(mlx, "img/floor.xpm", &x, &y);
	wall = mlx_xpm_file_to_image(mlx, "img/wall.xpm", &x, &y);
	index = 0;
	win = mlx_new_window(mlx, 500, 50, "teste");
		while (index < 10)
	{
		if (mapa[index] == '1')
			mlx_put_image_to_window(mlx, win, wall, (50 * index), 0);
		else
			mlx_put_image_to_window(mlx, win, floor, (50 * index), 0);
		index++;
	}
	mlx_loop(mlx);

	//mlx_destroy_display(mlx_ptr);
	//free(mlx_ptr);
}
