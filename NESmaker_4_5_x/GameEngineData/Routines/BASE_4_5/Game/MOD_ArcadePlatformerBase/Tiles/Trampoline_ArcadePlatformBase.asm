;;;; trampoline
    CPX player1_object
        BEQ +isPlayer
        CPX #$01
            BEQ +isPlayer
            JMP +skip
        +isPlayer
        LDA Object_v_speed_hi,x
        BEQ +skip
        BMI +skip
            LDA #$F8
            STA Object_v_speed_hi,x
        +skip
        rts
        
    
    
