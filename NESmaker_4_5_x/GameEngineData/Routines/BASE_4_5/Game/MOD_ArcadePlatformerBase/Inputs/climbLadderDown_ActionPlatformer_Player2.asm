LDX #$01
    LDA Object_x_hi,x
    CLC
    adc #$08 ;; MIDDLE OF PLAYER
    STA temp
        JSR getPointColTable

    LDA Object_y_hi,x
    CLC
    ADC #$11 ;; height of player plus arbitrary number to check. (if player is #$10 pixels tall, maybe put #$12 here to check just below his feet).
    STA temp1
    ;;; CHECK FOR SOLID TILE, which is tile type 1 in this module.
    CheckCollisionPoint temp, temp1, #$0A, tempA ;; is it a solid?
    BNE +notLadder

    ;; there is a ladder under my feet..
    LDA Object_y_hi,x
    CLC
    ADC #$01 ;; ladder speed
    STA Object_y_hi,x
    
    GetActionStep #$01
    CMP #$03 ;; in this module, the player's action step 3 is for climbing
    BEQ +alreadyOnLadder
        LDA gamepad2
        AND #%11000000
        BNE +alreadyOnLadder ;; will turn off ladder if right or left is pressed.
        ChangeActionStep #$01, #$03
         LDA Object_direction,x
        AND #%00001111
        STA Object_direction,x
    +alreadyOnLadder
     RTS
+notLadder
   GetActionStep #$01
   CMP #$03
   BNE +notClimbing
   ChangeActionStep #$01, #$00
+notClimbing
    RTS