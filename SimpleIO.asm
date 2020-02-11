; 10 SYS (2304)

*=$0801

        BYTE    $0E, $08, $0A, $00, $9E, $20, $28,  $32, $33, $30
        BYTE    $34, $29, $00, $00, $00



*=$0900

        jmp INPUT
BOUT  =  $FFD2
BIN   =  $FFCF

INPUT
        ldx #0
L1      jsr BIN
        sta BUFF,x
        inx 
        stx LENTGH
        cmp #13
        bne L1
        

OUTPUT
        lda #$0d
        jsr BOUT ;new line to start
        ldx #0
L2      lda BUFF,x
        jsr BOUT
        inx
        cpx LENTGH
        bne L2
        rts

LENTGH
        brk

BUFF   
        byte 80




