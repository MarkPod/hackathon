//draw scrolling names of axis vertically and horizontally

//im gonna try to draw this shit to a surface

//argument0 = horizontal axis
//argument1 = vertical axis
//argument2 = surface id (pref the id of the grid view or whatever idk)
var gridSize,axisSpread,hOffset,col1,col2;
gridSize = 8*32
axisSpread = 24 //how far apart to place letters (the font height is 12)
hOffset = 8 //how far to offset the vertical letters

//set colours as set seed based on
random_set_seed(ord(argument0))
col1 = random(16777215)

random_set_seed(ord(argument1))
col2 = random(16777215)

if surface_exists(gridBg)
    {
        surface_set_target(gridBg)
        
        //black background
        draw_set_colour(0)
        draw_rectangle(0,0,128,128,false)
        //draw arg0 and arg1 as strings
        //make them tile and scroll
        draw_set_font(bgFont)
        draw_set_alpha(0.5)
        
        gridBgTimer += 0.5
        gridBgTimer = gridBgTimer mod axisSpread
        
        draw_set_colour(col1)
        for (i = (gridBgTimer)-axisSpread; i < 128; i += axisSpread) //scrolling axis
            {
                for (j = hOffset; j < 128; j += axisSpread) //non scrolling
                    {
                        draw_text(j,i,argument0)
                    }
            }
        
        draw_set_colour(col2)
        for (i = (gridBgTimer)-axisSpread; i < 128; i += axisSpread) //scrolling axis
            {
                for (j = hOffset; j < 128; j += axisSpread) //non scrolling
                    {
                        draw_text(i,j,argument1)
                    }
            }
        
        draw_set_alpha(1)
        
        //reset surface target
        surface_reset_target()
        //draw surface behind grid
        draw_surface_ext(gridBg,x,y,(gridSize)/128,(gridSize)/128,0,c_white,1)
        
    }else
        {
            gridBg = surface_create(128,128)
        }
