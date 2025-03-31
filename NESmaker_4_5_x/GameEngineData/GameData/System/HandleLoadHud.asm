;; *************** HandleLoadHud.asm ***************
;; Constants export. Monday, March 31, 2025 9:20:45 AM
;; =================== HUD Element #0 =========================
LDA #BOX_0_ASSET_0_TYPE
STA updateHUD_ASSET_TYPE
LDA #BOX_0_ASSET_0_X
STA updateHUD_ASSET_X
LDA #BOX_0_ASSET_0_Y
STA updateHUD_ASSET_Y
LDA #BOX_0_ASSET_0_IMAGE
STA updateHUD_IMAGE
LDA #BOX_0_ASSET_0_BLANK
STA updateHUD_BLANK
LDA #BOX_0_ASSET_0_MAX_VALUE
STA hudElementTilesFull
LDA #$00
STA updateHUD_offset
LDA #$00
STA hudElementTilesToLoad
AssignHudLabel  HUD__0_0_STRING
JSR HandleHudData_direct
JSR WaitFrame
;; =================== HUD Element #1 =========================
LDA #BOX_0_ASSET_1_TYPE
STA updateHUD_ASSET_TYPE
LDA #BOX_0_ASSET_1_X
STA updateHUD_ASSET_X
LDA #BOX_0_ASSET_1_Y
STA updateHUD_ASSET_Y
LDA #BOX_0_ASSET_1_IMAGE
STA updateHUD_IMAGE
LDA #BOX_0_ASSET_1_BLANK
STA updateHUD_BLANK
LDA #BOX_0_ASSET_1_MAX_VALUE
STA hudElementTilesFull
LDA #$00
STA updateHUD_offset
AssignHudVariable  myLives, #$00
STA hudElementTilesToLoad
JSR HandleHudData_direct
JSR WaitFrame
;; =================== HUD Element #4 =========================
LDA #BOX_0_ASSET_4_TYPE
STA updateHUD_ASSET_TYPE
LDA #BOX_0_ASSET_4_X
STA updateHUD_ASSET_X
LDA #BOX_0_ASSET_4_Y
STA updateHUD_ASSET_Y
LDA #BOX_0_ASSET_4_IMAGE
STA updateHUD_IMAGE
LDA #BOX_0_ASSET_4_BLANK
STA updateHUD_BLANK
LDA #BOX_0_ASSET_4_MAX_VALUE
STA hudElementTilesFull
LDA #$00
STA updateHUD_offset
LDA #$00
STA hudElementTilesToLoad
AssignHudLabel  HUD__0_4_STRING
JSR HandleHudData_direct
JSR WaitFrame
;; =================== HUD Element #5 =========================
LDA #BOX_0_ASSET_5_TYPE
STA updateHUD_ASSET_TYPE
LDA #BOX_0_ASSET_5_X
STA updateHUD_ASSET_X
LDA #BOX_0_ASSET_5_Y
STA updateHUD_ASSET_Y
LDA #BOX_0_ASSET_5_IMAGE
STA updateHUD_IMAGE
LDA #BOX_0_ASSET_5_BLANK
STA updateHUD_BLANK
LDA #BOX_0_ASSET_5_MAX_VALUE
STA hudElementTilesFull
LDA #$00
STA updateHUD_offset
AssignHudVariable  RedKey, #$00
STA hudElementTilesToLoad
JSR HandleHudData_direct
JSR WaitFrame
;; =================== HUD Element #6 =========================
LDA #BOX_0_ASSET_6_TYPE
STA updateHUD_ASSET_TYPE
LDA #BOX_0_ASSET_6_X
STA updateHUD_ASSET_X
LDA #BOX_0_ASSET_6_Y
STA updateHUD_ASSET_Y
LDA #BOX_0_ASSET_6_IMAGE
STA updateHUD_IMAGE
LDA #BOX_0_ASSET_6_BLANK
STA updateHUD_BLANK
LDA #BOX_0_ASSET_6_MAX_VALUE
STA hudElementTilesFull
LDA #$00
STA updateHUD_offset
AssignHudVariable  YelKey, #$00
STA hudElementTilesToLoad
JSR HandleHudData_direct
JSR WaitFrame
;; =================== HUD Element #7 =========================
LDA #BOX_0_ASSET_7_TYPE
STA updateHUD_ASSET_TYPE
LDA #BOX_0_ASSET_7_X
STA updateHUD_ASSET_X
LDA #BOX_0_ASSET_7_Y
STA updateHUD_ASSET_Y
LDA #BOX_0_ASSET_7_IMAGE
STA updateHUD_IMAGE
LDA #BOX_0_ASSET_7_BLANK
STA updateHUD_BLANK
LDA #BOX_0_ASSET_7_MAX_VALUE
STA hudElementTilesFull
LDA #$00
STA updateHUD_offset
AssignHudVariable  BlueKey, #$00
STA hudElementTilesToLoad
JSR HandleHudData_direct
JSR WaitFrame
