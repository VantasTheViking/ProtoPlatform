    ;; SCRIPT to Switch between my Player object and my Deamon game object
switchPlayer:
    ;; if the player has this ability (if you don't want that limitation, comment out those 4 lines):
    LDA weaponsUnlocked
    AND #%00000100          ;; weapon 3 unlocked
    BNE canSwitchPlayer     ;; he can switch into another object
    JMP doneSwitchingPlayer
    
canSwitchPlayer:

    TXA
    PHA
        ;; first, we will store every placement informations about the player 
        LDX player1_object
        LDA Object_x_hi,x       ;; the current horizontal position
        ; CLC
        ; ADC #$04
        STA tempA
        LDA Object_y_hi,x       ;; the current vertical position
        ; CLC
        ; ADC #$04
        STA tempB
        LDA Object_direction,x  ;; the current facing and movements
        ; AND #%00000111
        STA tempC
        
        ;; now, depending of the current object used by the player:
        ;; we can switch to the new object, or switch back the normal one
        LDA Object_type,x
        BNE +changeIntoNormal
        LDA #15             ;; <-- HERE ! the new player object to transform into
            STA tempD
            JMP continueChangePlayerInto
        changeIntoNormal:
            LDA #00             ;; the normal player object
            STA tempD
            
        continueChangePlayerInto:
        DestroyObject                           ;; we destroy the current object
        CreateObject tempA, tempB, tempD, #$00  ;; and create the new one
        TXA
        STA player1_object                      ;; store that new created object in the Player 1 var
        STA camObject
        LDA tempC                               ;; set back the player directions
        STA Object_direction,x
    PLA
    TAX

doneSwitchingPlayer:    
    RTS