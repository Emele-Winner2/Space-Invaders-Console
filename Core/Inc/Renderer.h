/*
 * Renderer.h
 *
 *  Created on: Oct 11, 2026
 *      Author: Winner-Emele
 */

#ifndef INC_RENDERER_H_
#define INC_RENDERER_H_
#include "ssd1306.h"
#include "main.h"
#include "sprites.h"
#include "stdbool.h"
//Default Renders of Player and Enemy
extern  struct Enemy_state{
	bool status;
	int y;
};
extern  struct Bullet_state{
	bool status;
	int x;
	int y;
};
extern int bullet_x_value [4];
extern struct Player *point;
extern struct Player{
	int x;
	bool status;
};
extern struct Enemy_state Enemies[4];
extern struct Bullet_state Bullets[4];
extern volatile int position_value;
extern volatile int Bullet_y_value;
extern volatile int Bullet_count;
void Render_Tilt(void);
void Renderer_Frame(void);
void Bullet_Shot(void);
void Default_Render(void);
#endif /* INC_RENDERER_H_ */
