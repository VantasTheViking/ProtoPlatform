

LDA YelKey
CMP #$01
BEQ +open
JMP +notOpen
+open
    ChangeTileAtCollision #$00, #$00
    
    
       +notPlayer 
+notOpen

LDA ObjectUpdateByte
ORA #%00000001
STA ObjectUpdateByte ;; makes solid

