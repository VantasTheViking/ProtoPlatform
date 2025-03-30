CPX player1_object
        BEQ +isPlayer
        CPX #$01
            BEQ +isPlayer
            JMP +notPlayer
    +isPlayer
    
    
    INC YelKey
    
	
    UpdateHudElement #$00
    UpdateHudElement #$01
	UpdateHudElement #$02
    UpdateHudElement #$03
    UpdateHudElement #$04
    UpdateHudElement #$05
    UpdateHudElement #$06
    UpdateHudElement #$07
    ChangeTileAtCollision #$00, #$00
    
    +notPlayer