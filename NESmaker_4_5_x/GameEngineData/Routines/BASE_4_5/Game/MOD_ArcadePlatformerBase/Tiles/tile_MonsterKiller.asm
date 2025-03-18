;;; Monster Killer

LDA Object_flags,x
AND #%0001000
BEQ +skipDoingThings
DestroyObject


+skipDoingThings