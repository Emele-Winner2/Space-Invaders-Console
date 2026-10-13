/*

 Renderer.c
 *

 Created on:
 Oct 11, 2026

 Author: Winner-Emele
 */

#include "Renderer.h"
#include "collision.h"
#include "Sprites.h"
#include "ssd1306.h"
#include "MPU_6050.h"
#include "ssd1306_fonts.h"
volatile int position_value = 2;
struct Player one;
struct Player *point = &one;
struct Enemy_state Enemies[4] = { { 1, 2 }, { 1, 2 }, { 1, 2 }, { 1, 2 } };
struct Bullet_state Bullets[4] = { { 0, 0, 55 }, { 0, 0, 55 }, { 0, 0, 55 }, {
		0, 0, 55 } };
void Default_Render() {
	ssd1306_Init();
	int gyro = 0;
	int accel = 0;
	MPU6050_Init(&hi2c1, gyro, accel);
	point->status = 1;
	point->x = 55; // Start centered
	ssd1306_Fill(Black);
	ssd1306_DrawBitmap(point->x, 48, player_ship, 18, 10, White);

	int x = 11;
	for (int var = 0; var < 4; ++var) {
		if (Enemies[var].status == 1) {
			ssd1306_DrawBitmap(x, 2, enemy, 18, 10, White);
			x += 29;
		}
	}
	ssd1306_UpdateScreen();
}

void Render_Tilt() {
	int gyro = 0;
	uint8_t raw_data[14];
	int roll = MPU_6050_POSITION(&hi2c1, raw_data, gyro);
	if (roll > 4 && point->x > 0) {
		point->x -= 3;
	} else if (roll < -4 && point->x < 110) {
		point->x += 2;
	}
}
void Renderer_Frame() {
	if (position_value < 60) {
		ssd1306_Fill(Black);
		Render_Tilt();
		if (point->status) {
			ssd1306_DrawBitmap(point->x, 48, player_ship, 18, 10, White);
		}
		Bullet_Shot();
		int x = 11;
		for (int var = 0; var < 4; ++var) {
			if (Enemies[var].status == 1 && position_value > 0) {
				ssd1306_DrawBitmap(x, position_value, enemy, 18, 10, White);
			}
			x += 29;
		}
		Collision();
		ssd1306_UpdateScreen();
	} else if (position_value >= 60) {
		for (int var = 0; var < 4; ++var) {
			if (Enemies[var].status == 1) {
				ssd1306_WriteString("You Lose", Font_16x26, White);
				ssd1306_UpdateScreen();
			} else if (Enemies[var].status == 0) {
				ssd1306_WriteString("You  Win", Font_16x26, White);
				ssd1306_UpdateScreen();
			}
		}
	}

}
void Bullet_Shot() {
	for (int var = 0; var < 4; ++var) {
		if (Bullets[var].status == 1 && Bullets[var].y > 0) {
			ssd1306_DrawBitmap(Bullets[var].x, Bullets[var].y, bullet, 4, 4,
					White);
		} else {
			Bullets[var].status = 0;
		}
	}
}
