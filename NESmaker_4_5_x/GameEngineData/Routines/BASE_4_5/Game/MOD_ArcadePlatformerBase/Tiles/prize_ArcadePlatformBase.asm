;;; prize tile

    CPX player1_object
        BEQ +isPlayer
        CPX #$01
            BEQ +isPlayer
            JMP +skip
    +isPlayer
    
    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; BELOW WILL CHANGE TILE AT COLLISION.
    
    ChangeTileAtCollision #$00, #$00
    
    ;MACRO AddValue arg0, arg1, arg2, arg3
    ;arg0 = how many places this value has.
    ;arg1 = home variable
    ;arg2 = amount to add
    ;arg3 = what place value is receiving the addition?
        ;;; 0 = ones place, 1 = tens place, 2 = hundreds place, etc.
        ;DrawSprite #148, #148, #$A1,#$01
        ;PlaySound #sfx_powerup
        ;;CreateObject #00, #00, #$00,#$00
    AddValue #$08, myScore, #$1, #$02
    UpdateHudElement #$03
    
    +notPlayer
    
