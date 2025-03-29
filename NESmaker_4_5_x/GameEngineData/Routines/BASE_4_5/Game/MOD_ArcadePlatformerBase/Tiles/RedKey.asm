CPX player1_object
        BEQ +isPlayer
        CPX #$01
            BEQ +isPlayer
            JMP +notPlayer
    +isPlayer
    
    
    INC RedKey
    ChangeTileAtCollision #$00, #$00
    UpdateHudElement #$05
    
    
    +notPlayer