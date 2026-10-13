/*
 * collision.c
 *
 *  Created on: Oct 12, 2026
 *      Author: Winner-Emele
 */
//handle collision logic
#include "collision.h"
#include "Renderer.h"
void Collision() {
	for (int var = 0; var < 4; ++var) {
		int x = 11;
		for (int check = 0; check < 4; ++check) {
			if (Enemies[check].status == 1 && Bullets[var].status == 1) {
				if (Bullets[var].y >= position_value && Bullets[var].y <= (position_value + 10)) {
					if (Bullets[var].x>=x && Bullets[var].x<=(x+18) ) {
						Enemies[check].status = 0;
						Bullets[var].status = 0;
					}
				} else {
				}
			}
			x+=29;
		}
	}
}
