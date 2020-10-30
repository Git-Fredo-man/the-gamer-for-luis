var key_up = keyboard_check(ord("W"))
var key_down = keyboard_check(ord("S"))
var key_left = keyboard_check(ord("A"))
var key_right = keyboard_check(ord("D"))
var hspd = key_right - key_left
var vspd = key_up - key_down
if keyboard_check(vk_space)
{
	spd = 10;
	col = spd + 0
}
if vspd == 1
{
	sprite_index = spr_cima;
	if place_free(x, y - col)
	{
		y -= spd;
	}
}
if vspd == -1
{
	sprite_index = spr_baixo;
	if place_free(x, y + col)
	{
		y += spd;
	}
}
if hspd == 1
{
	sprite_index = spr_direita;
	if place_free(x + col, y)
	{
		x += spd;
	}
}
if hspd == -1
{
	sprite_index = spr_esquerda;
	if place_free(x - col, y)
	{
		x -= spd;
	}
}

if hspd == 0 and vspd == 0
{
	image_index = 1;
	image_speed = 0;
}
image_speed = 0.2
spd = 2;
col = spd + 0