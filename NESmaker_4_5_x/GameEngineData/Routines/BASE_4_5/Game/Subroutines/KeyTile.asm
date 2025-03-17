;;; key tile

    CPX player1_object
        BEQ +isPlayer
        CPX #$01
            BEQ +isPlayer
            JMP +notPlayer
    +isPlayer
    
    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; BELOW WILL CHANGE TILE AT COLLISION.
    
    ChangeTileAtCollision #$00, #$00
    
    ;MACRO AddValue arg0, arg1, arg2, arg3
    ;arg0 = how many places this value has.
    ;arg1 = home variable
    ;arg2 = amount to add
    ;arg3 = what place value is receiving the addition?
        ;;; 0 = ones place, 1 = tens place, 2 = hundreds place, etc.
    
    AddValue #$08, myScore, #$08, #$02
    AddValue #$01, myKeys, #$01, #$00
    ;;HideSprites
    UpdateHudElement #$03
    UpdateHudElement #$05
    
    
    
    ;CreateObject #0, #0, #$00, #$00
    +notPlayer
