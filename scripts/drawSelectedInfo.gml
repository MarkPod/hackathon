///draw selected unit info on side
//control.numDimensions -1 is total dimensions
//control.players[control.turn-1].units[i].selected
var lineWidth,lineY,lineX,lineDivide,currUnit,currDim;
lineWidth = 64
lineDivide = 16



for (i = 0; i < array_length_1d(control.players[control.turn-1].units) ; i++)
    {
        currUnit = control.players[control.turn-1].units[i]
        if currUnit.selected > 0
            {
                for (j=0;j < control.numDimensions -1; j++)
                    {
                        currDim = currUnit.coordinates[j]
                        currU = currUnit.selected-1
                        
                        lineY = 128+(lineDivide*j) 
                        lineX = (32)+((currU)*lineWidth)+(currU * 7)
                        
                        setColorAxis(j)
                        
                        if (currU = 0)
                            {
                               draw_text(lineX-16,lineY-8,string(j)) 
                            }
                        
                        draw_line(lineX,lineY,lineX+lineWidth,lineY)//h line
                        //notches
                        draw_line(lineX,lineY,lineX,lineY-lineDivide)//left
                        draw_line(lineX+(lineWidth/2),lineY,lineX+(lineWidth/2),lineY-lineDivide)//mid
                        draw_line(lineX+lineWidth,lineY,lineX+lineWidth,lineY-lineDivide)//right
                        //draw_circle(lineX + (((currDim+8)/16)*lineWidth),lineY,4,false)
                        draw_text(lineX + (((currDim+8)/16)*lineWidth),lineY,string(currDim))
                    }
            }
        
    }
//draw_line(32,128 +(32*i),32+lineWidth,128)
//draw_circle(32+i,128 +(32*i),16,false)
//setColorAxis(string(i))
