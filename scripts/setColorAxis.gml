var col,colH,colS,colV;
random_set_seed(ord(argument0)) //input a string pls
col = random(16777215) //generate coloue

//break up into hue sat and val
colH = colour_get_hue(col)
colS = colour_get_saturation(col)
colV = colour_get_value(col)

//boost saturation and value
colS = colS * 1.5
colV = colV * 1.2

//cap stuff out
if colS > 255 colS = 255
if colV > 255 colV = 255

//output final colour
col = make_colour_hsv(colH,colS,colV)
draw_set_colour(col)
return col;
