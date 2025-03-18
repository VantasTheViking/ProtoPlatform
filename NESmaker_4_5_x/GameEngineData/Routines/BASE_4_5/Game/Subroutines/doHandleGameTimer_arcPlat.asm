;;; handle game timer.
	LDA gameTimerTicks
	CLC
	ADC #$01 ;; change this to how fast you want the timer to run.
	STA gameTimerTicks
	BCC +normalW
		LDA ScreenFlags00
		AND #%00001000
		BEQ +normalW
	;;~4 secs
		CreateObject #$80, #$20, #$11, #$00
		
		
		
		
		
		
	+normalW
	LDA gameTimerLo
	ADC #$00
	STA gameTimerLo
	LDA gameTimerHi
	ADC #$00
	STA gameTimerHi
	
	
