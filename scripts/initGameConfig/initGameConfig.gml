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
    [0.8*room_speed, 1.0*room_speed],
    [0.5*room_speed, 0.7*room_speed],
    [0.3*room_speed, 0.5*room_speed],
    [0.9*room_speed, 1.1*room_speed],
    [0.7*room_speed, 0.9*room_speed],
    [0.5*room_speed, 0.7*room_speed],
    [0.4*room_speed, 0.6*room_speed],
    [0.3*room_speed, 0.5*room_speed]
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
    2,
    5,
    5,
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