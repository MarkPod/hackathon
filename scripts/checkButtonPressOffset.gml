//offset1 up
if mouse_x>0 && mouse_x<32
&& mouse_y>80 && mouse_y<112
{
    if unitOffset>0
        unitOffset--
}
//offest1 down
if mouse_x>256 && mouse_x<288
&& mouse_y>80 && mouse_y<112
{
    //if unitOffset<numSelected-3
        unitOffset++
}


draw_sprite(sprite10,0,32,96)
draw_sprite(sprite9,0,256,96)
