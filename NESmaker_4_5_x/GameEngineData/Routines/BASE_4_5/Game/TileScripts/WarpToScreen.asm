CPX player1_object
    BEQ +isPlayer
    CPX #$01
    BEQ +isPlayer
    JMP notPlayerForWarpTile
    +isPlayer
    
    ;;LDA myKeys
    ;;CMP #$00
    ;;BEQ notPlayerForWarpTile
    
    
    ;;DEC myKeys
    
    LDA RedKey
    CMP #$00
    BNE +ThereAreRedKeys
        JMP notPlayerForWarpTile
        +ThereAreRedKeys
        LDA YelKey
        CMP #$00
        BNE +ThereAreYelKeys
            JMP notPlayerForWarpTile
            +ThereAreYelKeys
            LDA BlueKey
            CMP #$00
            BNE +ThereAreBlueKeys
                JMP notPlayerForWarpTile
        
    
        
        
                +ThereAreBlueKeys
                LDA #$00
                STA RedKey
                STA YelKey
                STA BlueKey
    
    
    UpdateHudElement #$00
    UpdateHudElement #$01
    UpdateHudElement #$02
    UpdateHudElement #$03
    UpdateHudElement #$04
    UpdateHudElement #$05
    UpdateHudElement #$06
    UpdateHudElement #$07
    
    WarpToScreen warpToMap, warpToScreen, #$01
    
        ;; arg0 = warp to map.  0= map1.  1= map2.
        ;; arg1 = screen to warp to.
        ;; arg2 = screen transition type - most likely use 1 here.
            ;; 1 = warp, where it observes the warp in position for the player.
notPlayerForWarpTile: