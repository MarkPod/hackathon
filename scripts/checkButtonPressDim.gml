//dim1 down
if mouse_x>x+size*32-80 && mouse_x<x+size*32-32
&& mouse_y>y+size*32 && mouse_y<y+size*32+32
{
    if dim2>0
        dim2--
}
//dim1 up
if mouse_x>x+32 && mouse_x<x+80
&& mouse_y>y+size*32 && mouse_y<y+size*32+32
{
    if dim2<control.numDimensions-1
        dim2++
}
//dim2 up
if mouse_x>x+size*32 && mouse_x<x+size*32+32
&& mouse_y>y+32 && mouse_y<y+80
{
    if dim1<control.numDimensions-1
        dim1++
}
//dim2 down
if mouse_x>x+size*32 && mouse_x<x+size*32+32
&& mouse_y>y+size*32-80 && mouse_y<y+size*32-32
{
    if dim1>0
        dim1--
}
