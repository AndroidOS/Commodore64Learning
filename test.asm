; 10 SYS (2304)

*=$0801

        BYTE    $0E, $08, $0A, $00, $9E, $20, $28, $32
        BYTE    $33, $30, $34, $29, $00, $00, $00

PRINT_LINE = $AB1E


*=$0900

START
        lda #<HELLOWORLD
        ldy #>HELLOWORLD
        jsr PRINT_LINE

        rts


HELLOWORLD
        text "hello world"
        byte 13, 00
