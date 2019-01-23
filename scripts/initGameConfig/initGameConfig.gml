appWidth = 1280;
appHeight = 720;

appCenter = ds_map_create();
ds_map_add(appCenter, "x", appWidth / 2);
ds_map_add(appCenter, "y", appHeight / 2);

darkTheme = ds_map_create();
ds_map_add(darkTheme, "textColour", c_white);
ds_map_add(darkTheme, "linkColour", c_white);
ds_map_add(darkTheme, "hoverColour", $A0C0A0);

lightTheme = ds_map_create();
ds_map_add(lightTheme, "textColour", c_black);
ds_map_add(lightTheme, "linkColour", c_black);
ds_map_add(lightTheme, "hoverColour", c_white);