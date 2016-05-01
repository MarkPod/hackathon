///draw selected unit info on side
//control.numDimensions -1 is total dimensions
//control.players[control.turn-1].units[i].selected
var lineWidth,lineY,lineX,lineDivide,currUnit,currDim;
lineWidth = 64
lineDivide = 16


//if activeUnit==0
for (i = 0; i < array_length_1d(control.players[control.turn-1].units) ; i++)
    {
        currUnit = control.players[control.turn-1].units[i]
        if currUnit.activated==1
        {
            activeUnit=currUnit
            control.activeUnit=currUnit
        }

        if currUnit.selected > 0 
        && currUnit.selected >= unitOffset+1 && currUnit.selected <= unitOffset+3
        {
        //if currUnit.selected > 0 && currUnit.selected >= unitOffset+1 && currUnit.selected <= unitOffset+3
        
        
        currU = currUnit.selected-1

        lineX = (32)+((currU - (unitOffset))*lineWidth)+((currU - (unitOffset))* 7)
        //currUnit.selected > 0 && 
        if (currUnit.selected >= unitOffset+1 and currUnit.selected <= unitOffset+3)
            {
                draw_set_colour(0)
                draw_rectangle(lineX,148,lineX+lineWidth,208+16*control.numDimensions,false) //black backing
                draw_sprite_ext(sprite4,currUnit.type,lineX+(lineWidth/2),176,1,1,0,make_colour_hsv(255*(currUnit.team/control.numPlayers),175,255),1) //draw unit sprite
                
                
                for (j=0;j < control.numDimensions; j++)
                    {
                        //if //if unit.selection>offset && < offset+3
                        {
                            currDim = currUnit.coordinates[j]
                            lineY = 128+(lineDivide*j)+96
                            
                            setColorAxis(j)
                            
                            if (currU = 0)
                                {
                                   draw_text(lineX-16,lineY-16,string(j)) 
                                }
                            
                            draw_line(lineX,lineY,lineX+lineWidth,lineY)//h line
                            //notches
                            draw_line(lineX,lineY,lineX,lineY-lineDivide)//left
                            draw_line(lineX+(lineWidth/2),lineY,lineX+(lineWidth/2),lineY-lineDivide)//mid
                            draw_line(lineX+lineWidth,lineY,lineX+lineWidth,lineY-lineDivide)//right
                            //draw_circle(lineX + (((currDim+8)/16)*lineWidth),lineY,4,false)
                            draw_set_colour(16777215)
                            draw_text(lineX + (((currDim+8)/16)*lineWidth),lineY-17,string(currDim))
                            }
                    }
            }
        }
    }
//active unit
/*else
{
    //activeDim = activeUnit.coordinates[j]
    currU = activeUnit.selected-1
    draw_sprite_ext(sprite4,activeUnit.type,64+72*(activeUnit.selected-1),176,
                    1,1,0,make_colour_hsv(255*(activeUnit.team/control.numPlayers),175,255),1)
                draw_set_colour(0)
                draw_rectangle( 7*activeUnit.selected+24+(activeUnit.selected-1)*64,208,
                                7*activeUnit.selected+24+(activeUnit.selected)*64,208+16*control.numDimensions,false)
     for (j=0;j < control.numDimensions; j++)
    {
                        //if //if unit.selection>offset && < offset+3
    {
                            
     lineY = 128+(lineDivide*j)+96
     lineX = (32)+((currU)*lineWidth)+(currU * 7)
                            
     setColorAxis(j)
                            
                    if (currU = 0)
                    {
                        draw_text(lineX-16,lineY-16,string(j)) 
                    }
                            
     draw_line(lineX,lineY,lineX+lineWidth,lineY)//h line
                            //notches
     draw_line(lineX,lineY,lineX,lineY-lineDivide)//left
     draw_line(lineX+(lineWidth/2),lineY,lineX+(lineWidth/2),lineY-lineDivide)//mid
     draw_line(lineX+lineWidth,lineY,lineX+lineWidth,lineY-lineDivide)//right
     //draw_circle(lineX + (((currDim+8)/16)*lineWidth),lineY,4,false)
     draw_set_colour(16777215)
     draw_text(lineX + (((currDim+8)/16)*lineWidth),lineY-16,activeUnit.coordinates[j])
     }
     }
}

