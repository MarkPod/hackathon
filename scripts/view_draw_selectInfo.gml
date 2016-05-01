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
                        
                        lineY = 128+(lineDivide*j) 
                        lineX = (32)+((currUnit.selected-1)*lineWidth)
                        
                        setColorAxis(j)
                        draw_text(lineX-16,lineY-8,string(j))
                        draw_line(lineX,lineY,lineX+lineWidth-2,lineY)
                        draw_circle(lineX + (((currDim+8)/16)*lineWidth),lineY,4,false)
                    }
            }
        
    }
//draw_line(32,128 +(32*i),32+lineWidth,128)
//draw_circle(32+i,128 +(32*i),16,false)
//setColorAxis(string(i))
