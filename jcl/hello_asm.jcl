//IASM01 JOB ASM,
//         'Hello World In ASM',
//         REGION=8M,
//         MSGLEVEL=(0,0)
//ASM EXEC ASMFCLG,PARM.ASM='OBJECT,NODECK,LIST,NOXREF'
//ASM.SYSIN DD *
HELLO           CSECT
                USING HELLO,15
                SAVE(14,12)
                WTO 'Hello From S/360 Assembler!'
                RETURN (14,12),RC=0
                END
//
