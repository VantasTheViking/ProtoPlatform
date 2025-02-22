;; *************** ScriptTables.asm ***************
;; Script link export. Friday, February 21, 2025 6:56:43 PM
ScriptAddressLo:
	.db #<Script00, #<Script01, #<Script02, #<Script03, #<Script04, #<Script05, #<Script06, #<Script07, #<Script08, #<Script09, #<Script0a, #<Script0b
ScriptAddressHi:
	.db #>Script00, #>Script01, #>Script02, #>Script03, #>Script04, #>Script05, #>Script06, #>Script07, #>Script08, #>Script09, #>Script0a, #>Script0b

TargetScriptBank:
	.db #DATABANK1, #DATABANK1, #DATABANK1, #DATABANK1, #DATABANK1, #DATABANK1, #DATABANK1, #DATABANK1, #DATABANK1, #DATABANK1, #DATABANK1, #DATABANK1

;;=======================PRESSED=======================
DefinedInputs_Pressed:
	.db #%10000000, #%01000000, #%00000001, #%10000000, #%01000000, #%00000001

DefinedScriptGameStates_Pressed:
	.db #$00, #$00, #$00, #$00, #$00, #$00

DefinedTargetObjects_Pressed:
	.db #$00, #$00, #$00, #$0f, #$0f, #$0f

DefinedTargetController_Pressed:
	.db #$00, #$00, #$00, #$00, #$00, #$00

TargetState_Pressed:
	.db #$00, #$00, #$00, #$00, #$00, #$00

DefinedTargetScripts_Pressed:
	.db #$02, #$02, #$05, #$02, #$02, #$05

;;=======================RELEASE=======================
DefinedInputs_Released:
	.db #%10000000, #%01000000, #%10000000, #%01000000, #%00000001, #%10000000, #%01000000, #%10000000, #%01000000, #%00000001, #%00000100, #%00000100, #%00000100

DefinedScriptGameStates_Released:
	.db #$00, #$00, #$00, #$00, #$00, #$00, #$00, #$00, #$00, #$00, #$00, #$00, #$00

DefinedTargetObjects_Released:
	.db #$00, #$00, #$00, #$00, #$00, #$0f, #$0f, #$0f, #$0f, #$0f, #$00, #$00, #$0f

DefinedTargetController_Released:
	.db #$00, #$00, #$00, #$00, #$00, #$00, #$00, #$00, #$00, #$00, #$00, #$00, #$00

TargetState_Released:
	.db #$00, #$00, #$00, #$00, #$00, #$00, #$00, #$00, #$00, #$00, #$00, #$00, #$00

DefinedTargetScripts_Released:
	.db #$03, #$03, #$04, #$04, #$06, #$03, #$03, #$04, #$04, #$06, #$09, #$0a, #$0b

;;=======================HOLD=======================
DefinedInputs_Held:
	.db #%10000000, #%01000000, #%00010000, #%00100000, #%10000000, #%01000000, #%00010000, #%00100000

DefinedScriptGameStates_Held:
	.db #$00, #$00, #$00, #$00, #$00, #$00, #$00, #$00

DefinedTargetObjects_Held:
	.db #$00, #$00, #$00, #$00, #$0f, #$0f, #$0f, #$0f

DefinedTargetController_Held:
	.db #$00, #$00, #$00, #$00, #$00, #$00, #$00, #$00

TargetState_Held:
	.db #$00, #$00, #$00, #$00, #$00, #$00, #$00, #$00

DefinedTargetScripts_Held:
	.db #$00, #$01, #$07, #$08, #$00, #$01, #$07, #$08

