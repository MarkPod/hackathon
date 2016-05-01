//offset1 up
if mouse_x>x+size*32-32 && mouse_x<x+size*32
&& mouse_y>y+size*32 && mouse_y<y+size*32+32
{
    if offset1<ceil(control.mapSize/2)-control.mapSize/2
        offset1++
}
//offest1 down
if mouse_x>x && mouse_x<x+32
&& mouse_y>y+size*32 && mouse_y<y+size*32+32
{
    if offset1>-ceil(control.mapSize/2)
        offset1--
}
//offset2 up
if mouse_x>x+size*32 && mouse_x<x+size*32+32
&& mouse_y>y && mouse_y<y+32
{
    if offset2>-ceil(control.mapSize/2)
        offset2--
}
//offest2 down
if mouse_x>x+size*32 && mouse_x<x+size*32+32
&& mouse_y>y+size*32-32 && mouse_y<y+size*32
{
    if offset2<ceil(control.mapSize/2)-control.mapSize/2
        offset2++
}
