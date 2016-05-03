no=0
for(i=0;i<control.numPlayers;i++)
{
    
     for(ii=0;ii<control.players[i].numUnits;ii++)
     {
        for(iii=0;iii<control.numDimensions;iii++)
        {
            if control.players[i].units[ii].team=control.turn
            {   
                i=control.numPlayers-1
                no=-1
            }
            if control.players[i].units[ii].coordinates[iii] = control.activeUnit.coordinates[iii]+control.goCoordinates[iii]
                no++
        }
     }
}
if no = control.numDimensions
{
    control.players[i].units[ii].hits=0
}
return no

