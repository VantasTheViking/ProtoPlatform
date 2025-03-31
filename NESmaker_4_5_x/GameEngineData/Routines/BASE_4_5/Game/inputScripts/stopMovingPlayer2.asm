oStopMoving2:
    LDX arg0_hold
    LDA Object_direction,x
    AND #%01001111
    STA Object_direction,x

    RTS