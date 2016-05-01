//draw scrolling names of axis vertically and horizontally

//im gonna try to draw this to a surface

//argument0 = horizontal axis
//argument1 = vertical axis
var gridSize,axisSpread,hOffset,starSpread,starRand,starColour,colRect;
gridSize = size*32
axisSpread = 24 //how far apart to place letters (the font height is 12)
hOffset = 8 //how far to offset the vertical letters

//star stuff
starSpread = 400

if surface_exists(gridBg)
    {
        surface_set_target(gridBg)
        
        //black background
        draw_set_colour(0)
        draw_rectangle(0,0,128,128,false)
        
        //stars background with axis as seed
        
        starColour = setColorAxis(argument0)
        for (i = 0; i <= 128; i += 1)
            {
                for (j = 0; j <= 128; j += 1)
                    {
                        starRand = random(starSpread)
                        if (starRand <= 1)
                            {
                                if starRand > 0.98
                                    {
                                        draw_sprite_ext(star0,0,i,j,1,1,1,starColour,starRand)
                                    }else if starRand > 0.1
                                    {
                                        draw_set_alpha(starRand)
                                        draw_point(i,j)
                                    } else
                                    {
                                        draw_sprite_ext(nebula,0,i,j,1,1,1,starColour,starRand*2)
                                    }
                                
                            }
                    }
            }
        starColour = setColorAxis(argument1)
        for (i = 0; i <= 128; i += 1)
            {
                for (j = 0; j <= 128; j += 1)
                    {
                        starRand = random(starSpread)
                        if (starRand <= 1)
                            {
                                if starRand > 0.98
                                    {
                                        draw_sprite_ext(star0,0,i,j,1,1,1,starColour,starRand)
                                    }else if starRand > 0.1
                                    {
                                        draw_set_alpha(starRand)
                                        draw_point(i,j)
                                    } else
                                    {
                                        draw_sprite_ext(nebula,0,i,j,1,1,1,starColour,starRand*2)
                                    }
                            }
                    }
            }
        
        //draw arg0 and arg1 as strings
        //make them tile and scroll
        draw_set_font(bgFont)
        draw_set_alpha(0.2)
        
        
        gridBgTimer += 0.5
        gridBgTimer = gridBgTimer mod axisSpread
        
        setColorAxis(argument0)
        for (i = (gridBgTimer)-axisSpread; i < 128; i += axisSpread) //scrolling axis
            {
                for (j = hOffset; j < 128; j += axisSpread) //non scrolling
                    {
                        draw_text(j,i,argument0)
                    }
            }
        
        setColorAxis(argument1)
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
        
        //draw coloured sidebars on axis
        colRect = setColorAxis(argument0)
        colRect = make_colour_hsv(colour_get_hue(colRect),255,128)
        draw_set_colour(colRect)
        
        draw_rectangle(x-32,y,x,y+gridSize,false)
        //horizontal axis
        colRect = setColorAxis(argument1)
        colRect = make_colour_hsv(colour_get_hue(colRect),255,128)
        draw_set_colour(colRect)
        
        draw_rectangle(x,y-32,x+gridSize,y,false)
        
        //draw decorative tiles around view
        //corners
        draw_sprite(viewBorderTile,0,x-32,y-32) //top left
        draw_sprite(viewBorderTile,0,x+(gridSize),y-32) //top right
        draw_sprite(viewBorderTile,0,x-32,y+(gridSize)) //bottom left
        draw_sprite(viewBorderTile,0,x+(gridSize),y+(gridSize)) //bottom right
        
        //coloured border
        for (i=0;i <= size-1;i++)
            {
                draw_sprite(viewBorderTile,1,x+(i*32),y-32)//top
            }
        for (i=0;i <= size-1;i++)
            {
                draw_sprite_ext(viewBorderTile,1,x-32,y+(i*32)+32,1,1,90,c_white,1)//left
            }
        //button back
        for (i=0;i <= size-1;i++)
            {
                draw_sprite(viewBorderTile,1,x+(i*32),y+gridSize)//bottom
            }
        for (i=0;i <= size-1;i++)
            {
                draw_sprite_ext(viewBorderTile,1,x+gridSize,y+(i*32)+32,1,1,90,c_white,1)//right
            }
        //dimension number display
        
    }else
        {
            gridBg = surface_create(128,128)
        }
