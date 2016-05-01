no=0
for(i=0;i<control.numPlayers;i++)
{
     for(ii=0;ii<control.players[i].numUnits;ii++)
     {
        for(iii=0;iii<control.numDimensions;iii++)
        {
            if control.players[i].units[ii].coordinates[iii] = control.goCoordinates[iii]
                no++
        }
     }
}
if no = control.numDimensions
control.players[i].units[ii].h=0
