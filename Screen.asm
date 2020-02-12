; 10 SYS (2304)

*=$0801

        BYTE    $0E, $08, $0A, $00, $9E, $20, $28, $32
        BYTE    $33, $30, $34, $29, $00, $00, $00

PRINT_LINE = $AB1E


*=$0900

START  jsr CLRSCR       ;clear screen
       ldx #12  ; screen line 12
       ldy #20  ; screen column 20
       clc      ; set carry clear = cursor
       jsr CURSOR       ;position CURSOR
       lda #'a' ; output character "a"
       jsr BOUT

INPUT  ldx #0
L1     jsr  BIN
       sta BUFF,x
       inx
       cmp #13
       bne L1 
       jsr HOME
       rts
       
        






BOUT   = $FFD2   ;Kernal output character
BIN    = $FFCF   ;Kernal get keyboard input
CLRSCR = $E544   ;Clear screen
CURSOR = $FFF0   ;position cursor
HOME   = $E566   ;home the cursor

BUFF   byte 80