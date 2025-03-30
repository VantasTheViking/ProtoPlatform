CPX player1_object
        BEQ +isPlayer
        CPX #$01
            BEQ +isPlayer
            JMP +notPlayer
    +isPlayer
    
    
    INC BlueKey
    
    UpdateHudElement #$05
    UpdateHudElement #$06
    UpdateHudElement #$07
	ChangeTileAtCollision #$00, #$00
    
    +notPlayer