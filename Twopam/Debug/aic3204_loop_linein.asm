;*******************************************************************************
;* TMS320C55x C/C++ Codegen                                          PC v4.4.1 *
;* Date/Time created: Mon Jan 29 10:16:53 2024                                 *
;*******************************************************************************
	.compiler_opts --hll_source=on --mem_model:code=flat --mem_model:data=large --object_format=coff --silicon_core_3_3 --symdebug:none 
	.mmregs
	.cpl_on
	.arms_on
	.c54cm_off
	.asg AR6, FP
	.asg XAR6, XFP
	.asg DPH, MDP
	.model call=c55_std
	.model mem=large
	.noremark 5002  ; code respects overwrite rules
;*******************************************************************************
;* GLOBAL FILE PARAMETERS                                                      *
;*                                                                             *
;*   Architecture       : TMS320C55x                                           *
;*   Optimizing for     : Speed                                                *
;*   Memory             : Large Model (23-Bit Data Pointers)                   *
;*   Calls              : Normal Library ASM calls                             *
;*   Debug Info         : No Debug Info                                        *
;*******************************************************************************
;	C:\ti\ccsv6\tools\compiler\c5500_4.4.1\bin\opt55.exe C:\\Windows\\system32\\config\\SYSTEM~1\\AppData\\Local\\Temp\\060442 C:\\Windows\\system32\\config\\SYSTEM~1\\AppData\\Local\\Temp\\060444 
	.sect	".text"
	.global	_aic3204_loop_linein
;*******************************************************************************
;* FUNCTION NAME: aic3204_loop_linein                                          *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,T0,T1,T2,T3,AR0,XAR0,AR1,AR5,SP,CARRY,M40,   *
;*                        SATA,SATD,RDM,FRCT,SMUL                              *
;*   Save On Entry Regs : T2,T3,AR5                                            *
;*   Stack Frame        : Compact (No Frame Pointer)                           *
;*   Total Frame Size   : 6 words                                              *
;*                        (1 return address/alignment)                         *
;*                        (2 local values)                                     *
;*                        (3 register save area)                               *
;*   Min System Stack   : 2 words                                              *
;*******************************************************************************
_aic3204_loop_linein:
        PSH T3, T2

        PSHBOTH XAR5
||      MOV #0, T0

        AADD #-2, SP

        CALL #_AIC3204_rset ; |58| 
||      MOV #0, T1

                                        ; call occurs [#_AIC3204_rset] ; |58| 
        MOV #1, T0

        CALL #_AIC3204_rset ; |59| 
||      MOV #1, T1

                                        ; call occurs [#_AIC3204_rset] ; |59| 
        MOV #1000, AC0 ; |60| 
        CALL #_EZDSP5535_waitusec ; |60| 
                                        ; call occurs [#_EZDSP5535_waitusec] ; |60| 
        MOV #0, T0

        CALL #_AIC3204_rset ; |61| 
||      MOV #1, T1

                                        ; call occurs [#_AIC3204_rset] ; |61| 
        MOV #1, T0

        CALL #_AIC3204_rset ; |62| 
||      MOV #8, T1

                                        ; call occurs [#_AIC3204_rset] ; |62| 
        MOV #2, T0

        CALL #_AIC3204_rset ; |63| 
||      MOV #1, T1

                                        ; call occurs [#_AIC3204_rset] ; |63| 
        MOV #123, T0 ; |64| 

        CALL #_AIC3204_rset ; |64| 
||      MOV #5, T1

                                        ; call occurs [#_AIC3204_rset] ; |64| 
        MOV #50000, AR1 ; |65| 
        AND #0xffff, AR1, AC0 ; |65| 
        CALL #_EZDSP5535_waitusec ; |65| 
                                        ; call occurs [#_EZDSP5535_waitusec] ; |65| 
        MOV #0, T0

        CALL #_AIC3204_rset ; |66| 
||      MOV #0, T1

                                        ; call occurs [#_AIC3204_rset] ; |66| 
        MOV #27, T0 ; |69| 

        CALL #_AIC3204_rset ; |69| 
||      MOV #13, T1

                                        ; call occurs [#_AIC3204_rset] ; |69| 
        MOV #28, T0 ; |70| 

        CALL #_AIC3204_rset ; |70| 
||      MOV #0, T1

                                        ; call occurs [#_AIC3204_rset] ; |70| 
        MOV #4, T0

        CALL #_AIC3204_rset ; |71| 
||      MOV #3, T1

                                        ; call occurs [#_AIC3204_rset] ; |71| 
        MOV #6, T0

        CALL #_AIC3204_rset ; |72| 
||      MOV #7, T1

                                        ; call occurs [#_AIC3204_rset] ; |72| 
        MOV #7, T0

        CALL #_AIC3204_rset ; |73| 
||      MOV #6, T1

                                        ; call occurs [#_AIC3204_rset] ; |73| 
        MOV #144, T1 ; |74| 

        CALL #_AIC3204_rset ; |74| 
||      MOV #8, T0

                                        ; call occurs [#_AIC3204_rset] ; |74| 
        MOV #136, T1 ; |75| 
        MOV #30, T0 ; |75| 
        CALL #_AIC3204_rset ; |75| 
                                        ; call occurs [#_AIC3204_rset] ; |75| 
        MOV #145, T1 ; |77| 

        CALL #_AIC3204_rset ; |77| 
||      MOV #5, T0

                                        ; call occurs [#_AIC3204_rset] ; |77| 
        MOV #10000, AC0 ; |78| 
        CALL #_EZDSP5535_waitusec ; |78| 
                                        ; call occurs [#_EZDSP5535_waitusec] ; |78| 
        MOV #13, T0

        CALL #_AIC3204_rset ; |79| 
||      MOV #0, T1

                                        ; call occurs [#_AIC3204_rset] ; |79| 
        MOV #128, T1 ; |80| 

        CALL #_AIC3204_rset ; |80| 
||      MOV #14, T0

                                        ; call occurs [#_AIC3204_rset] ; |80| 
        MOV #128, T1 ; |81| 
        MOV #20, T0 ; |81| 
        CALL #_AIC3204_rset ; |81| 
                                        ; call occurs [#_AIC3204_rset] ; |81| 
        MOV #130, T1 ; |82| 

        CALL #_AIC3204_rset ; |82| 
||      MOV #11, T0

                                        ; call occurs [#_AIC3204_rset] ; |82| 
        MOV #135, T1 ; |83| 

        CALL #_AIC3204_rset ; |83| 
||      MOV #12, T0

                                        ; call occurs [#_AIC3204_rset] ; |83| 
        MOV #135, T1 ; |84| 
        MOV #18, T0 ; |84| 
        CALL #_AIC3204_rset ; |84| 
                                        ; call occurs [#_AIC3204_rset] ; |84| 
        MOV #130, T1 ; |85| 
        MOV #19, T0 ; |85| 
        CALL #_AIC3204_rset ; |85| 
                                        ; call occurs [#_AIC3204_rset] ; |85| 
        MOV #0, T0

        CALL #_AIC3204_rset ; |88| 
||      MOV #1, T1

                                        ; call occurs [#_AIC3204_rset] ; |88| 
        MOV #12, T0

        CALL #_AIC3204_rset ; |89| 
||      MOV #8, T1

                                        ; call occurs [#_AIC3204_rset] ; |89| 
        MOV #13, T0

        CALL #_AIC3204_rset ; |90| 
||      MOV #8, T1

                                        ; call occurs [#_AIC3204_rset] ; |90| 
        MOV #0, T0

        CALL #_AIC3204_rset ; |91| 
||      MOV #0, T1

                                        ; call occurs [#_AIC3204_rset] ; |91| 
        MOV #64, T0 ; |92| 

        CALL #_AIC3204_rset ; |92| 
||      MOV #2, T1

                                        ; call occurs [#_AIC3204_rset] ; |92| 
        MOV #65, T0 ; |93| 

        CALL #_AIC3204_rset ; |93| 
||      MOV #0, T1

                                        ; call occurs [#_AIC3204_rset] ; |93| 
        MOV #212, T1 ; |94| 
        MOV #63, T0 ; |94| 
        CALL #_AIC3204_rset ; |94| 
                                        ; call occurs [#_AIC3204_rset] ; |94| 
        MOV #0, T0

        CALL #_AIC3204_rset ; |95| 
||      MOV #1, T1

                                        ; call occurs [#_AIC3204_rset] ; |95| 
        MOV #16, T0 ; |96| 

        CALL #_AIC3204_rset ; |96| 
||      MOV #0, T1

                                        ; call occurs [#_AIC3204_rset] ; |96| 
        MOV #17, T0 ; |97| 

        CALL #_AIC3204_rset ; |97| 
||      MOV #0, T1

                                        ; call occurs [#_AIC3204_rset] ; |97| 
        MOV #48, T1 ; |98| 

        CALL #_AIC3204_rset ; |98| 
||      MOV #9, T0

                                        ; call occurs [#_AIC3204_rset] ; |98| 
        MOV #100, AC0 ; |99| 
        CALL #_EZDSP5535_waitusec ; |99| 
                                        ; call occurs [#_EZDSP5535_waitusec] ; |99| 
        MOV #0, T0

        CALL #_AIC3204_rset ; |102| 
||      MOV #1, T1

                                        ; call occurs [#_AIC3204_rset] ; |102| 
        MOV #48, T1 ; |103| 
        MOV #52, T0 ; |103| 
        CALL #_AIC3204_rset ; |103| 
                                        ; call occurs [#_AIC3204_rset] ; |103| 
        MOV #48, T1 ; |105| 
        MOV #55, T0 ; |105| 
        CALL #_AIC3204_rset ; |105| 
                                        ; call occurs [#_AIC3204_rset] ; |105| 
        MOV #54, T0 ; |106| 

        CALL #_AIC3204_rset ; |106| 
||      MOV #3, T1

                                        ; call occurs [#_AIC3204_rset] ; |106| 
        MOV #192, T1 ; |107| 
        MOV #57, T0 ; |107| 
        CALL #_AIC3204_rset ; |107| 
                                        ; call occurs [#_AIC3204_rset] ; |107| 
        MOV #59, T0 ; |108| 

        CALL #_AIC3204_rset ; |108| 
||      MOV #0, T1

                                        ; call occurs [#_AIC3204_rset] ; |108| 
        MOV #60, T0 ; |109| 

        CALL #_AIC3204_rset ; |109| 
||      MOV #0, T1

                                        ; call occurs [#_AIC3204_rset] ; |109| 
        MOV #0, T0

        CALL #_AIC3204_rset ; |110| 
||      MOV #0, T1

                                        ; call occurs [#_AIC3204_rset] ; |110| 
        MOV #192, T1 ; |111| 
        MOV #81, T0 ; |111| 
        CALL #_AIC3204_rset ; |111| 
                                        ; call occurs [#_AIC3204_rset] ; |111| 
        MOV #82, T0 ; |112| 

        CALL #_AIC3204_rset ; |112| 
||      MOV #0, T1

                                        ; call occurs [#_AIC3204_rset] ; |112| 
        MOV #0, T0

        CALL #_AIC3204_rset ; |113| 
||      MOV #0, T1

                                        ; call occurs [#_AIC3204_rset] ; |113| 
        MOV #100, AC0 ; |114| 
        CALL #_EZDSP5535_waitusec ; |114| 
                                        ; call occurs [#_EZDSP5535_waitusec] ; |114| 
        CALL #_EZDSP5535_I2S_init ; |117| 
                                        ; call occurs [#_EZDSP5535_I2S_init] ; |117| 
        MOV #120, AR5
$C$L1:    
        MOV #1000, T3
$C$L2:    
        MOV #48, T2
$C$L3:    
        AMAR *SP(#1), XAR0
        CALL #_EZDSP5535_I2S_readLeft ; |127| 
                                        ; call occurs [#_EZDSP5535_I2S_readLeft] ; |127| 
        AMAR *SP(#0), XAR0
        CALL #_EZDSP5535_I2S_readRight ; |130| 
                                        ; call occurs [#_EZDSP5535_I2S_readRight] ; |130| 
        MOV *SP(#1), T0 ; |136| 
        CALL #_EZDSP5535_I2S_writeLeft ; |136| 
                                        ; call occurs [#_EZDSP5535_I2S_writeLeft] ; |136| 
        MOV *SP(#0), T0 ; |139| 
        CALL #_EZDSP5535_I2S_writeRight ; |139| 
                                        ; call occurs [#_EZDSP5535_I2S_writeRight] ; |139| 
        SUB #1, T2 ; |124| 
        BCC $C$L3,T2 != #0 ; |124| 
                                        ; branchcc occurs ; |124| 
        SUB #1, T3 ; |122| 
        BCC $C$L2,T3 != #0 ; |122| 
                                        ; branchcc occurs ; |122| 
        SUB #1, AR5 ; |120| 
        BCC $C$L1,AR5 != #0 ; |120| 
                                        ; branchcc occurs ; |120| 
        CALL #_EZDSP5535_I2S_close ; |143| 
                                        ; call occurs [#_EZDSP5535_I2S_close] ; |143| 
        MOV #1, T0

        CALL #_AIC3204_rset ; |144| 
||      MOV #1, T1

                                        ; call occurs [#_AIC3204_rset] ; |144| 
        AADD #2, SP
        POPBOTH XAR5
        MOV #0, T0
        POP T3,T2
        RET
                                        ; return occurs
;******************************************************************************
;* UNDEFINED EXTERNAL REFERENCES                                              *
;******************************************************************************
	.global	_EZDSP5535_waitusec
	.global	_EZDSP5535_I2S_init
	.global	_EZDSP5535_I2S_readLeft
	.global	_EZDSP5535_I2S_writeLeft
	.global	_EZDSP5535_I2S_readRight
	.global	_EZDSP5535_I2S_writeRight
	.global	_EZDSP5535_I2S_close
	.global	_AIC3204_rset
