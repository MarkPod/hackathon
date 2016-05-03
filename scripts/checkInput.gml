//draw buttons
for(i=0;i<control.numDimensions;i++)
{
    draw_sprite(dimDown,0,64,216+16*i)
    draw_sprite(dimUp,0,208,216+16*i)
}
draw_set_colour(0)
//where to
for(i=0;i<control.numDimensions;i++)
{
    draw_text(240,208+16*i,control.goCoordinates[i])
}
//which dimension
for(i=0;i<control.numDimensions;i++)
{
    draw_text(32,208+16*i,i)
}
