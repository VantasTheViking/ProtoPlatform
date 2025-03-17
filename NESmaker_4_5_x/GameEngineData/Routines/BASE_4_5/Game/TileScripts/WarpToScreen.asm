CPX player1_object
    BEQ +isPlayer
    CPX #$01
    BEQ +isPlayer
    JMP notPlayerForWarpTile
    +isPlayer
    
    LDA myKeys
    CMP #$00
    BEQ notPlayerForWarpTile
    
    
    DEC myKeys
    WarpToScreen warpToMap, warpToScreen, #$01
    
        ;; arg0 = warp to map.  0= map1.  1= map2.
        ;; arg1 = screen to warp to.
        ;; arg2 = screen transition type - most likely use 1 here.
            ;; 1 = warp, where it observes the warp in position for the player.
notPlayerForWarpTile: