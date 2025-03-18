;;;;Turn off Generator

CPX player1_object
        BEQ +isPlayer
        CPX #$01
            BEQ +isPlayer
            JMP +notPlayer
    +isPlayer
	
	ChangeTileAtCollision #$00, #$00
	
	LDA ScreenFlags00
	AND #%11110111
	STA ScreenFlags00
	
	
	
	
	
	
	
	
	
	+notPlayer