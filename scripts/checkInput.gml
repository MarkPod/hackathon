for(i=0;i<control.numDimensions;i++)
{
    draw_sprite(dimDown,0,64,216+16*i)
    draw_sprite(dimUp,0,208,216+16*i)
}
for(i=0;i<control.numDimensions;i++)
{
    draw_text(240,216+16*i,control.goCoordinates[i])
}