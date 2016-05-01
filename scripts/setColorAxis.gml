var col,colH,colS,colV;
random_set_seed(argument0)
//break up into hue sat and val
colH = argument0 * 10
colS = 255
colV = 255
//output final colour
col = make_colour_hsv(colH,colS,colV)
draw_set_colour(col)
return col;
