appWidth = 1280;
appHeight = 720;

appCenterX = appWidth / 2;
appCenterY = appHeight / 2;

darkTheme = ds_map_create();
ds_map_add(darkTheme, "textColour", c_white);
ds_map_add(darkTheme, "linkColour", c_white);
ds_map_add(darkTheme, "hoverColour", $A0C0A0);

lightTheme = ds_map_create();
ds_map_add(lightTheme, "textColour", c_black);
ds_map_add(lightTheme, "linkColour", c_black);
ds_map_add(lightTheme, "hoverColour", c_white);

game_over_time = 180;

flash_bulb_delta = 0.2;
sp_bulb_delta = -52.1;
bulb_deactivate_time = 45;
bulb_critical_time = 90;

num_levels = 8;
points_to_level_up = [
      5,
      10,
      10,
      20,
      20,
      20,
      20,
      999
];

bulb_delay_time = [      // in frames
	[45, 15],
	[24, 12],
	[12, 6],
	[48, 12],
	[33, 12],
	[21, 9],
	[12, 6],
	[9, 3]
];

num_bulbs_active = [
    1,
    1,
    1,
    2,
    2,
    2,
    2,
    2
];

sp_bulb_delay_turns = [ // in turns
    5,
    10,
    10,
    10,
    10,
    10,
    10,
    10
];

enum lightState {
	off,
	on,
	flash,
	onSp,
	flashSp
}

globalvar fnt_metropolis;
if (os_browser == browser_not_a_browser)
	fnt_metropolis = font_add_sprite_ext(spr_numbers,"1234567890:", false, 0);
else
	fnt_metropolis = font_add_sprite_ext(spr_numbers,"1234567890:", true, 8);