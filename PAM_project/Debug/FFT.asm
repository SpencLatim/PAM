;*******************************************************************************
;* TMS320C55x C/C++ Codegen                                          PC v4.4.1 *
;* Date/Time created: Thu May 30 09:34:08 2024                                 *
;*******************************************************************************
	.compiler_opts --hll_source=on --mem_model:code=flat --mem_model:data=large --object_format=coff --silicon_core_3_3 --symdebug:dwarf 
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
;*   Debug Info         : Standard TI Debug Information                        *
;*******************************************************************************

$C$DW$CU	.dwtag  DW_TAG_compile_unit
	.dwattr $C$DW$CU, DW_AT_name("../FFT/FFT.c")
	.dwattr $C$DW$CU, DW_AT_producer("TMS320C55x C/C++ Codegen PC v4.4.1 Copyright (c) 1996-2012 Texas Instruments Incorporated")
	.dwattr $C$DW$CU, DW_AT_TI_version(0x01)
	.dwattr $C$DW$CU, DW_AT_comp_dir("C:\Users\bacon\OneDrive\workspace_v6_1\PAM_project\Debug")

$C$DW$1	.dwtag  DW_TAG_subprogram, DW_AT_name("fabs")
	.dwattr $C$DW$1, DW_AT_TI_symbol_name("_fabs")
	.dwattr $C$DW$1, DW_AT_type(*$C$DW$T$17)
	.dwattr $C$DW$1, DW_AT_declaration
	.dwattr $C$DW$1, DW_AT_external
$C$DW$2	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$2, DW_AT_type(*$C$DW$T$17)
	.dwendtag $C$DW$1


$C$DW$3	.dwtag  DW_TAG_subprogram, DW_AT_name("sqrt")
	.dwattr $C$DW$3, DW_AT_TI_symbol_name("_sqrt")
	.dwattr $C$DW$3, DW_AT_type(*$C$DW$T$17)
	.dwattr $C$DW$3, DW_AT_declaration
	.dwattr $C$DW$3, DW_AT_external
$C$DW$4	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$4, DW_AT_type(*$C$DW$T$17)
	.dwendtag $C$DW$3


$C$DW$5	.dwtag  DW_TAG_subprogram, DW_AT_name("floor")
	.dwattr $C$DW$5, DW_AT_TI_symbol_name("_floor")
	.dwattr $C$DW$5, DW_AT_type(*$C$DW$T$17)
	.dwattr $C$DW$5, DW_AT_declaration
	.dwattr $C$DW$5, DW_AT_external
$C$DW$6	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$6, DW_AT_type(*$C$DW$T$17)
	.dwendtag $C$DW$5


$C$DW$7	.dwtag  DW_TAG_subprogram, DW_AT_name("rt_InitInfAndNaN")
	.dwattr $C$DW$7, DW_AT_TI_symbol_name("_rt_InitInfAndNaN")
	.dwattr $C$DW$7, DW_AT_declaration
	.dwattr $C$DW$7, DW_AT_external
$C$DW$8	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$8, DW_AT_type(*$C$DW$T$41)
	.dwendtag $C$DW$7


$C$DW$9	.dwtag  DW_TAG_subprogram, DW_AT_name("rtIsNaNF")
	.dwattr $C$DW$9, DW_AT_TI_symbol_name("_rtIsNaNF")
	.dwattr $C$DW$9, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$9, DW_AT_declaration
	.dwattr $C$DW$9, DW_AT_external
$C$DW$10	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$10, DW_AT_type(*$C$DW$T$19)
	.dwendtag $C$DW$9

$C$DW$11	.dwtag  DW_TAG_variable, DW_AT_name("FFT_ConstP")
	.dwattr $C$DW$11, DW_AT_TI_symbol_name("_FFT_ConstP")
	.dwattr $C$DW$11, DW_AT_type(*$C$DW$T$38)
	.dwattr $C$DW$11, DW_AT_declaration
	.dwattr $C$DW$11, DW_AT_external
	.global	_FFT_U
	.bss	_FFT_U,128,0,0
$C$DW$12	.dwtag  DW_TAG_variable, DW_AT_name("FFT_U")
	.dwattr $C$DW$12, DW_AT_TI_symbol_name("_FFT_U")
	.dwattr $C$DW$12, DW_AT_location[DW_OP_addr _FFT_U]
	.dwattr $C$DW$12, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$12, DW_AT_external
	.global	_FFT_Y
	.bss	_FFT_Y,128,0,0
$C$DW$13	.dwtag  DW_TAG_variable, DW_AT_name("FFT_Y")
	.dwattr $C$DW$13, DW_AT_TI_symbol_name("_FFT_Y")
	.dwattr $C$DW$13, DW_AT_location[DW_OP_addr _FFT_Y]
	.dwattr $C$DW$13, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$13, DW_AT_external
	.bss	_FFT_M_,2,0,2
$C$DW$14	.dwtag  DW_TAG_variable, DW_AT_name("FFT_M_")
	.dwattr $C$DW$14, DW_AT_TI_symbol_name("_FFT_M_")
	.dwattr $C$DW$14, DW_AT_type(*$C$DW$T$70)
	.dwattr $C$DW$14, DW_AT_location[DW_OP_addr _FFT_M_]
	.global	_FFT_M
	.sect	".const"
	.align	2
_FFT_M:
	.field	_FFT_M_,32		; _FFT_M @ 0

$C$DW$15	.dwtag  DW_TAG_variable, DW_AT_name("FFT_M")
	.dwattr $C$DW$15, DW_AT_TI_symbol_name("_FFT_M")
	.dwattr $C$DW$15, DW_AT_location[DW_OP_addr _FFT_M]
	.dwattr $C$DW$15, DW_AT_type(*$C$DW$T$72)
	.dwattr $C$DW$15, DW_AT_external
;	C:\ti\ccsv6\tools\compiler\c5500_4.4.1\bin\acp55.exe -@C:\\Users\\bacon\\AppData\\Local\\Temp\\1750012 
	.sect	".text"
	.global	_MWDSPCG_FFT_Interleave_R2BR_S

$C$DW$16	.dwtag  DW_TAG_subprogram, DW_AT_name("MWDSPCG_FFT_Interleave_R2BR_S")
	.dwattr $C$DW$16, DW_AT_low_pc(_MWDSPCG_FFT_Interleave_R2BR_S)
	.dwattr $C$DW$16, DW_AT_high_pc(0x00)
	.dwattr $C$DW$16, DW_AT_TI_symbol_name("_MWDSPCG_FFT_Interleave_R2BR_S")
	.dwattr $C$DW$16, DW_AT_external
	.dwattr $C$DW$16, DW_AT_TI_begin_file("../FFT/FFT.c")
	.dwattr $C$DW$16, DW_AT_TI_begin_line(0x20)
	.dwattr $C$DW$16, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$16, DW_AT_TI_max_frame_size(0x16)
	.dwpsn	file "../FFT/FFT.c",line 34,column 1,is_stmt,address _MWDSPCG_FFT_Interleave_R2BR_S

	.dwfde $C$DW$CIE, _MWDSPCG_FFT_Interleave_R2BR_S
$C$DW$17	.dwtag  DW_TAG_formal_parameter, DW_AT_name("x")
	.dwattr $C$DW$17, DW_AT_TI_symbol_name("_x")
	.dwattr $C$DW$17, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$17, DW_AT_location[DW_OP_reg17]
$C$DW$18	.dwtag  DW_TAG_formal_parameter, DW_AT_name("y")
	.dwattr $C$DW$18, DW_AT_TI_symbol_name("_y")
	.dwattr $C$DW$18, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$18, DW_AT_location[DW_OP_reg19]
$C$DW$19	.dwtag  DW_TAG_formal_parameter, DW_AT_name("nChans")
	.dwattr $C$DW$19, DW_AT_TI_symbol_name("_nChans")
	.dwattr $C$DW$19, DW_AT_type(*$C$DW$T$46)
	.dwattr $C$DW$19, DW_AT_location[DW_OP_reg0]
$C$DW$20	.dwtag  DW_TAG_formal_parameter, DW_AT_name("nRows")
	.dwattr $C$DW$20, DW_AT_TI_symbol_name("_nRows")
	.dwattr $C$DW$20, DW_AT_type(*$C$DW$T$46)
	.dwattr $C$DW$20, DW_AT_location[DW_OP_reg3]
;*******************************************************************************
;* FUNCTION NAME: MWDSPCG_FFT_Interleave_R2BR_S                                *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,AR0,XAR0,AR1,XAR1,AR3,XAR3,SP,    *
;*                        CARRY,TC1,M40,SATA,SATD,RDM,FRCT,SMUL                *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 22 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (20 local values)                                    *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_MWDSPCG_FFT_Interleave_R2BR_S:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-21, SP
	.dwcfi	cfa_offset, 22
$C$DW$21	.dwtag  DW_TAG_variable, DW_AT_name("x")
	.dwattr $C$DW$21, DW_AT_TI_symbol_name("_x")
	.dwattr $C$DW$21, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$21, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$22	.dwtag  DW_TAG_variable, DW_AT_name("y")
	.dwattr $C$DW$22, DW_AT_TI_symbol_name("_y")
	.dwattr $C$DW$22, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$22, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$23	.dwtag  DW_TAG_variable, DW_AT_name("nChans")
	.dwattr $C$DW$23, DW_AT_TI_symbol_name("_nChans")
	.dwattr $C$DW$23, DW_AT_type(*$C$DW$T$46)
	.dwattr $C$DW$23, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$24	.dwtag  DW_TAG_variable, DW_AT_name("nRows")
	.dwattr $C$DW$24, DW_AT_TI_symbol_name("_nRows")
	.dwattr $C$DW$24, DW_AT_type(*$C$DW$T$46)
	.dwattr $C$DW$24, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$25	.dwtag  DW_TAG_variable, DW_AT_name("bit_fftLen")
	.dwattr $C$DW$25, DW_AT_TI_symbol_name("_bit_fftLen")
	.dwattr $C$DW$25, DW_AT_type(*$C$DW$T$46)
	.dwattr $C$DW$25, DW_AT_location[DW_OP_bregx 0x24 8]
$C$DW$26	.dwtag  DW_TAG_variable, DW_AT_name("br_j")
	.dwattr $C$DW$26, DW_AT_TI_symbol_name("_br_j")
	.dwattr $C$DW$26, DW_AT_type(*$C$DW$T$46)
	.dwattr $C$DW$26, DW_AT_location[DW_OP_bregx 0x24 10]
$C$DW$27	.dwtag  DW_TAG_variable, DW_AT_name("j")
	.dwattr $C$DW$27, DW_AT_TI_symbol_name("_j")
	.dwattr $C$DW$27, DW_AT_type(*$C$DW$T$46)
	.dwattr $C$DW$27, DW_AT_location[DW_OP_bregx 0x24 12]
$C$DW$28	.dwtag  DW_TAG_variable, DW_AT_name("nChansBy2")
	.dwattr $C$DW$28, DW_AT_TI_symbol_name("_nChansBy2")
	.dwattr $C$DW$28, DW_AT_type(*$C$DW$T$46)
	.dwattr $C$DW$28, DW_AT_location[DW_OP_bregx 0x24 14]
$C$DW$29	.dwtag  DW_TAG_variable, DW_AT_name("uIdx")
	.dwattr $C$DW$29, DW_AT_TI_symbol_name("_uIdx")
	.dwattr $C$DW$29, DW_AT_type(*$C$DW$T$46)
	.dwattr $C$DW$29, DW_AT_location[DW_OP_bregx 0x24 16]
$C$DW$30	.dwtag  DW_TAG_variable, DW_AT_name("yIdx")
	.dwattr $C$DW$30, DW_AT_TI_symbol_name("_yIdx")
	.dwattr $C$DW$30, DW_AT_type(*$C$DW$T$46)
	.dwattr $C$DW$30, DW_AT_location[DW_OP_bregx 0x24 18]
        MOV AC1, dbl(*SP(#6)) ; |34| 
        MOV AC0, dbl(*SP(#4)) ; |34| 
        MOV XAR1, dbl(*SP(#2))
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "../FFT/FFT.c",line 47,column 3,is_stmt
        MOV #0, AC0 ; |47| 
        MOV AC0, dbl(*SP(#10)) ; |47| 
	.dwpsn	file "../FFT/FFT.c",line 48,column 3,is_stmt
        MOV AC0, dbl(*SP(#18)) ; |48| 
	.dwpsn	file "../FFT/FFT.c",line 49,column 3,is_stmt
        MOV AC0, dbl(*SP(#16)) ; |49| 
	.dwpsn	file "../FFT/FFT.c",line 50,column 8,is_stmt
        MOV dbl(*SP(#4)), AC0 ; |50| 
        SFTS AC0, #-1 ; |50| 
        MOV AC0, dbl(*SP(#14)) ; |50| 
	.dwpsn	file "../FFT/FFT.c",line 50,column 34,is_stmt
        MOV dbl(*SP(#14)), AC0 ; |50| 
        BCC $C$L5,AC0 == #0 ; |50| 
                                        ; branchcc occurs ; |50| 
$C$L1:    
$C$DW$L$_MWDSPCG_FFT_Interleave_R2BR_S$2$B:
	.dwpsn	file "../FFT/FFT.c",line 51,column 10,is_stmt
        MOV dbl(*SP(#6)), AC0 ; |51| 
        MOV AC0, dbl(*SP(#12)) ; |51| 
	.dwpsn	file "../FFT/FFT.c",line 51,column 21,is_stmt
        MOV dbl(*SP(#12)), AC0 ; |51| 
        SUB #1, AC0 ; |51| 
        BCC $C$L4,AC0 <= #0 ; |51| 
                                        ; branchcc occurs ; |51| 
$C$DW$L$_MWDSPCG_FFT_Interleave_R2BR_S$2$E:
$C$L2:    
$C$DW$L$_MWDSPCG_FFT_Interleave_R2BR_S$3$B:
	.dwpsn	file "../FFT/FFT.c",line 52,column 7,is_stmt
        MOV dbl(*SP(#10)), AC0 ; |52| 
        ADD dbl(*SP(#18)), AC0, AC0 ; |52| 
        MOV AC0, dbl(*SP(#8)) ; |52| 
	.dwpsn	file "../FFT/FFT.c",line 53,column 7,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *SP(#17), T0 ; |53| 
        SFTL T0, #1 ; |53| 
        MOV *SP(#9) << #2, AC0 ; |53| 

        MOV AC0, T0 ; |53| 
||      MOV dbl(*AR3(T0)), AC1 ; |53| 

        MOV dbl(*SP(#2)), XAR3
        MOV AC1, dbl(*AR3(T0)) ; |53| 
	.dwpsn	file "../FFT/FFT.c",line 54,column 7,is_stmt
        MOV dbl(*SP(#6)), AC0 ; |54| 
        MOV dbl(*SP(#0)), XAR3
        ADD dbl(*SP(#16)), AC0, AC0 ; |54| 
        MOV AC0, T0 ; |54| 
        SFTL T0, #1 ; |54| 
        MOV *SP(#9) << #2, AC0 ; |54| 
        MOV AC0, AR1 ; |54| 
        MOV dbl(*AR3(T0)), AC1 ; |54| 
        MOV dbl(*SP(#2)), XAR3
        AADD AR1, AR3 ; |54| 
        MOV AC1, dbl(*AR3(short(#2))) ; |54| 
	.dwpsn	file "../FFT/FFT.c",line 55,column 7,is_stmt
        MOV dbl(*SP(#16)), AC0 ; |55| 
        ADD #1, AC0 ; |55| 
        MOV AC0, dbl(*SP(#16)) ; |55| 
	.dwpsn	file "../FFT/FFT.c",line 58,column 7,is_stmt
        MOV dbl(*SP(#6)), AC0 ; |58| 
        MOV AC0, dbl(*SP(#8)) ; |58| 
$C$DW$L$_MWDSPCG_FFT_Interleave_R2BR_S$3$E:
$C$L3:    
$C$DW$L$_MWDSPCG_FFT_Interleave_R2BR_S$4$B:
	.dwpsn	file "../FFT/FFT.c",line 60,column 9,is_stmt
        MOV dbl(*SP(#8)), AC0 ; |60| 
        SFTL AC0, #-1 ; |60| 
        MOV AC0, dbl(*SP(#8)) ; |60| 
	.dwpsn	file "../FFT/FFT.c",line 61,column 9,is_stmt
        MOV dbl(*SP(#10)), AC1 ; |61| 
        MOV dbl(*SP(#8)), AC0 ; |61| 
        XOR AC1, AC0 ; |61| 
        MOV AC0, dbl(*SP(#10)) ; |61| 
	.dwpsn	file "../FFT/FFT.c",line 62,column 16,is_stmt
        MOV dbl(*SP(#10)), AC1 ; |62| 
        MOV dbl(*SP(#8)), AC0 ; |62| 
        AND AC1, AC0 ; |62| 
        BCC $C$L3,AC0 == #0 ; |62| 
                                        ; branchcc occurs ; |62| 
$C$DW$L$_MWDSPCG_FFT_Interleave_R2BR_S$4$E:
$C$DW$L$_MWDSPCG_FFT_Interleave_R2BR_S$5$B:
	.dwpsn	file "../FFT/FFT.c",line 51,column 34,is_stmt
        MOV dbl(*SP(#12)), AC0 ; |51| 
        SUB #1, AC0 ; |51| 
        MOV AC0, dbl(*SP(#12)) ; |51| 
	.dwpsn	file "../FFT/FFT.c",line 51,column 21,is_stmt
        MOV dbl(*SP(#12)), AC0 ; |51| 
        SUB #1, AC0 ; |51| 
        BCC $C$L2,AC0 > #0 ; |51| 
                                        ; branchcc occurs ; |51| 
$C$DW$L$_MWDSPCG_FFT_Interleave_R2BR_S$5$E:
$C$L4:    
$C$DW$L$_MWDSPCG_FFT_Interleave_R2BR_S$6$B:
	.dwpsn	file "../FFT/FFT.c",line 65,column 5,is_stmt
        MOV dbl(*SP(#10)), AC0 ; |65| 
        ADD dbl(*SP(#18)), AC0, AC0 ; |65| 
        MOV AC0, dbl(*SP(#8)) ; |65| 
	.dwpsn	file "../FFT/FFT.c",line 66,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *SP(#17), T0 ; |66| 
        SFTL T0, #1 ; |66| 
        MOV *SP(#9) << #2, AC0 ; |66| 

        MOV AC0, T0 ; |66| 
||      MOV dbl(*AR3(T0)), AC1 ; |66| 

        MOV dbl(*SP(#2)), XAR3
        MOV AC1, dbl(*AR3(T0)) ; |66| 
	.dwpsn	file "../FFT/FFT.c",line 67,column 5,is_stmt
        MOV dbl(*SP(#6)), AC0 ; |67| 
        ADD dbl(*SP(#16)), AC0, AC0 ; |67| 
        MOV AC0, dbl(*SP(#10)) ; |67| 
	.dwpsn	file "../FFT/FFT.c",line 68,column 5,is_stmt
        MOV *SP(#11), T0 ; |68| 
        SFTL T0, #1 ; |68| 
        MOV dbl(*SP(#0)), XAR3
        MOV *SP(#9) << #2, AC0 ; |68| 
        MOV AC0, AR1 ; |68| 
        MOV dbl(*AR3(T0)), AC1 ; |68| 
        MOV dbl(*SP(#2)), XAR3
        AADD AR1, AR3 ; |68| 
        MOV AC1, dbl(*AR3(short(#2))) ; |68| 
	.dwpsn	file "../FFT/FFT.c",line 69,column 5,is_stmt
        MOV dbl(*SP(#10)), AC0 ; |69| 
        ADD #1, AC0 ; |69| 
        MOV AC0, dbl(*SP(#16)) ; |69| 
	.dwpsn	file "../FFT/FFT.c",line 70,column 5,is_stmt
        MOV dbl(*SP(#6)), AC0 ; |70| 
        SFTL AC0, #1 ; |70| 
        ADD dbl(*SP(#18)), AC0, AC0 ; |70| 
        MOV AC0, dbl(*SP(#18)) ; |70| 
	.dwpsn	file "../FFT/FFT.c",line 71,column 5,is_stmt
        MOV #0, AC0 ; |71| 
        MOV AC0, dbl(*SP(#10)) ; |71| 
	.dwpsn	file "../FFT/FFT.c",line 50,column 51,is_stmt
        MOV dbl(*SP(#14)), AC0 ; |50| 
        SUB #1, AC0 ; |50| 
        MOV AC0, dbl(*SP(#14)) ; |50| 
	.dwpsn	file "../FFT/FFT.c",line 50,column 34,is_stmt
        MOV dbl(*SP(#14)), AC0 ; |50| 
        BCC $C$L1,AC0 != #0 ; |50| 
                                        ; branchcc occurs ; |50| 
$C$DW$L$_MWDSPCG_FFT_Interleave_R2BR_S$6$E:
$C$L5:    
	.dwpsn	file "../FFT/FFT.c",line 83,column 3,is_stmt
        BTST #0, *SP(#5), TC1 ; |83| 
        BCC $C$L9,!TC1 ; |83| 
                                        ; branchcc occurs ; |83| 
	.dwpsn	file "../FFT/FFT.c",line 84,column 10,is_stmt
        MOV dbl(*SP(#6)), AC0 ; |84| 
        SFTS AC0, #-1 ; |84| 
        MOV AC0, dbl(*SP(#12)) ; |84| 
	.dwpsn	file "../FFT/FFT.c",line 84,column 27,is_stmt
        MOV dbl(*SP(#12)), AC0 ; |84| 
        SUB #1, AC0 ; |84| 
        BCC $C$L8,AC0 <= #0 ; |84| 
                                        ; branchcc occurs ; |84| 
$C$L6:    
$C$DW$L$_MWDSPCG_FFT_Interleave_R2BR_S$9$B:
	.dwpsn	file "../FFT/FFT.c",line 85,column 7,is_stmt
        MOV dbl(*SP(#10)), AC0 ; |85| 
        ADD dbl(*SP(#18)), AC0, AC0 ; |85| 
        MOV AC0, dbl(*SP(#8)) ; |85| 
	.dwpsn	file "../FFT/FFT.c",line 86,column 7,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *SP(#17), T0 ; |86| 
        SFTL T0, #1 ; |86| 
        MOV *SP(#9) << #2, AC0 ; |86| 

        MOV AC0, T0 ; |86| 
||      MOV dbl(*AR3(T0)), AC1 ; |86| 

        MOV dbl(*SP(#2)), XAR3
        MOV AC1, dbl(*AR3(T0)) ; |86| 
	.dwpsn	file "../FFT/FFT.c",line 87,column 7,is_stmt
        MOV dbl(*SP(#16)), AC0 ; |87| 
        MOV dbl(*SP(#0)), XAR3
        ADD #1, AC0 ; |87| 
        MOV AC0, T0 ; |87| 
        SFTL T0, #1 ; |87| 
        MOV *SP(#9) << #2, AC0 ; |87| 
        MOV AC0, AR1 ; |87| 
        MOV dbl(*AR3(T0)), AC1 ; |87| 
        MOV dbl(*SP(#2)), XAR3
        AADD AR1, AR3 ; |87| 
        MOV AC1, dbl(*AR3(short(#2))) ; |87| 
	.dwpsn	file "../FFT/FFT.c",line 88,column 7,is_stmt
        MOV dbl(*SP(#16)), AC0 ; |88| 
        ADD #2, AC0 ; |88| 
        MOV AC0, dbl(*SP(#16)) ; |88| 
	.dwpsn	file "../FFT/FFT.c",line 91,column 7,is_stmt
        MOV dbl(*SP(#6)), AC0 ; |91| 
        SFTS AC0, #-1 ; |91| 
        MOV AC0, dbl(*SP(#8)) ; |91| 
$C$DW$L$_MWDSPCG_FFT_Interleave_R2BR_S$9$E:
$C$L7:    
$C$DW$L$_MWDSPCG_FFT_Interleave_R2BR_S$10$B:
	.dwpsn	file "../FFT/FFT.c",line 93,column 9,is_stmt
        MOV dbl(*SP(#8)), AC0 ; |93| 
        SFTL AC0, #-1 ; |93| 
        MOV AC0, dbl(*SP(#8)) ; |93| 
	.dwpsn	file "../FFT/FFT.c",line 94,column 9,is_stmt
        MOV dbl(*SP(#10)), AC1 ; |94| 
        MOV dbl(*SP(#8)), AC0 ; |94| 
        XOR AC1, AC0 ; |94| 
        MOV AC0, dbl(*SP(#10)) ; |94| 
	.dwpsn	file "../FFT/FFT.c",line 95,column 16,is_stmt
        MOV dbl(*SP(#10)), AC1 ; |95| 
        MOV dbl(*SP(#8)), AC0 ; |95| 
        AND AC1, AC0 ; |95| 
        BCC $C$L7,AC0 == #0 ; |95| 
                                        ; branchcc occurs ; |95| 
$C$DW$L$_MWDSPCG_FFT_Interleave_R2BR_S$10$E:
$C$DW$L$_MWDSPCG_FFT_Interleave_R2BR_S$11$B:
	.dwpsn	file "../FFT/FFT.c",line 84,column 40,is_stmt
        MOV dbl(*SP(#12)), AC0 ; |84| 
        SUB #1, AC0 ; |84| 
        MOV AC0, dbl(*SP(#12)) ; |84| 
	.dwpsn	file "../FFT/FFT.c",line 84,column 27,is_stmt
        MOV dbl(*SP(#12)), AC0 ; |84| 
        SUB #1, AC0 ; |84| 
        BCC $C$L6,AC0 > #0 ; |84| 
                                        ; branchcc occurs ; |84| 
$C$DW$L$_MWDSPCG_FFT_Interleave_R2BR_S$11$E:
$C$L8:    
	.dwpsn	file "../FFT/FFT.c",line 98,column 5,is_stmt
        MOV dbl(*SP(#10)), AC0 ; |98| 
        ADD dbl(*SP(#18)), AC0, AC0 ; |98| 
        MOV AC0, dbl(*SP(#8)) ; |98| 
	.dwpsn	file "../FFT/FFT.c",line 99,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *SP(#17), T0 ; |99| 
        SFTL T0, #1 ; |99| 
        MOV *SP(#9) << #2, AC0 ; |99| 

        MOV AC0, T0 ; |99| 
||      MOV dbl(*AR3(T0)), AC1 ; |99| 

        MOV dbl(*SP(#2)), XAR3
        MOV AC1, dbl(*AR3(T0)) ; |99| 
	.dwpsn	file "../FFT/FFT.c",line 100,column 5,is_stmt
        MOV dbl(*SP(#16)), AC0 ; |100| 
        MOV dbl(*SP(#0)), XAR3
        ADD #1, AC0 ; |100| 
        MOV AC0, T0 ; |100| 
        SFTL T0, #1 ; |100| 
        MOV *SP(#9) << #2, AC0 ; |100| 
        MOV AC0, AR1 ; |100| 
        MOV dbl(*AR3(T0)), AC1 ; |100| 
        MOV dbl(*SP(#2)), XAR3
        AADD AR1, AR3 ; |100| 
        MOV AC1, dbl(*AR3(short(#2))) ; |100| 
	.dwpsn	file "../FFT/FFT.c",line 104,column 1,is_stmt
$C$L9:    
        AADD #21, SP
	.dwcfi	cfa_offset, 1
$C$DW$31	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$31, DW_AT_low_pc(0x00)
	.dwattr $C$DW$31, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$32	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$32, DW_AT_name("C:\Users\bacon\OneDrive\workspace_v6_1\PAM_project\Debug\FFT.asm:$C$L6:1:1717079648")
	.dwattr $C$DW$32, DW_AT_TI_begin_file("../FFT/FFT.c")
	.dwattr $C$DW$32, DW_AT_TI_begin_line(0x54)
	.dwattr $C$DW$32, DW_AT_TI_end_line(0x60)
$C$DW$33	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$33, DW_AT_low_pc($C$DW$L$_MWDSPCG_FFT_Interleave_R2BR_S$9$B)
	.dwattr $C$DW$33, DW_AT_high_pc($C$DW$L$_MWDSPCG_FFT_Interleave_R2BR_S$9$E)
$C$DW$34	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$34, DW_AT_low_pc($C$DW$L$_MWDSPCG_FFT_Interleave_R2BR_S$11$B)
	.dwattr $C$DW$34, DW_AT_high_pc($C$DW$L$_MWDSPCG_FFT_Interleave_R2BR_S$11$E)

$C$DW$35	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$35, DW_AT_name("C:\Users\bacon\OneDrive\workspace_v6_1\PAM_project\Debug\FFT.asm:$C$L7:2:1717079648")
	.dwattr $C$DW$35, DW_AT_TI_begin_file("../FFT/FFT.c")
	.dwattr $C$DW$35, DW_AT_TI_begin_line(0x5c)
	.dwattr $C$DW$35, DW_AT_TI_end_line(0x5f)
$C$DW$36	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$36, DW_AT_low_pc($C$DW$L$_MWDSPCG_FFT_Interleave_R2BR_S$10$B)
	.dwattr $C$DW$36, DW_AT_high_pc($C$DW$L$_MWDSPCG_FFT_Interleave_R2BR_S$10$E)
	.dwendtag $C$DW$35

	.dwendtag $C$DW$32


$C$DW$37	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$37, DW_AT_name("C:\Users\bacon\OneDrive\workspace_v6_1\PAM_project\Debug\FFT.asm:$C$L1:1:1717079648")
	.dwattr $C$DW$37, DW_AT_TI_begin_file("../FFT/FFT.c")
	.dwattr $C$DW$37, DW_AT_TI_begin_line(0x32)
	.dwattr $C$DW$37, DW_AT_TI_end_line(0x48)
$C$DW$38	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$38, DW_AT_low_pc($C$DW$L$_MWDSPCG_FFT_Interleave_R2BR_S$2$B)
	.dwattr $C$DW$38, DW_AT_high_pc($C$DW$L$_MWDSPCG_FFT_Interleave_R2BR_S$2$E)
$C$DW$39	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$39, DW_AT_low_pc($C$DW$L$_MWDSPCG_FFT_Interleave_R2BR_S$6$B)
	.dwattr $C$DW$39, DW_AT_high_pc($C$DW$L$_MWDSPCG_FFT_Interleave_R2BR_S$6$E)

$C$DW$40	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$40, DW_AT_name("C:\Users\bacon\OneDrive\workspace_v6_1\PAM_project\Debug\FFT.asm:$C$L2:2:1717079648")
	.dwattr $C$DW$40, DW_AT_TI_begin_file("../FFT/FFT.c")
	.dwattr $C$DW$40, DW_AT_TI_begin_line(0x33)
	.dwattr $C$DW$40, DW_AT_TI_end_line(0x3f)
$C$DW$41	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$41, DW_AT_low_pc($C$DW$L$_MWDSPCG_FFT_Interleave_R2BR_S$3$B)
	.dwattr $C$DW$41, DW_AT_high_pc($C$DW$L$_MWDSPCG_FFT_Interleave_R2BR_S$3$E)
$C$DW$42	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$42, DW_AT_low_pc($C$DW$L$_MWDSPCG_FFT_Interleave_R2BR_S$5$B)
	.dwattr $C$DW$42, DW_AT_high_pc($C$DW$L$_MWDSPCG_FFT_Interleave_R2BR_S$5$E)

$C$DW$43	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$43, DW_AT_name("C:\Users\bacon\OneDrive\workspace_v6_1\PAM_project\Debug\FFT.asm:$C$L3:3:1717079648")
	.dwattr $C$DW$43, DW_AT_TI_begin_file("../FFT/FFT.c")
	.dwattr $C$DW$43, DW_AT_TI_begin_line(0x3b)
	.dwattr $C$DW$43, DW_AT_TI_end_line(0x3e)
$C$DW$44	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$44, DW_AT_low_pc($C$DW$L$_MWDSPCG_FFT_Interleave_R2BR_S$4$B)
	.dwattr $C$DW$44, DW_AT_high_pc($C$DW$L$_MWDSPCG_FFT_Interleave_R2BR_S$4$E)
	.dwendtag $C$DW$43

	.dwendtag $C$DW$40

	.dwendtag $C$DW$37

	.dwattr $C$DW$16, DW_AT_TI_end_file("../FFT/FFT.c")
	.dwattr $C$DW$16, DW_AT_TI_end_line(0x68)
	.dwattr $C$DW$16, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$16

	.sect	".text"
	.global	_MWDSPCG_R2DIT_TBLS_C

$C$DW$45	.dwtag  DW_TAG_subprogram, DW_AT_name("MWDSPCG_R2DIT_TBLS_C")
	.dwattr $C$DW$45, DW_AT_low_pc(_MWDSPCG_R2DIT_TBLS_C)
	.dwattr $C$DW$45, DW_AT_high_pc(0x00)
	.dwattr $C$DW$45, DW_AT_TI_symbol_name("_MWDSPCG_R2DIT_TBLS_C")
	.dwattr $C$DW$45, DW_AT_external
	.dwattr $C$DW$45, DW_AT_TI_begin_file("../FFT/FFT.c")
	.dwattr $C$DW$45, DW_AT_TI_begin_line(0x6a)
	.dwattr $C$DW$45, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$45, DW_AT_TI_max_frame_size(0x34)
	.dwpsn	file "../FFT/FFT.c",line 109,column 1,is_stmt,address _MWDSPCG_R2DIT_TBLS_C

	.dwfde $C$DW$CIE, _MWDSPCG_R2DIT_TBLS_C
$C$DW$46	.dwtag  DW_TAG_formal_parameter, DW_AT_name("y")
	.dwattr $C$DW$46, DW_AT_TI_symbol_name("_y")
	.dwattr $C$DW$46, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$46, DW_AT_location[DW_OP_reg17]
$C$DW$47	.dwtag  DW_TAG_formal_parameter, DW_AT_name("nChans")
	.dwattr $C$DW$47, DW_AT_TI_symbol_name("_nChans")
	.dwattr $C$DW$47, DW_AT_type(*$C$DW$T$46)
	.dwattr $C$DW$47, DW_AT_location[DW_OP_reg0]
$C$DW$48	.dwtag  DW_TAG_formal_parameter, DW_AT_name("nRows")
	.dwattr $C$DW$48, DW_AT_TI_symbol_name("_nRows")
	.dwattr $C$DW$48, DW_AT_type(*$C$DW$T$46)
	.dwattr $C$DW$48, DW_AT_location[DW_OP_reg3]
$C$DW$49	.dwtag  DW_TAG_formal_parameter, DW_AT_name("fftLen")
	.dwattr $C$DW$49, DW_AT_TI_symbol_name("_fftLen")
	.dwattr $C$DW$49, DW_AT_type(*$C$DW$T$46)
	.dwattr $C$DW$49, DW_AT_location[DW_OP_reg6]
$C$DW$50	.dwtag  DW_TAG_formal_parameter, DW_AT_name("offset")
	.dwattr $C$DW$50, DW_AT_TI_symbol_name("_offset")
	.dwattr $C$DW$50, DW_AT_type(*$C$DW$T$46)
	.dwattr $C$DW$50, DW_AT_location[DW_OP_bregx 0x24 52]
$C$DW$51	.dwtag  DW_TAG_formal_parameter, DW_AT_name("tablePtr")
	.dwattr $C$DW$51, DW_AT_TI_symbol_name("_tablePtr")
	.dwattr $C$DW$51, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$51, DW_AT_location[DW_OP_reg19]
$C$DW$52	.dwtag  DW_TAG_formal_parameter, DW_AT_name("twiddleStep")
	.dwattr $C$DW$52, DW_AT_TI_symbol_name("_twiddleStep")
	.dwattr $C$DW$52, DW_AT_type(*$C$DW$T$46)
	.dwattr $C$DW$52, DW_AT_location[DW_OP_bregx 0x24 54]
$C$DW$53	.dwtag  DW_TAG_formal_parameter, DW_AT_name("isInverse")
	.dwattr $C$DW$53, DW_AT_TI_symbol_name("_isInverse")
	.dwattr $C$DW$53, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$53, DW_AT_location[DW_OP_reg12]
;*******************************************************************************
;* FUNCTION NAME: MWDSPCG_R2DIT_TBLS_C                                         *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,AC2,AC2,T0,T2,AR0,XAR0,AR1,XAR1,AR3, *
;*                        XAR3,AR5,XAR5,SP,CARRY,TC1,M40,SATA,SATD,RDM,FRCT,   *
;*                        SMUL                                                 *
;*   Save On Entry Regs : T2,AR5                                               *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 52 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (48 local values)                                    *
;*                        (2 register save area)                               *
;*   Min System Stack   : 2 words                                              *
;*******************************************************************************
_MWDSPCG_R2DIT_TBLS_C:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        PSH T2
	.dwcfi	cfa_offset, 2
	.dwcfi	save_reg_to_mem, 14, -2
        PSHBOTH XAR5
	.dwcfi	cfa_offset, 3
	.dwcfi	save_reg_to_mem, 26, -3
        AADD #-49, SP
	.dwcfi	cfa_offset, 52
$C$DW$54	.dwtag  DW_TAG_variable, DW_AT_name("y")
	.dwattr $C$DW$54, DW_AT_TI_symbol_name("_y")
	.dwattr $C$DW$54, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$54, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$55	.dwtag  DW_TAG_variable, DW_AT_name("nChans")
	.dwattr $C$DW$55, DW_AT_TI_symbol_name("_nChans")
	.dwattr $C$DW$55, DW_AT_type(*$C$DW$T$46)
	.dwattr $C$DW$55, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$56	.dwtag  DW_TAG_variable, DW_AT_name("nRows")
	.dwattr $C$DW$56, DW_AT_TI_symbol_name("_nRows")
	.dwattr $C$DW$56, DW_AT_type(*$C$DW$T$46)
	.dwattr $C$DW$56, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$57	.dwtag  DW_TAG_variable, DW_AT_name("fftLen")
	.dwattr $C$DW$57, DW_AT_TI_symbol_name("_fftLen")
	.dwattr $C$DW$57, DW_AT_type(*$C$DW$T$46)
	.dwattr $C$DW$57, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$58	.dwtag  DW_TAG_variable, DW_AT_name("tablePtr")
	.dwattr $C$DW$58, DW_AT_TI_symbol_name("_tablePtr")
	.dwattr $C$DW$58, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$58, DW_AT_location[DW_OP_bregx 0x24 8]
$C$DW$59	.dwtag  DW_TAG_variable, DW_AT_name("isInverse")
	.dwattr $C$DW$59, DW_AT_TI_symbol_name("_isInverse")
	.dwattr $C$DW$59, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$59, DW_AT_location[DW_OP_bregx 0x24 10]
$C$DW$60	.dwtag  DW_TAG_variable, DW_AT_name("i1")
	.dwattr $C$DW$60, DW_AT_TI_symbol_name("_i1")
	.dwattr $C$DW$60, DW_AT_type(*$C$DW$T$46)
	.dwattr $C$DW$60, DW_AT_location[DW_OP_bregx 0x24 12]
$C$DW$61	.dwtag  DW_TAG_variable, DW_AT_name("i2")
	.dwattr $C$DW$61, DW_AT_TI_symbol_name("_i2")
	.dwattr $C$DW$61, DW_AT_type(*$C$DW$T$46)
	.dwattr $C$DW$61, DW_AT_location[DW_OP_bregx 0x24 14]
$C$DW$62	.dwtag  DW_TAG_variable, DW_AT_name("iCh")
	.dwattr $C$DW$62, DW_AT_TI_symbol_name("_iCh")
	.dwattr $C$DW$62, DW_AT_type(*$C$DW$T$46)
	.dwattr $C$DW$62, DW_AT_location[DW_OP_bregx 0x24 16]
$C$DW$63	.dwtag  DW_TAG_variable, DW_AT_name("idelta")
	.dwattr $C$DW$63, DW_AT_TI_symbol_name("_idelta")
	.dwattr $C$DW$63, DW_AT_type(*$C$DW$T$46)
	.dwattr $C$DW$63, DW_AT_location[DW_OP_bregx 0x24 18]
$C$DW$64	.dwtag  DW_TAG_variable, DW_AT_name("istart")
	.dwattr $C$DW$64, DW_AT_TI_symbol_name("_istart")
	.dwattr $C$DW$64, DW_AT_type(*$C$DW$T$46)
	.dwattr $C$DW$64, DW_AT_location[DW_OP_bregx 0x24 20]
$C$DW$65	.dwtag  DW_TAG_variable, DW_AT_name("ix")
	.dwattr $C$DW$65, DW_AT_TI_symbol_name("_ix")
	.dwattr $C$DW$65, DW_AT_type(*$C$DW$T$46)
	.dwattr $C$DW$65, DW_AT_location[DW_OP_bregx 0x24 22]
$C$DW$66	.dwtag  DW_TAG_variable, DW_AT_name("j")
	.dwattr $C$DW$66, DW_AT_TI_symbol_name("_j")
	.dwattr $C$DW$66, DW_AT_type(*$C$DW$T$46)
	.dwattr $C$DW$66, DW_AT_location[DW_OP_bregx 0x24 24]
$C$DW$67	.dwtag  DW_TAG_variable, DW_AT_name("k")
	.dwattr $C$DW$67, DW_AT_TI_symbol_name("_k")
	.dwattr $C$DW$67, DW_AT_type(*$C$DW$T$46)
	.dwattr $C$DW$67, DW_AT_location[DW_OP_bregx 0x24 26]
$C$DW$68	.dwtag  DW_TAG_variable, DW_AT_name("kratio")
	.dwattr $C$DW$68, DW_AT_TI_symbol_name("_kratio")
	.dwattr $C$DW$68, DW_AT_type(*$C$DW$T$46)
	.dwattr $C$DW$68, DW_AT_location[DW_OP_bregx 0x24 28]
$C$DW$69	.dwtag  DW_TAG_variable, DW_AT_name("nHalf")
	.dwattr $C$DW$69, DW_AT_TI_symbol_name("_nHalf")
	.dwattr $C$DW$69, DW_AT_type(*$C$DW$T$46)
	.dwattr $C$DW$69, DW_AT_location[DW_OP_bregx 0x24 30]
$C$DW$70	.dwtag  DW_TAG_variable, DW_AT_name("nQtr")
	.dwattr $C$DW$70, DW_AT_TI_symbol_name("_nQtr")
	.dwattr $C$DW$70, DW_AT_type(*$C$DW$T$46)
	.dwattr $C$DW$70, DW_AT_location[DW_OP_bregx 0x24 32]
$C$DW$71	.dwtag  DW_TAG_variable, DW_AT_name("offsetCh")
	.dwattr $C$DW$71, DW_AT_TI_symbol_name("_offsetCh")
	.dwattr $C$DW$71, DW_AT_type(*$C$DW$T$46)
	.dwattr $C$DW$71, DW_AT_location[DW_OP_bregx 0x24 34]
$C$DW$72	.dwtag  DW_TAG_variable, DW_AT_name("tmp_im")
	.dwattr $C$DW$72, DW_AT_TI_symbol_name("_tmp_im")
	.dwattr $C$DW$72, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$72, DW_AT_location[DW_OP_bregx 0x24 36]
$C$DW$73	.dwtag  DW_TAG_variable, DW_AT_name("tmp_re")
	.dwattr $C$DW$73, DW_AT_TI_symbol_name("_tmp_re")
	.dwattr $C$DW$73, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$73, DW_AT_location[DW_OP_bregx 0x24 38]
$C$DW$74	.dwtag  DW_TAG_variable, DW_AT_name("twidIm")
	.dwattr $C$DW$74, DW_AT_TI_symbol_name("_twidIm")
	.dwattr $C$DW$74, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$74, DW_AT_location[DW_OP_bregx 0x24 40]
$C$DW$75	.dwtag  DW_TAG_variable, DW_AT_name("twidRe")
	.dwattr $C$DW$75, DW_AT_TI_symbol_name("_twidRe")
	.dwattr $C$DW$75, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$75, DW_AT_location[DW_OP_bregx 0x24 42]
$C$DW$76	.dwtag  DW_TAG_variable, DW_AT_name("fwdInvFactor")
	.dwattr $C$DW$76, DW_AT_TI_symbol_name("_fwdInvFactor")
	.dwattr $C$DW$76, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$76, DW_AT_location[DW_OP_bregx 0x24 44]
        MOV T0, *SP(#10) ; |109| 
        MOV XAR1, dbl(*SP(#8))
        MOV AC2, dbl(*SP(#6)) ; |109| 
        MOV AC1, dbl(*SP(#4)) ; |109| 
        MOV AC0, dbl(*SP(#2)) ; |109| 
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "../FFT/FFT.c",line 132,column 3,is_stmt
        MOV dbl(*SP(#54)), AC1 ; |132| 
        MOV dbl(*SP(#6)), AC0 ; |132| 
$C$DW$77	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$77, DW_AT_low_pc(0x00)
	.dwattr $C$DW$77, DW_AT_name("__mpyli")
	.dwattr $C$DW$77, DW_AT_TI_call

        CALL #__mpyli ; |132| 
||      SFTS AC0, #-1, AC0 ; |132| 

                                        ; call occurs [#__mpyli] ; |132| 
        MOV AC0, dbl(*SP(#30)) ; |132| 
	.dwpsn	file "../FFT/FFT.c",line 133,column 3,is_stmt
        MOV dbl(*SP(#30)), AC0 ; |133| 
        SFTS AC0, #-1 ; |133| 
        MOV AC0, dbl(*SP(#32)) ; |133| 
	.dwpsn	file "../FFT/FFT.c",line 134,column 3,is_stmt
        MOV *SP(#10), AR1 ; |134| 
        BCC $C$L10,AR1 == #0 ; |134| 
                                        ; branchcc occurs ; |134| 

        B $C$L11  ; |134| 
||      MOV #-1, AR1

                                        ; branch occurs ; |134| 
$C$L10:    
        MOV #1, AR1
$C$L11:    
        MOV AR1, *SP(#44) ; |134| 
	.dwpsn	file "../FFT/FFT.c",line 137,column 3,is_stmt
        MOV dbl(*SP(#52)), AC0 ; |137| 
        MOV AC0, dbl(*SP(#34)) ; |137| 
	.dwpsn	file "../FFT/FFT.c",line 138,column 8,is_stmt
        MOV #0, AC0 ; |138| 
        MOV AC0, dbl(*SP(#16)) ; |138| 
	.dwpsn	file "../FFT/FFT.c",line 138,column 18,is_stmt
        MOV dbl(*SP(#16)), AC1 ; |138| 
        MOV dbl(*SP(#2)), AC0 ; |138| 
        CMP AC1 >= AC0, TC1 ; |138| 
        BCC $C$L23,TC1 ; |138| 
                                        ; branchcc occurs ; |138| 
$C$L12:    
$C$DW$L$_MWDSPCG_R2DIT_TBLS_C$5$B:
	.dwpsn	file "../FFT/FFT.c",line 140,column 10,is_stmt
        MOV dbl(*SP(#34)), AC0 ; |140| 
        MOV AC0, dbl(*SP(#22)) ; |140| 
	.dwpsn	file "../FFT/FFT.c",line 140,column 25,is_stmt
        MOV dbl(*SP(#34)), AC0 ; |140| 
        ADD dbl(*SP(#6)), AC0, AC0 ; |140| 

        SUB #1, AC0 ; |140| 
||      MOV dbl(*SP(#22)), AC1 ; |140| 

        CMP AC1 >= AC0, TC1 ; |140| 
        BCC $C$L14,TC1 ; |140| 
                                        ; branchcc occurs ; |140| 
$C$DW$L$_MWDSPCG_R2DIT_TBLS_C$5$E:
$C$L13:    
$C$DW$L$_MWDSPCG_R2DIT_TBLS_C$6$B:
	.dwpsn	file "../FFT/FFT.c",line 141,column 7,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*SP(#22)), AC0 ; |141| 
        ADD #1, AC0 ; |141| 
        SFTS AC0, #2, AC0 ; |141| 
        MOV AC0, T0 ; |141| 
        MOV dbl(*AR3(T0)), AC0 ; |141| 
        MOV AC0, dbl(*SP(#38)) ; |141| 
	.dwpsn	file "../FFT/FFT.c",line 142,column 7,is_stmt
        MOV dbl(*SP(#22)), AC0 ; |142| 
        ADD #1, AC0 ; |142| 
        SFTS AC0, #2, AC0 ; |142| 
        MOV AC0, AR1 ; |142| 
        AADD AR1, AR3 ; |142| 
        MOV dbl(*AR3(short(#2))), AC0 ; |142| 
        MOV AC0, dbl(*SP(#36)) ; |142| 
	.dwpsn	file "../FFT/FFT.c",line 143,column 7,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *SP(#23) << #2, AC0 ; |143| 
        MOV AC0, T0 ; |143| 
        MOV dbl(*SP(#22)), AC1 ; |143| 
        ADD #1, AC1 ; |143| 
        SFTS AC1, #2, AC1 ; |143| 

        MOV AC1, T0 ; |143| 
||      MOV dbl(*AR3(T0)), AC0 ; |143| 

        MOV dbl(*AR3(T0)), AC1 ; |143| 
$C$DW$78	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$78, DW_AT_low_pc(0x00)
	.dwattr $C$DW$78, DW_AT_name("__subd")
	.dwattr $C$DW$78, DW_AT_TI_call
        CALL #__subd ; |143| 
                                        ; call occurs [#__subd] ; |143| 
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*SP(#22)), AC1 ; |143| 
        ADD #1, AC1 ; |143| 
        SFTS AC1, #2, AC1 ; |143| 
        MOV AC1, T0 ; |143| 
        MOV AC0, dbl(*AR3(T0)) ; |143| 
	.dwpsn	file "../FFT/FFT.c",line 144,column 7,is_stmt
        MOV *SP(#23) << #2, AC0 ; |144| 
        MOV dbl(*SP(#0)), XAR3
        MOV AC0, AR1 ; |144| 
        MOV dbl(*SP(#22)), AC1 ; |144| 
        ADD #1, AC1 ; |144| 
        SFTS AC1, #2, AC1 ; |144| 

        MOV AC1, AR1 ; |144| 
||      AADD AR1, AR3 ; |144| 

        MOV dbl(*AR3(short(#2))), AC0 ; |144| 
        MOV dbl(*SP(#0)), XAR3
        AADD AR1, AR3 ; |144| 
        MOV dbl(*AR3(short(#2))), AC1 ; |144| 
$C$DW$79	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$79, DW_AT_low_pc(0x00)
	.dwattr $C$DW$79, DW_AT_name("__subd")
	.dwattr $C$DW$79, DW_AT_TI_call
        CALL #__subd ; |144| 
                                        ; call occurs [#__subd] ; |144| 
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*SP(#22)), AC1 ; |144| 
        ADD #1, AC1 ; |144| 
        SFTS AC1, #2, AC1 ; |144| 
        MOV AC1, AR1 ; |144| 
        AADD AR1, AR3 ; |144| 
        MOV AC0, dbl(*AR3(short(#2))) ; |144| 
	.dwpsn	file "../FFT/FFT.c",line 145,column 7,is_stmt
        MOV dbl(*SP(#0)), XAR5
        MOV *SP(#23) << #2, AC0 ; |145| 
        MOV AC0, T2 ; |145| 
        MOV T2, T0 ; |145| 
        MOV dbl(*SP(#38)), AC1 ; |145| 
        MOV dbl(*AR5(T0)), AC0 ; |145| 
$C$DW$80	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$80, DW_AT_low_pc(0x00)
	.dwattr $C$DW$80, DW_AT_name("__addd")
	.dwattr $C$DW$80, DW_AT_TI_call
        CALL #__addd ; |145| 
                                        ; call occurs [#__addd] ; |145| 
        MOV T2, T0 ; |145| 
        MOV AC0, dbl(*AR5(T0)) ; |145| 
	.dwpsn	file "../FFT/FFT.c",line 146,column 7,is_stmt
        MOV dbl(*SP(#0)), XAR5
        MOV *SP(#23) << #2, AC0 ; |146| 
        MOV AC0, AR1 ; |146| 

        AADD AR1, AR5 ; |146| 
||      MOV dbl(*SP(#36)), AC1 ; |146| 

        MOV dbl(*AR5(short(#2))), AC0 ; |146| 
$C$DW$81	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$81, DW_AT_low_pc(0x00)
	.dwattr $C$DW$81, DW_AT_name("__addd")
	.dwattr $C$DW$81, DW_AT_TI_call
        CALL #__addd ; |146| 
                                        ; call occurs [#__addd] ; |146| 
        MOV AC0, dbl(*AR5(short(#2))) ; |146| 
	.dwpsn	file "../FFT/FFT.c",line 140,column 56,is_stmt
        MOV dbl(*SP(#22)), AC0 ; |140| 
        ADD #2, AC0 ; |140| 
        MOV AC0, dbl(*SP(#22)) ; |140| 
	.dwpsn	file "../FFT/FFT.c",line 140,column 25,is_stmt
        MOV dbl(*SP(#34)), AC0 ; |140| 
        ADD dbl(*SP(#6)), AC0, AC0 ; |140| 

        SUB #1, AC0 ; |140| 
||      MOV dbl(*SP(#22)), AC1 ; |140| 

        CMP AC1 < AC0, TC1 ; |140| 
        BCC $C$L13,TC1 ; |140| 
                                        ; branchcc occurs ; |140| 
$C$DW$L$_MWDSPCG_R2DIT_TBLS_C$6$E:
$C$L14:    
$C$DW$L$_MWDSPCG_R2DIT_TBLS_C$7$B:
	.dwpsn	file "../FFT/FFT.c",line 149,column 5,is_stmt
        MOV #2, AC0 ; |149| 
        MOV AC0, dbl(*SP(#18)) ; |149| 
	.dwpsn	file "../FFT/FFT.c",line 150,column 5,is_stmt
        MOV dbl(*SP(#6)), AC0 ; |150| 
        SFTS AC0, #-2, AC0 ; |150| 
        MOV AC0, dbl(*SP(#26)) ; |150| 
	.dwpsn	file "../FFT/FFT.c",line 151,column 5,is_stmt
        MOV dbl(*SP(#54)), AC1 ; |151| 
        MOV dbl(*SP(#26)), AC0 ; |151| 
$C$DW$82	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$82, DW_AT_low_pc(0x00)
	.dwattr $C$DW$82, DW_AT_name("__mpyli")
	.dwattr $C$DW$82, DW_AT_TI_call
        CALL #__mpyli ; |151| 
                                        ; call occurs [#__mpyli] ; |151| 
        MOV AC0, dbl(*SP(#28)) ; |151| 
	.dwpsn	file "../FFT/FFT.c",line 152,column 12,is_stmt
        MOV dbl(*SP(#26)), AC0 ; |152| 
        BCC $C$L22,AC0 <= #0 ; |152| 
                                        ; branchcc occurs ; |152| 
$C$DW$L$_MWDSPCG_R2DIT_TBLS_C$7$E:
$C$L15:    
$C$DW$L$_MWDSPCG_R2DIT_TBLS_C$8$B:
	.dwpsn	file "../FFT/FFT.c",line 153,column 7,is_stmt
        MOV dbl(*SP(#34)), AC0 ; |153| 
        MOV AC0, dbl(*SP(#12)) ; |153| 
	.dwpsn	file "../FFT/FFT.c",line 156,column 12,is_stmt
        MOV #0, AC0 ; |156| 
        MOV AC0, dbl(*SP(#22)) ; |156| 
	.dwpsn	file "../FFT/FFT.c",line 156,column 21,is_stmt
        MOV dbl(*SP(#22)), AC1 ; |156| 
        MOV dbl(*SP(#26)), AC0 ; |156| 
        CMP AC1 >= AC0, TC1 ; |156| 
        BCC $C$L17,TC1 ; |156| 
                                        ; branchcc occurs ; |156| 
$C$DW$L$_MWDSPCG_R2DIT_TBLS_C$8$E:
$C$L16:    
$C$DW$L$_MWDSPCG_R2DIT_TBLS_C$9$B:
	.dwpsn	file "../FFT/FFT.c",line 157,column 9,is_stmt
        MOV dbl(*SP(#18)), AC0 ; |157| 
        ADD dbl(*SP(#12)), AC0, AC0 ; |157| 
        MOV AC0, dbl(*SP(#14)) ; |157| 
	.dwpsn	file "../FFT/FFT.c",line 158,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *SP(#15) << #2, AC0 ; |158| 
        MOV AC0, T0 ; |158| 
        MOV dbl(*AR3(T0)), AC0 ; |158| 
        MOV AC0, dbl(*SP(#38)) ; |158| 
	.dwpsn	file "../FFT/FFT.c",line 159,column 9,is_stmt
        MOV *SP(#15) << #2, AC0 ; |159| 
        MOV AC0, AR1 ; |159| 
        AADD AR1, AR3 ; |159| 
        MOV dbl(*AR3(short(#2))), AC0 ; |159| 
        MOV AC0, dbl(*SP(#36)) ; |159| 
	.dwpsn	file "../FFT/FFT.c",line 160,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *SP(#13) << #2, AC0 ; |160| 
        MOV AC0, T0 ; |160| 
        MOV *SP(#15) << #2, AC1 ; |160| 

        MOV AC1, T0 ; |160| 
||      MOV dbl(*AR3(T0)), AC0 ; |160| 

        MOV dbl(*AR3(T0)), AC1 ; |160| 
$C$DW$83	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$83, DW_AT_low_pc(0x00)
	.dwattr $C$DW$83, DW_AT_name("__subd")
	.dwattr $C$DW$83, DW_AT_TI_call
        CALL #__subd ; |160| 
                                        ; call occurs [#__subd] ; |160| 
        MOV dbl(*SP(#0)), XAR3
        MOV *SP(#15) << #2, AC1 ; |160| 
        MOV AC1, T0 ; |160| 
        MOV AC0, dbl(*AR3(T0)) ; |160| 
	.dwpsn	file "../FFT/FFT.c",line 161,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *SP(#13) << #2, AC0 ; |161| 
        MOV AC0, AR1 ; |161| 
        MOV *SP(#15) << #2, AC1 ; |161| 

        MOV AC1, AR1 ; |161| 
||      AADD AR1, AR3 ; |161| 

        MOV dbl(*AR3(short(#2))), AC0 ; |161| 
        MOV dbl(*SP(#0)), XAR3
        AADD AR1, AR3 ; |161| 
        MOV dbl(*AR3(short(#2))), AC1 ; |161| 
$C$DW$84	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$84, DW_AT_low_pc(0x00)
	.dwattr $C$DW$84, DW_AT_name("__subd")
	.dwattr $C$DW$84, DW_AT_TI_call
        CALL #__subd ; |161| 
                                        ; call occurs [#__subd] ; |161| 
        MOV dbl(*SP(#0)), XAR3
        MOV *SP(#15) << #2, AC1 ; |161| 
        MOV AC1, AR1 ; |161| 
        AADD AR1, AR3 ; |161| 
        MOV AC0, dbl(*AR3(short(#2))) ; |161| 
	.dwpsn	file "../FFT/FFT.c",line 162,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR5
        MOV *SP(#13) << #2, AC0 ; |162| 
        MOV AC0, T2 ; |162| 
        MOV T2, T0 ; |162| 
        MOV dbl(*SP(#38)), AC1 ; |162| 
        MOV dbl(*AR5(T0)), AC0 ; |162| 
$C$DW$85	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$85, DW_AT_low_pc(0x00)
	.dwattr $C$DW$85, DW_AT_name("__addd")
	.dwattr $C$DW$85, DW_AT_TI_call
        CALL #__addd ; |162| 
                                        ; call occurs [#__addd] ; |162| 
        MOV T2, T0 ; |162| 
        MOV AC0, dbl(*AR5(T0)) ; |162| 
	.dwpsn	file "../FFT/FFT.c",line 163,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR5
        MOV *SP(#13) << #2, AC0 ; |163| 
        MOV AC0, AR1 ; |163| 

        AADD AR1, AR5 ; |163| 
||      MOV dbl(*SP(#36)), AC1 ; |163| 

        MOV dbl(*AR5(short(#2))), AC0 ; |163| 
$C$DW$86	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$86, DW_AT_low_pc(0x00)
	.dwattr $C$DW$86, DW_AT_name("__addd")
	.dwattr $C$DW$86, DW_AT_TI_call
        CALL #__addd ; |163| 
                                        ; call occurs [#__addd] ; |163| 
        MOV AC0, dbl(*AR5(short(#2))) ; |163| 
	.dwpsn	file "../FFT/FFT.c",line 164,column 9,is_stmt
        MOV dbl(*SP(#18)), AC0 ; |164| 
        SFTL AC0, #1 ; |164| 
        ADD dbl(*SP(#12)), AC0, AC0 ; |164| 
        MOV AC0, dbl(*SP(#12)) ; |164| 
	.dwpsn	file "../FFT/FFT.c",line 156,column 29,is_stmt
        MOV dbl(*SP(#22)), AC0 ; |156| 
        ADD #1, AC0 ; |156| 
        MOV AC0, dbl(*SP(#22)) ; |156| 
	.dwpsn	file "../FFT/FFT.c",line 156,column 21,is_stmt
        MOV dbl(*SP(#26)), AC0 ; |156| 
        MOV dbl(*SP(#22)), AC1 ; |156| 
        CMP AC1 < AC0, TC1 ; |156| 
        BCC $C$L16,TC1 ; |156| 
                                        ; branchcc occurs ; |156| 
$C$DW$L$_MWDSPCG_R2DIT_TBLS_C$9$E:
$C$L17:    
$C$DW$L$_MWDSPCG_R2DIT_TBLS_C$10$B:
	.dwpsn	file "../FFT/FFT.c",line 167,column 7,is_stmt
        MOV dbl(*SP(#34)), AC0 ; |167| 
        MOV AC0, dbl(*SP(#20)) ; |167| 
	.dwpsn	file "../FFT/FFT.c",line 170,column 12,is_stmt
        MOV dbl(*SP(#28)), AC0 ; |170| 
        MOV AC0, dbl(*SP(#24)) ; |170| 
	.dwpsn	file "../FFT/FFT.c",line 170,column 24,is_stmt
        MOV dbl(*SP(#24)), AC1 ; |170| 
        MOV dbl(*SP(#30)), AC0 ; |170| 
        CMP AC1 >= AC0, TC1 ; |170| 
        BCC $C$L21,TC1 ; |170| 
                                        ; branchcc occurs ; |170| 
$C$DW$L$_MWDSPCG_R2DIT_TBLS_C$10$E:
$C$L18:    
$C$DW$L$_MWDSPCG_R2DIT_TBLS_C$11$B:
	.dwpsn	file "../FFT/FFT.c",line 171,column 9,is_stmt
        MOV dbl(*SP(#20)), AC0 ; |171| 
        ADD #1, AC0 ; |171| 
        MOV AC0, dbl(*SP(#12)) ; |171| 
	.dwpsn	file "../FFT/FFT.c",line 172,column 9,is_stmt
        MOV dbl(*SP(#8)), XAR3
        MOV *SP(#25), T0 ; |172| 
        SFTL T0, #1 ; |172| 
        MOV dbl(*AR3(T0)), AC0 ; |172| 
        MOV AC0, dbl(*SP(#42)) ; |172| 
	.dwpsn	file "../FFT/FFT.c",line 173,column 9,is_stmt
        MOV *SP(#44), T0 ; |173| 
$C$DW$87	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$87, DW_AT_low_pc(0x00)
	.dwattr $C$DW$87, DW_AT_name("__fltid")
	.dwattr $C$DW$87, DW_AT_TI_call
        CALL #__fltid ; |173| 
                                        ; call occurs [#__fltid] ; |173| 
        MOV dbl(*SP(#8)), XAR3

        MOV dbl(*SP(#32)), AC0 ; |173| 
||      OR #0, AC0, AC1

        ADD dbl(*SP(#24)), AC0, AC0 ; |173| 
        MOV AC0, T0 ; |173| 
        SFTL T0, #1 ; |173| 
        MOV dbl(*AR3(T0)), AC0 ; |173| 
$C$DW$88	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$88, DW_AT_low_pc(0x00)
	.dwattr $C$DW$88, DW_AT_name("__mpyd")
	.dwattr $C$DW$88, DW_AT_TI_call
        CALL #__mpyd ; |173| 
                                        ; call occurs [#__mpyd] ; |173| 
        MOV AC0, dbl(*SP(#40)) ; |173| 
	.dwpsn	file "../FFT/FFT.c",line 174,column 14,is_stmt
        MOV #0, AC0 ; |174| 
        MOV AC0, dbl(*SP(#22)) ; |174| 
	.dwpsn	file "../FFT/FFT.c",line 174,column 23,is_stmt
        MOV dbl(*SP(#26)), AC0 ; |174| 
        MOV dbl(*SP(#22)), AC1 ; |174| 
        CMP AC1 >= AC0, TC1 ; |174| 
        BCC $C$L20,TC1 ; |174| 
                                        ; branchcc occurs ; |174| 
$C$DW$L$_MWDSPCG_R2DIT_TBLS_C$11$E:
$C$L19:    
$C$DW$L$_MWDSPCG_R2DIT_TBLS_C$12$B:
	.dwpsn	file "../FFT/FFT.c",line 175,column 11,is_stmt
        MOV dbl(*SP(#18)), AC0 ; |175| 
        ADD dbl(*SP(#12)), AC0, AC0 ; |175| 
        MOV AC0, dbl(*SP(#14)) ; |175| 
	.dwpsn	file "../FFT/FFT.c",line 176,column 11,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *SP(#15) << #2, AC0 ; |176| 
        MOV AC0, T0 ; |176| 
        MOV dbl(*SP(#42)), AC1 ; |176| 
        MOV dbl(*AR3(T0)), AC0 ; |176| 
$C$DW$89	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$89, DW_AT_low_pc(0x00)
	.dwattr $C$DW$89, DW_AT_name("__mpyd")
	.dwattr $C$DW$89, DW_AT_TI_call
        CALL #__mpyd ; |176| 
                                        ; call occurs [#__mpyd] ; |176| 
        MOV dbl(*SP(#0)), XAR3
        MOV AC0, dbl(*SP(#46)) ; |176| 
        MOV *SP(#15) << #2, AC0 ; |176| 
        MOV AC0, AR1 ; |176| 

        AADD AR1, AR3 ; |176| 
||      MOV dbl(*SP(#40)), AC1 ; |176| 

        MOV dbl(*AR3(short(#2))), AC0 ; |176| 
$C$DW$90	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$90, DW_AT_low_pc(0x00)
	.dwattr $C$DW$90, DW_AT_name("__mpyd")
	.dwattr $C$DW$90, DW_AT_TI_call
        CALL #__mpyd ; |176| 
                                        ; call occurs [#__mpyd] ; |176| 

        MOV dbl(*SP(#46)), AC0 ; |176| 
||      OR #0, AC0, AC1

$C$DW$91	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$91, DW_AT_low_pc(0x00)
	.dwattr $C$DW$91, DW_AT_name("__subd")
	.dwattr $C$DW$91, DW_AT_TI_call
        CALL #__subd ; |176| 
                                        ; call occurs [#__subd] ; |176| 
        MOV AC0, dbl(*SP(#38)) ; |176| 
	.dwpsn	file "../FFT/FFT.c",line 177,column 11,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *SP(#15) << #2, AC0 ; |177| 
        MOV AC0, T0 ; |177| 
        MOV dbl(*SP(#40)), AC1 ; |177| 
        MOV dbl(*AR3(T0)), AC0 ; |177| 
$C$DW$92	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$92, DW_AT_low_pc(0x00)
	.dwattr $C$DW$92, DW_AT_name("__mpyd")
	.dwattr $C$DW$92, DW_AT_TI_call
        CALL #__mpyd ; |177| 
                                        ; call occurs [#__mpyd] ; |177| 
        MOV dbl(*SP(#0)), XAR3
        MOV AC0, dbl(*SP(#46)) ; |177| 
        MOV *SP(#15) << #2, AC0 ; |177| 
        MOV AC0, AR1 ; |177| 

        AADD AR1, AR3 ; |177| 
||      MOV dbl(*SP(#42)), AC1 ; |177| 

        MOV dbl(*AR3(short(#2))), AC0 ; |177| 
$C$DW$93	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$93, DW_AT_low_pc(0x00)
	.dwattr $C$DW$93, DW_AT_name("__mpyd")
	.dwattr $C$DW$93, DW_AT_TI_call
        CALL #__mpyd ; |177| 
                                        ; call occurs [#__mpyd] ; |177| 

        MOV dbl(*SP(#46)), AC0 ; |177| 
||      OR #0, AC0, AC1

$C$DW$94	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$94, DW_AT_low_pc(0x00)
	.dwattr $C$DW$94, DW_AT_name("__addd")
	.dwattr $C$DW$94, DW_AT_TI_call
        CALL #__addd ; |177| 
                                        ; call occurs [#__addd] ; |177| 
        MOV AC0, dbl(*SP(#36)) ; |177| 
	.dwpsn	file "../FFT/FFT.c",line 178,column 11,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *SP(#13) << #2, AC0 ; |178| 
        MOV AC0, T0 ; |178| 
        MOV dbl(*SP(#38)), AC1 ; |178| 
        MOV dbl(*AR3(T0)), AC0 ; |178| 
$C$DW$95	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$95, DW_AT_low_pc(0x00)
	.dwattr $C$DW$95, DW_AT_name("__subd")
	.dwattr $C$DW$95, DW_AT_TI_call
        CALL #__subd ; |178| 
                                        ; call occurs [#__subd] ; |178| 
        MOV dbl(*SP(#0)), XAR3
        MOV *SP(#15) << #2, AC1 ; |178| 
        MOV AC1, T0 ; |178| 
        MOV AC0, dbl(*AR3(T0)) ; |178| 
	.dwpsn	file "../FFT/FFT.c",line 179,column 11,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *SP(#13) << #2, AC0 ; |179| 
        MOV AC0, AR1 ; |179| 

        AADD AR1, AR3 ; |179| 
||      MOV dbl(*SP(#36)), AC1 ; |179| 

        MOV dbl(*AR3(short(#2))), AC0 ; |179| 
$C$DW$96	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$96, DW_AT_low_pc(0x00)
	.dwattr $C$DW$96, DW_AT_name("__subd")
	.dwattr $C$DW$96, DW_AT_TI_call
        CALL #__subd ; |179| 
                                        ; call occurs [#__subd] ; |179| 
        MOV dbl(*SP(#0)), XAR3
        MOV *SP(#15) << #2, AC1 ; |179| 
        MOV AC1, AR1 ; |179| 
        AADD AR1, AR3 ; |179| 
        MOV AC0, dbl(*AR3(short(#2))) ; |179| 
	.dwpsn	file "../FFT/FFT.c",line 180,column 11,is_stmt
        MOV dbl(*SP(#0)), XAR5
        MOV *SP(#13) << #2, AC0 ; |180| 
        MOV AC0, T2 ; |180| 
        MOV T2, T0 ; |180| 
        MOV dbl(*SP(#38)), AC1 ; |180| 
        MOV dbl(*AR5(T0)), AC0 ; |180| 
$C$DW$97	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$97, DW_AT_low_pc(0x00)
	.dwattr $C$DW$97, DW_AT_name("__addd")
	.dwattr $C$DW$97, DW_AT_TI_call
        CALL #__addd ; |180| 
                                        ; call occurs [#__addd] ; |180| 
        MOV T2, T0 ; |180| 
        MOV AC0, dbl(*AR5(T0)) ; |180| 
	.dwpsn	file "../FFT/FFT.c",line 181,column 11,is_stmt
        MOV dbl(*SP(#0)), XAR5
        MOV *SP(#13) << #2, AC0 ; |181| 
        MOV AC0, AR1 ; |181| 

        AADD AR1, AR5 ; |181| 
||      MOV dbl(*SP(#36)), AC1 ; |181| 

        MOV dbl(*AR5(short(#2))), AC0 ; |181| 
$C$DW$98	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$98, DW_AT_low_pc(0x00)
	.dwattr $C$DW$98, DW_AT_name("__addd")
	.dwattr $C$DW$98, DW_AT_TI_call
        CALL #__addd ; |181| 
                                        ; call occurs [#__addd] ; |181| 
        MOV AC0, dbl(*AR5(short(#2))) ; |181| 
	.dwpsn	file "../FFT/FFT.c",line 182,column 11,is_stmt
        MOV dbl(*SP(#18)), AC0 ; |182| 
        SFTL AC0, #1 ; |182| 
        ADD dbl(*SP(#12)), AC0, AC0 ; |182| 
        MOV AC0, dbl(*SP(#12)) ; |182| 
	.dwpsn	file "../FFT/FFT.c",line 174,column 31,is_stmt
        MOV dbl(*SP(#22)), AC0 ; |174| 
        ADD #1, AC0 ; |174| 
        MOV AC0, dbl(*SP(#22)) ; |174| 
	.dwpsn	file "../FFT/FFT.c",line 174,column 23,is_stmt
        MOV dbl(*SP(#26)), AC0 ; |174| 
        MOV dbl(*SP(#22)), AC1 ; |174| 
        CMP AC1 < AC0, TC1 ; |174| 
        BCC $C$L19,TC1 ; |174| 
                                        ; branchcc occurs ; |174| 
$C$DW$L$_MWDSPCG_R2DIT_TBLS_C$12$E:
$C$L20:    
$C$DW$L$_MWDSPCG_R2DIT_TBLS_C$13$B:
	.dwpsn	file "../FFT/FFT.c",line 185,column 9,is_stmt
        MOV dbl(*SP(#20)), AC0 ; |185| 
        ADD #1, AC0 ; |185| 
        MOV AC0, dbl(*SP(#20)) ; |185| 
	.dwpsn	file "../FFT/FFT.c",line 170,column 35,is_stmt
        MOV dbl(*SP(#28)), AC0 ; |170| 
        ADD dbl(*SP(#24)), AC0, AC0 ; |170| 
        MOV AC0, dbl(*SP(#24)) ; |170| 
	.dwpsn	file "../FFT/FFT.c",line 170,column 24,is_stmt
        MOV dbl(*SP(#24)), AC1 ; |170| 
        MOV dbl(*SP(#30)), AC0 ; |170| 
        CMP AC1 < AC0, TC1 ; |170| 
        BCC $C$L18,TC1 ; |170| 
                                        ; branchcc occurs ; |170| 
$C$DW$L$_MWDSPCG_R2DIT_TBLS_C$13$E:
$C$L21:    
$C$DW$L$_MWDSPCG_R2DIT_TBLS_C$14$B:
	.dwpsn	file "../FFT/FFT.c",line 188,column 7,is_stmt
        MOV dbl(*SP(#18)), AC0 ; |188| 
        SFTL AC0, #1 ; |188| 
        MOV AC0, dbl(*SP(#18)) ; |188| 
	.dwpsn	file "../FFT/FFT.c",line 189,column 7,is_stmt
        MOV dbl(*SP(#26)), AC0 ; |189| 
        SFTS AC0, #-1 ; |189| 
        MOV AC0, dbl(*SP(#26)) ; |189| 
	.dwpsn	file "../FFT/FFT.c",line 190,column 7,is_stmt
        MOV dbl(*SP(#28)), AC0 ; |190| 
        SFTS AC0, #-1 ; |190| 
        MOV AC0, dbl(*SP(#28)) ; |190| 
	.dwpsn	file "../FFT/FFT.c",line 152,column 12,is_stmt
        MOV dbl(*SP(#26)), AC0 ; |152| 
        BCC $C$L15,AC0 > #0 ; |152| 
                                        ; branchcc occurs ; |152| 
$C$DW$L$_MWDSPCG_R2DIT_TBLS_C$14$E:
$C$L22:    
$C$DW$L$_MWDSPCG_R2DIT_TBLS_C$15$B:
	.dwpsn	file "../FFT/FFT.c",line 194,column 5,is_stmt
        MOV dbl(*SP(#4)), AC0 ; |194| 
        ADD dbl(*SP(#34)), AC0, AC0 ; |194| 
        MOV AC0, dbl(*SP(#34)) ; |194| 
	.dwpsn	file "../FFT/FFT.c",line 138,column 32,is_stmt
        MOV dbl(*SP(#16)), AC0 ; |138| 
        ADD #1, AC0 ; |138| 
        MOV AC0, dbl(*SP(#16)) ; |138| 
	.dwpsn	file "../FFT/FFT.c",line 138,column 18,is_stmt
        MOV dbl(*SP(#16)), AC1 ; |138| 
        MOV dbl(*SP(#2)), AC0 ; |138| 
        CMP AC1 < AC0, TC1 ; |138| 
        BCC $C$L12,TC1 ; |138| 
                                        ; branchcc occurs ; |138| 
$C$DW$L$_MWDSPCG_R2DIT_TBLS_C$15$E:
	.dwpsn	file "../FFT/FFT.c",line 198,column 1,is_stmt
$C$L23:    
        AADD #49, SP
	.dwcfi	cfa_offset, 3
        POPBOTH XAR5
	.dwcfi	restore_reg, 26
	.dwcfi	cfa_offset, 2
        POP T2
	.dwcfi	restore_reg, 14
	.dwcfi	cfa_offset, 1
$C$DW$99	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$99, DW_AT_low_pc(0x00)
	.dwattr $C$DW$99, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$100	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$100, DW_AT_name("C:\Users\bacon\OneDrive\workspace_v6_1\PAM_project\Debug\FFT.asm:$C$L12:1:1717079648")
	.dwattr $C$DW$100, DW_AT_TI_begin_file("../FFT/FFT.c")
	.dwattr $C$DW$100, DW_AT_TI_begin_line(0x8a)
	.dwattr $C$DW$100, DW_AT_TI_end_line(0xc3)
$C$DW$101	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$101, DW_AT_low_pc($C$DW$L$_MWDSPCG_R2DIT_TBLS_C$5$B)
	.dwattr $C$DW$101, DW_AT_high_pc($C$DW$L$_MWDSPCG_R2DIT_TBLS_C$5$E)
$C$DW$102	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$102, DW_AT_low_pc($C$DW$L$_MWDSPCG_R2DIT_TBLS_C$7$B)
	.dwattr $C$DW$102, DW_AT_high_pc($C$DW$L$_MWDSPCG_R2DIT_TBLS_C$7$E)
$C$DW$103	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$103, DW_AT_low_pc($C$DW$L$_MWDSPCG_R2DIT_TBLS_C$15$B)
	.dwattr $C$DW$103, DW_AT_high_pc($C$DW$L$_MWDSPCG_R2DIT_TBLS_C$15$E)

$C$DW$104	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$104, DW_AT_name("C:\Users\bacon\OneDrive\workspace_v6_1\PAM_project\Debug\FFT.asm:$C$L13:2:1717079648")
	.dwattr $C$DW$104, DW_AT_TI_begin_file("../FFT/FFT.c")
	.dwattr $C$DW$104, DW_AT_TI_begin_line(0x8c)
	.dwattr $C$DW$104, DW_AT_TI_end_line(0x93)
$C$DW$105	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$105, DW_AT_low_pc($C$DW$L$_MWDSPCG_R2DIT_TBLS_C$6$B)
	.dwattr $C$DW$105, DW_AT_high_pc($C$DW$L$_MWDSPCG_R2DIT_TBLS_C$6$E)
	.dwendtag $C$DW$104


$C$DW$106	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$106, DW_AT_name("C:\Users\bacon\OneDrive\workspace_v6_1\PAM_project\Debug\FFT.asm:$C$L15:2:1717079648")
	.dwattr $C$DW$106, DW_AT_TI_begin_file("../FFT/FFT.c")
	.dwattr $C$DW$106, DW_AT_TI_begin_line(0x98)
	.dwattr $C$DW$106, DW_AT_TI_end_line(0xbf)
$C$DW$107	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$107, DW_AT_low_pc($C$DW$L$_MWDSPCG_R2DIT_TBLS_C$8$B)
	.dwattr $C$DW$107, DW_AT_high_pc($C$DW$L$_MWDSPCG_R2DIT_TBLS_C$8$E)
$C$DW$108	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$108, DW_AT_low_pc($C$DW$L$_MWDSPCG_R2DIT_TBLS_C$10$B)
	.dwattr $C$DW$108, DW_AT_high_pc($C$DW$L$_MWDSPCG_R2DIT_TBLS_C$10$E)
$C$DW$109	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$109, DW_AT_low_pc($C$DW$L$_MWDSPCG_R2DIT_TBLS_C$14$B)
	.dwattr $C$DW$109, DW_AT_high_pc($C$DW$L$_MWDSPCG_R2DIT_TBLS_C$14$E)

$C$DW$110	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$110, DW_AT_name("C:\Users\bacon\OneDrive\workspace_v6_1\PAM_project\Debug\FFT.asm:$C$L16:3:1717079648")
	.dwattr $C$DW$110, DW_AT_TI_begin_file("../FFT/FFT.c")
	.dwattr $C$DW$110, DW_AT_TI_begin_line(0x9c)
	.dwattr $C$DW$110, DW_AT_TI_end_line(0xa5)
$C$DW$111	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$111, DW_AT_low_pc($C$DW$L$_MWDSPCG_R2DIT_TBLS_C$9$B)
	.dwattr $C$DW$111, DW_AT_high_pc($C$DW$L$_MWDSPCG_R2DIT_TBLS_C$9$E)
	.dwendtag $C$DW$110


$C$DW$112	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$112, DW_AT_name("C:\Users\bacon\OneDrive\workspace_v6_1\PAM_project\Debug\FFT.asm:$C$L18:3:1717079648")
	.dwattr $C$DW$112, DW_AT_TI_begin_file("../FFT/FFT.c")
	.dwattr $C$DW$112, DW_AT_TI_begin_line(0xaa)
	.dwattr $C$DW$112, DW_AT_TI_end_line(0xba)
$C$DW$113	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$113, DW_AT_low_pc($C$DW$L$_MWDSPCG_R2DIT_TBLS_C$11$B)
	.dwattr $C$DW$113, DW_AT_high_pc($C$DW$L$_MWDSPCG_R2DIT_TBLS_C$11$E)
$C$DW$114	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$114, DW_AT_low_pc($C$DW$L$_MWDSPCG_R2DIT_TBLS_C$13$B)
	.dwattr $C$DW$114, DW_AT_high_pc($C$DW$L$_MWDSPCG_R2DIT_TBLS_C$13$E)

$C$DW$115	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$115, DW_AT_name("C:\Users\bacon\OneDrive\workspace_v6_1\PAM_project\Debug\FFT.asm:$C$L19:4:1717079648")
	.dwattr $C$DW$115, DW_AT_TI_begin_file("../FFT/FFT.c")
	.dwattr $C$DW$115, DW_AT_TI_begin_line(0xae)
	.dwattr $C$DW$115, DW_AT_TI_end_line(0xb7)
$C$DW$116	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$116, DW_AT_low_pc($C$DW$L$_MWDSPCG_R2DIT_TBLS_C$12$B)
	.dwattr $C$DW$116, DW_AT_high_pc($C$DW$L$_MWDSPCG_R2DIT_TBLS_C$12$E)
	.dwendtag $C$DW$115

	.dwendtag $C$DW$112

	.dwendtag $C$DW$106

	.dwendtag $C$DW$100

	.dwattr $C$DW$45, DW_AT_TI_end_file("../FFT/FFT.c")
	.dwattr $C$DW$45, DW_AT_TI_end_line(0xc6)
	.dwattr $C$DW$45, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$45

	.sect	".text"
	.global	_MWDSPCG_FFT_DblLen_C

$C$DW$117	.dwtag  DW_TAG_subprogram, DW_AT_name("MWDSPCG_FFT_DblLen_C")
	.dwattr $C$DW$117, DW_AT_low_pc(_MWDSPCG_FFT_DblLen_C)
	.dwattr $C$DW$117, DW_AT_high_pc(0x00)
	.dwattr $C$DW$117, DW_AT_TI_symbol_name("_MWDSPCG_FFT_DblLen_C")
	.dwattr $C$DW$117, DW_AT_external
	.dwattr $C$DW$117, DW_AT_TI_begin_file("../FFT/FFT.c")
	.dwattr $C$DW$117, DW_AT_TI_begin_line(0xc8)
	.dwattr $C$DW$117, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$117, DW_AT_TI_max_frame_size(0x2c)
	.dwpsn	file "../FFT/FFT.c",line 202,column 1,is_stmt,address _MWDSPCG_FFT_DblLen_C

	.dwfde $C$DW$CIE, _MWDSPCG_FFT_DblLen_C
$C$DW$118	.dwtag  DW_TAG_formal_parameter, DW_AT_name("y")
	.dwattr $C$DW$118, DW_AT_TI_symbol_name("_y")
	.dwattr $C$DW$118, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$118, DW_AT_location[DW_OP_reg17]
$C$DW$119	.dwtag  DW_TAG_formal_parameter, DW_AT_name("nChans")
	.dwattr $C$DW$119, DW_AT_TI_symbol_name("_nChans")
	.dwattr $C$DW$119, DW_AT_type(*$C$DW$T$46)
	.dwattr $C$DW$119, DW_AT_location[DW_OP_reg0]
$C$DW$120	.dwtag  DW_TAG_formal_parameter, DW_AT_name("nRows")
	.dwattr $C$DW$120, DW_AT_TI_symbol_name("_nRows")
	.dwattr $C$DW$120, DW_AT_type(*$C$DW$T$46)
	.dwattr $C$DW$120, DW_AT_location[DW_OP_reg3]
$C$DW$121	.dwtag  DW_TAG_formal_parameter, DW_AT_name("twiddleTable")
	.dwattr $C$DW$121, DW_AT_TI_symbol_name("_twiddleTable")
	.dwattr $C$DW$121, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$121, DW_AT_location[DW_OP_reg19]
$C$DW$122	.dwtag  DW_TAG_formal_parameter, DW_AT_name("twiddleStep")
	.dwattr $C$DW$122, DW_AT_TI_symbol_name("_twiddleStep")
	.dwattr $C$DW$122, DW_AT_type(*$C$DW$T$46)
	.dwattr $C$DW$122, DW_AT_location[DW_OP_reg6]
;*******************************************************************************
;* FUNCTION NAME: MWDSPCG_FFT_DblLen_C                                         *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,AC2,AC2,T0,T2,AR0,XAR0,AR1,XAR1,AR3, *
;*                        XAR3,AR5,XAR5,SP,CARRY,TC1,M40,SATA,SATD,RDM,FRCT,   *
;*                        SMUL                                                 *
;*   Save On Entry Regs : T2,AR5                                               *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 44 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (40 local values)                                    *
;*                        (2 register save area)                               *
;*   Min System Stack   : 2 words                                              *
;*******************************************************************************
_MWDSPCG_FFT_DblLen_C:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        PSH T2
	.dwcfi	cfa_offset, 2
	.dwcfi	save_reg_to_mem, 14, -2
        PSHBOTH XAR5
	.dwcfi	cfa_offset, 3
	.dwcfi	save_reg_to_mem, 26, -3
        AADD #-41, SP
	.dwcfi	cfa_offset, 44
$C$DW$123	.dwtag  DW_TAG_variable, DW_AT_name("y")
	.dwattr $C$DW$123, DW_AT_TI_symbol_name("_y")
	.dwattr $C$DW$123, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$123, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$124	.dwtag  DW_TAG_variable, DW_AT_name("nChans")
	.dwattr $C$DW$124, DW_AT_TI_symbol_name("_nChans")
	.dwattr $C$DW$124, DW_AT_type(*$C$DW$T$46)
	.dwattr $C$DW$124, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$125	.dwtag  DW_TAG_variable, DW_AT_name("nRows")
	.dwattr $C$DW$125, DW_AT_TI_symbol_name("_nRows")
	.dwattr $C$DW$125, DW_AT_type(*$C$DW$T$46)
	.dwattr $C$DW$125, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$126	.dwtag  DW_TAG_variable, DW_AT_name("twiddleTable")
	.dwattr $C$DW$126, DW_AT_TI_symbol_name("_twiddleTable")
	.dwattr $C$DW$126, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$126, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$127	.dwtag  DW_TAG_variable, DW_AT_name("twiddleStep")
	.dwattr $C$DW$127, DW_AT_TI_symbol_name("_twiddleStep")
	.dwattr $C$DW$127, DW_AT_type(*$C$DW$T$46)
	.dwattr $C$DW$127, DW_AT_location[DW_OP_bregx 0x24 8]
$C$DW$128	.dwtag  DW_TAG_variable, DW_AT_name("N2")
	.dwattr $C$DW$128, DW_AT_TI_symbol_name("_N2")
	.dwattr $C$DW$128, DW_AT_type(*$C$DW$T$46)
	.dwattr $C$DW$128, DW_AT_location[DW_OP_bregx 0x24 10]
$C$DW$129	.dwtag  DW_TAG_variable, DW_AT_name("N4")
	.dwattr $C$DW$129, DW_AT_TI_symbol_name("_N4")
	.dwattr $C$DW$129, DW_AT_type(*$C$DW$T$46)
	.dwattr $C$DW$129, DW_AT_location[DW_OP_bregx 0x24 12]
$C$DW$130	.dwtag  DW_TAG_variable, DW_AT_name("W4")
	.dwattr $C$DW$130, DW_AT_TI_symbol_name("_W4")
	.dwattr $C$DW$130, DW_AT_type(*$C$DW$T$46)
	.dwattr $C$DW$130, DW_AT_location[DW_OP_bregx 0x24 14]
$C$DW$131	.dwtag  DW_TAG_variable, DW_AT_name("ix")
	.dwattr $C$DW$131, DW_AT_TI_symbol_name("_ix")
	.dwattr $C$DW$131, DW_AT_type(*$C$DW$T$46)
	.dwattr $C$DW$131, DW_AT_location[DW_OP_bregx 0x24 16]
$C$DW$132	.dwtag  DW_TAG_variable, DW_AT_name("temp2Re_tmp")
	.dwattr $C$DW$132, DW_AT_TI_symbol_name("_temp2Re_tmp")
	.dwattr $C$DW$132, DW_AT_type(*$C$DW$T$46)
	.dwattr $C$DW$132, DW_AT_location[DW_OP_bregx 0x24 18]
$C$DW$133	.dwtag  DW_TAG_variable, DW_AT_name("temp2Re_tmp_0")
	.dwattr $C$DW$133, DW_AT_TI_symbol_name("_temp2Re_tmp_0")
	.dwattr $C$DW$133, DW_AT_type(*$C$DW$T$46)
	.dwattr $C$DW$133, DW_AT_location[DW_OP_bregx 0x24 20]
$C$DW$134	.dwtag  DW_TAG_variable, DW_AT_name("tempOut0Re_tmp")
	.dwattr $C$DW$134, DW_AT_TI_symbol_name("_tempOut0Re_tmp")
	.dwattr $C$DW$134, DW_AT_type(*$C$DW$T$46)
	.dwattr $C$DW$134, DW_AT_location[DW_OP_bregx 0x24 22]
$C$DW$135	.dwtag  DW_TAG_variable, DW_AT_name("tmp")
	.dwattr $C$DW$135, DW_AT_TI_symbol_name("_tmp")
	.dwattr $C$DW$135, DW_AT_type(*$C$DW$T$46)
	.dwattr $C$DW$135, DW_AT_location[DW_OP_bregx 0x24 24]
$C$DW$136	.dwtag  DW_TAG_variable, DW_AT_name("yIdx")
	.dwattr $C$DW$136, DW_AT_TI_symbol_name("_yIdx")
	.dwattr $C$DW$136, DW_AT_type(*$C$DW$T$46)
	.dwattr $C$DW$136, DW_AT_location[DW_OP_bregx 0x24 26]
$C$DW$137	.dwtag  DW_TAG_variable, DW_AT_name("cTemp_im")
	.dwattr $C$DW$137, DW_AT_TI_symbol_name("_cTemp_im")
	.dwattr $C$DW$137, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$137, DW_AT_location[DW_OP_bregx 0x24 28]
$C$DW$138	.dwtag  DW_TAG_variable, DW_AT_name("cTemp_re")
	.dwattr $C$DW$138, DW_AT_TI_symbol_name("_cTemp_re")
	.dwattr $C$DW$138, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$138, DW_AT_location[DW_OP_bregx 0x24 30]
$C$DW$139	.dwtag  DW_TAG_variable, DW_AT_name("cTemp_re_tmp")
	.dwattr $C$DW$139, DW_AT_TI_symbol_name("_cTemp_re_tmp")
	.dwattr $C$DW$139, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$139, DW_AT_location[DW_OP_bregx 0x24 32]
$C$DW$140	.dwtag  DW_TAG_variable, DW_AT_name("tempOut0Im")
	.dwattr $C$DW$140, DW_AT_TI_symbol_name("_tempOut0Im")
	.dwattr $C$DW$140, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$140, DW_AT_location[DW_OP_bregx 0x24 34]
$C$DW$141	.dwtag  DW_TAG_variable, DW_AT_name("tempOut0Re")
	.dwattr $C$DW$141, DW_AT_TI_symbol_name("_tempOut0Re")
	.dwattr $C$DW$141, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$141, DW_AT_location[DW_OP_bregx 0x24 36]
        MOV AC2, dbl(*SP(#8)) ; |202| 
        MOV XAR1, dbl(*SP(#6))
        MOV AC1, dbl(*SP(#4)) ; |202| 
        MOV AC0, dbl(*SP(#2)) ; |202| 
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "../FFT/FFT.c",line 226,column 3,is_stmt
        MOV dbl(*SP(#4)), AC0 ; |226| 
        SFTS AC0, #-1 ; |226| 
        MOV AC0, dbl(*SP(#10)) ; |226| 
	.dwpsn	file "../FFT/FFT.c",line 227,column 3,is_stmt
        MOV dbl(*SP(#10)), AC0 ; |227| 
        SFTS AC0, #-1 ; |227| 
        MOV AC0, dbl(*SP(#12)) ; |227| 
	.dwpsn	file "../FFT/FFT.c",line 228,column 3,is_stmt
        MOV dbl(*SP(#8)), AC1 ; |228| 
        MOV dbl(*SP(#12)), AC0 ; |228| 
$C$DW$142	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$142, DW_AT_low_pc(0x00)
	.dwattr $C$DW$142, DW_AT_name("__mpyli")
	.dwattr $C$DW$142, DW_AT_TI_call
        CALL #__mpyli ; |228| 
                                        ; call occurs [#__mpyli] ; |228| 
        MOV AC0, dbl(*SP(#14)) ; |228| 
	.dwpsn	file "../FFT/FFT.c",line 229,column 3,is_stmt

        MOV dbl(*SP(#4)), AC1 ; |229| 
||      MOV #1, AC0 ; |229| 

        SUB AC0, dbl(*SP(#2)), AC0 ; |229| 
$C$DW$143	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$143, DW_AT_low_pc(0x00)
	.dwattr $C$DW$143, DW_AT_name("__mpyli")
	.dwattr $C$DW$143, DW_AT_TI_call
        CALL #__mpyli ; |229| 
                                        ; call occurs [#__mpyli] ; |229| 
        MOV AC0, dbl(*SP(#26)) ; |229| 
	.dwpsn	file "../FFT/FFT.c",line 230,column 3,is_stmt

        MOV dbl(*SP(#4)), AC1 ; |230| 
||      MOV #2, AC0 ; |230| 

        CMP AC1 <= AC0, TC1 ; |230| 
        BCC $C$L24,TC1 ; |230| 
                                        ; branchcc occurs ; |230| 
	.dwpsn	file "../FFT/FFT.c",line 231,column 5,is_stmt
        MOV dbl(*SP(#26)), AC0 ; |231| 
        ADD dbl(*SP(#12)), AC0, AC0 ; |231| 
        MOV AC0, dbl(*SP(#22)) ; |231| 
	.dwpsn	file "../FFT/FFT.c",line 232,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *SP(#23) << #2, AC0 ; |232| 
        MOV AC0, T0 ; |232| 
        MOV dbl(*AR3(T0)), AC0 ; |232| 
        MOV AC0, dbl(*SP(#36)) ; |232| 
	.dwpsn	file "../FFT/FFT.c",line 233,column 5,is_stmt
        MOV *SP(#23) << #2, AC0 ; |233| 
        MOV AC0, AR1 ; |233| 
        AADD AR1, AR3 ; |233| 
        MOV dbl(*AR3(short(#2))), AC0 ; |233| 
        MOV AC0, dbl(*SP(#34)) ; |233| 
	.dwpsn	file "../FFT/FFT.c",line 234,column 5,is_stmt
        MOV dbl(*SP(#12)), AC0 ; |234| 
        ADD dbl(*SP(#10)), AC0, AC0 ; |234| 
        ADD dbl(*SP(#26)), AC0, AC0 ; |234| 
        MOV AC0, dbl(*SP(#24)) ; |234| 
	.dwpsn	file "../FFT/FFT.c",line 235,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *SP(#25) << #2, AC0 ; |235| 
        MOV AC0, T0 ; |235| 
        MOV dbl(*SP(#36)), AC1 ; |235| 
        MOV AC1, dbl(*AR3(T0)) ; |235| 
	.dwpsn	file "../FFT/FFT.c",line 236,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *SP(#25) << #2, AC0 ; |236| 
        MOV AC0, AR1 ; |236| 

        MOV dbl(*SP(#34)), AC0 ; |236| 
||      AADD AR1, AR3 ; |236| 

        MOV AC0, dbl(*AR3(short(#2))) ; |236| 
	.dwpsn	file "../FFT/FFT.c",line 237,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *SP(#23) << #2, AC0 ; |237| 
        MOV AC0, T0 ; |237| 
        MOV dbl(*SP(#36)), AC1 ; |237| 
        MOV AC1, dbl(*AR3(T0)) ; |237| 
	.dwpsn	file "../FFT/FFT.c",line 238,column 5,is_stmt
        MOV dbl(*SP(#34)), AC0 ; |238| 
$C$DW$144	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$144, DW_AT_low_pc(0x00)
	.dwattr $C$DW$144, DW_AT_name("__negd")
	.dwattr $C$DW$144, DW_AT_TI_call
        CALL #__negd ; |238| 
                                        ; call occurs [#__negd] ; |238| 
        MOV dbl(*SP(#0)), XAR3
        MOV *SP(#23) << #2, AC1 ; |238| 
        MOV AC1, AR1 ; |238| 
        AADD AR1, AR3 ; |238| 
        MOV AC0, dbl(*AR3(short(#2))) ; |238| 
$C$L24:    
	.dwpsn	file "../FFT/FFT.c",line 241,column 3,is_stmt

        MOV dbl(*SP(#4)), AC1 ; |241| 
||      MOV #1, AC0 ; |241| 

        CMP AC1 <= AC0, TC1 ; |241| 
        BCC $C$L25,TC1 ; |241| 
                                        ; branchcc occurs ; |241| 
	.dwpsn	file "../FFT/FFT.c",line 242,column 5,is_stmt
        MOV dbl(*SP(#26)), AC0 ; |242| 
        ADD dbl(*SP(#10)), AC0, AC0 ; |242| 
        MOV AC0, dbl(*SP(#24)) ; |242| 
	.dwpsn	file "../FFT/FFT.c",line 243,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *SP(#27) << #2, AC1 ; |243| 
        MOV AC1, AR1 ; |243| 
        MOV *SP(#27) << #2, AC0 ; |243| 
        MOV AC0, T0 ; |243| 

        AADD AR1, AR3 ; |243| 
||      MOV dbl(*AR3(T0)), AC0 ; |243| 

        MOV dbl(*AR3(short(#2))), AC1 ; |243| 
$C$DW$145	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$145, DW_AT_low_pc(0x00)
	.dwattr $C$DW$145, DW_AT_name("__subd")
	.dwattr $C$DW$145, DW_AT_TI_call
        CALL #__subd ; |243| 
                                        ; call occurs [#__subd] ; |243| 
        MOV dbl(*SP(#0)), XAR3
        MOV *SP(#25) << #2, AC1 ; |243| 
        MOV AC1, T0 ; |243| 
        MOV AC0, dbl(*AR3(T0)) ; |243| 
	.dwpsn	file "../FFT/FFT.c",line 244,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *SP(#25) << #2, AC0 ; |244| 
        MOV AC0, AR1 ; |244| 
        MOV dbl(*($C$FL1)), AC0 ; |244| 
        AADD AR1, AR3 ; |244| 
        MOV AC0, dbl(*AR3(short(#2))) ; |244| 
$C$L25:    
	.dwpsn	file "../FFT/FFT.c",line 247,column 3,is_stmt
        MOV *SP(#27) << #2, AC1 ; |247| 
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*SP(#0)), XAR5
        MOV AC1, AR1 ; |247| 
        MOV *SP(#27) << #2, AC0 ; |247| 
        MOV AC0, T2 ; |247| 
        MOV T2, T0 ; |247| 

        MOV dbl(*AR5(T0)), AC0 ; |247| 
||      AADD AR1, AR3 ; |247| 

        MOV dbl(*AR3(short(#2))), AC1 ; |247| 
$C$DW$146	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$146, DW_AT_low_pc(0x00)
	.dwattr $C$DW$146, DW_AT_name("__addd")
	.dwattr $C$DW$146, DW_AT_TI_call
        CALL #__addd ; |247| 
                                        ; call occurs [#__addd] ; |247| 
        MOV T2, T0 ; |247| 
        MOV AC0, dbl(*AR5(T0)) ; |247| 
	.dwpsn	file "../FFT/FFT.c",line 248,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *SP(#27) << #2, AC0 ; |248| 
        MOV AC0, AR1 ; |248| 
        MOV dbl(*($C$FL1)), AC0 ; |248| 
        AADD AR1, AR3 ; |248| 
        MOV AC0, dbl(*AR3(short(#2))) ; |248| 
	.dwpsn	file "../FFT/FFT.c",line 249,column 3,is_stmt
        MOV dbl(*SP(#8)), AC0 ; |249| 
        MOV AC0, dbl(*SP(#22)) ; |249| 
	.dwpsn	file "../FFT/FFT.c",line 250,column 8,is_stmt
        MOV #1, AC0 ; |250| 
        MOV AC0, dbl(*SP(#16)) ; |250| 
	.dwpsn	file "../FFT/FFT.c",line 250,column 17,is_stmt
        MOV dbl(*SP(#12)), AC0 ; |250| 
        MOV dbl(*SP(#16)), AC1 ; |250| 
        CMP AC1 >= AC0, TC1 ; |250| 
        BCC $C$L27,TC1 ; |250| 
                                        ; branchcc occurs ; |250| 
$C$L26:    
$C$DW$L$_MWDSPCG_FFT_DblLen_C$6$B:
	.dwpsn	file "../FFT/FFT.c",line 251,column 5,is_stmt
        MOV dbl(*SP(#26)), AC0 ; |251| 
        ADD dbl(*SP(#16)), AC0, AC0 ; |251| 
        MOV AC0, dbl(*SP(#18)) ; |251| 
	.dwpsn	file "../FFT/FFT.c",line 252,column 5,is_stmt
        MOV dbl(*SP(#16)), AC0 ; |252| 
        SUB AC0, dbl(*SP(#10)), AC0 ; |252| 
        ADD dbl(*SP(#26)), AC0, AC0 ; |252| 
        MOV AC0, dbl(*SP(#20)) ; |252| 
	.dwpsn	file "../FFT/FFT.c",line 253,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *SP(#21) << #2, AC0 ; |253| 
        MOV AC0, T0 ; |253| 
        MOV *SP(#19) << #2, AC1 ; |253| 

        MOV AC1, T0 ; |253| 
||      MOV dbl(*AR3(T0)), AC0 ; |253| 

        MOV dbl(*AR3(T0)), AC1 ; |253| 
$C$DW$147	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$147, DW_AT_low_pc(0x00)
	.dwattr $C$DW$147, DW_AT_name("__addd")
	.dwattr $C$DW$147, DW_AT_TI_call
        CALL #__addd ; |253| 
                                        ; call occurs [#__addd] ; |253| 
        MOV dbl(*($C$FL2)), AC1 ; |253| 
$C$DW$148	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$148, DW_AT_low_pc(0x00)
	.dwattr $C$DW$148, DW_AT_name("__divd")
	.dwattr $C$DW$148, DW_AT_TI_call
        CALL #__divd ; |253| 
                                        ; call occurs [#__divd] ; |253| 
        MOV AC0, dbl(*SP(#36)) ; |253| 
	.dwpsn	file "../FFT/FFT.c",line 254,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *SP(#19) << #2, AC0 ; |254| 
        MOV AC0, AR1 ; |254| 
        MOV *SP(#21) << #2, AC1 ; |254| 

        MOV AC1, AR1 ; |254| 
||      AADD AR1, AR3 ; |254| 

        MOV dbl(*AR3(short(#2))), AC0 ; |254| 
        MOV dbl(*SP(#0)), XAR3
        AADD AR1, AR3 ; |254| 
        MOV dbl(*AR3(short(#2))), AC1 ; |254| 
$C$DW$149	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$149, DW_AT_low_pc(0x00)
	.dwattr $C$DW$149, DW_AT_name("__subd")
	.dwattr $C$DW$149, DW_AT_TI_call
        CALL #__subd ; |254| 
                                        ; call occurs [#__subd] ; |254| 
        MOV dbl(*($C$FL2)), AC1 ; |254| 
$C$DW$150	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$150, DW_AT_low_pc(0x00)
	.dwattr $C$DW$150, DW_AT_name("__divd")
	.dwattr $C$DW$150, DW_AT_TI_call
        CALL #__divd ; |254| 
                                        ; call occurs [#__divd] ; |254| 
        MOV AC0, dbl(*SP(#34)) ; |254| 
	.dwpsn	file "../FFT/FFT.c",line 255,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *SP(#21) << #2, AC0 ; |255| 
        MOV AC0, T0 ; |255| 
        MOV dbl(*AR3(T0)), AC0 ; |255| 
        MOV AC0, dbl(*SP(#32)) ; |255| 
	.dwpsn	file "../FFT/FFT.c",line 256,column 5,is_stmt
        MOV *SP(#19) << #2, AC0 ; |256| 
        MOV AC0, T0 ; |256| 
        MOV dbl(*AR3(T0)), AC0 ; |256| 
        MOV AC0, dbl(*SP(#30)) ; |256| 
	.dwpsn	file "../FFT/FFT.c",line 257,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *SP(#21) << #2, AC0 ; |257| 
        MOV AC0, AR1 ; |257| 
        MOV *SP(#19) << #2, AC1 ; |257| 

        MOV AC1, AR1 ; |257| 
||      AADD AR1, AR3 ; |257| 

        MOV dbl(*AR3(short(#2))), AC0 ; |257| 
        MOV dbl(*SP(#0)), XAR3
        AADD AR1, AR3 ; |257| 
        MOV dbl(*AR3(short(#2))), AC1 ; |257| 
$C$DW$151	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$151, DW_AT_low_pc(0x00)
	.dwattr $C$DW$151, DW_AT_name("__addd")
	.dwattr $C$DW$151, DW_AT_TI_call
        CALL #__addd ; |257| 
                                        ; call occurs [#__addd] ; |257| 
        MOV dbl(*($C$FL2)), AC1 ; |257| 
$C$DW$152	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$152, DW_AT_low_pc(0x00)
	.dwattr $C$DW$152, DW_AT_name("__divd")
	.dwattr $C$DW$152, DW_AT_TI_call
        CALL #__divd ; |257| 
                                        ; call occurs [#__divd] ; |257| 
        MOV dbl(*SP(#0)), XAR3
        MOV *SP(#19) << #2, AC1 ; |257| 
        MOV AC1, T0 ; |257| 
        MOV AC0, dbl(*AR3(T0)) ; |257| 
	.dwpsn	file "../FFT/FFT.c",line 258,column 5,is_stmt
        MOV dbl(*SP(#32)), AC0 ; |258| 
        MOV dbl(*SP(#30)), AC1 ; |258| 
$C$DW$153	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$153, DW_AT_low_pc(0x00)
	.dwattr $C$DW$153, DW_AT_name("__subd")
	.dwattr $C$DW$153, DW_AT_TI_call
        CALL #__subd ; |258| 
                                        ; call occurs [#__subd] ; |258| 
        MOV dbl(*($C$FL2)), AC1 ; |258| 
$C$DW$154	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$154, DW_AT_low_pc(0x00)
	.dwattr $C$DW$154, DW_AT_name("__divd")
	.dwattr $C$DW$154, DW_AT_TI_call
        CALL #__divd ; |258| 
                                        ; call occurs [#__divd] ; |258| 
        MOV dbl(*SP(#0)), XAR3
        MOV *SP(#19) << #2, AC1 ; |258| 
        MOV AC1, AR1 ; |258| 
        AADD AR1, AR3 ; |258| 
        MOV AC0, dbl(*AR3(short(#2))) ; |258| 
	.dwpsn	file "../FFT/FFT.c",line 259,column 5,is_stmt
        MOV dbl(*SP(#6)), XAR3
        MOV dbl(*SP(#22)), AC0 ; |259| 
        SUB AC0, dbl(*SP(#14)), AC0 ; |259| 
        MOV AC0, T0 ; |259| 
        SFTL T0, #1 ; |259| 
        MOV dbl(*AR3(T0)), AC0 ; |259| 
$C$DW$155	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$155, DW_AT_low_pc(0x00)
	.dwattr $C$DW$155, DW_AT_name("__negd")
	.dwattr $C$DW$155, DW_AT_TI_call
        CALL #__negd ; |259| 
                                        ; call occurs [#__negd] ; |259| 
        MOV AC0, dbl(*SP(#32)) ; |259| 
	.dwpsn	file "../FFT/FFT.c",line 260,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *SP(#19) << #2, AC0 ; |260| 
        MOV AC0, T0 ; |260| 
        MOV dbl(*AR3(T0)), AC0 ; |260| 
        MOV dbl(*SP(#6)), XAR3
        MOV *SP(#23), T0 ; |260| 
        SFTL T0, #1 ; |260| 
        MOV dbl(*AR3(T0)), AC1 ; |260| 
$C$DW$156	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$156, DW_AT_low_pc(0x00)
	.dwattr $C$DW$156, DW_AT_name("__mpyd")
	.dwattr $C$DW$156, DW_AT_TI_call
        CALL #__mpyd ; |260| 
                                        ; call occurs [#__mpyd] ; |260| 
        MOV dbl(*SP(#0)), XAR3
        MOV AC0, dbl(*SP(#38)) ; |260| 
        MOV *SP(#19) << #2, AC0 ; |260| 
        MOV AC0, AR1 ; |260| 

        AADD AR1, AR3 ; |260| 
||      MOV dbl(*SP(#32)), AC0 ; |260| 

        MOV dbl(*AR3(short(#2))), AC1 ; |260| 
$C$DW$157	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$157, DW_AT_low_pc(0x00)
	.dwattr $C$DW$157, DW_AT_name("__mpyd")
	.dwattr $C$DW$157, DW_AT_TI_call
        CALL #__mpyd ; |260| 
                                        ; call occurs [#__mpyd] ; |260| 
$C$DW$L$_MWDSPCG_FFT_DblLen_C$6$E:
$C$DW$L$_MWDSPCG_FFT_DblLen_C$7$B:

        MOV dbl(*SP(#38)), AC0 ; |260| 
||      OR #0, AC0, AC1

$C$DW$158	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$158, DW_AT_low_pc(0x00)
	.dwattr $C$DW$158, DW_AT_name("__subd")
	.dwattr $C$DW$158, DW_AT_TI_call
        CALL #__subd ; |260| 
                                        ; call occurs [#__subd] ; |260| 
        MOV AC0, dbl(*SP(#30)) ; |260| 
	.dwpsn	file "../FFT/FFT.c",line 262,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *SP(#19) << #2, AC0 ; |262| 
        MOV AC0, AR1 ; |262| 
        MOV *SP(#23), T0 ; |262| 
        SFTL T0, #1 ; |262| 
        AADD AR1, AR3 ; |262| 
        MOV dbl(*AR3(short(#2))), AC0 ; |262| 
        MOV dbl(*SP(#6)), XAR3
        MOV dbl(*AR3(T0)), AC1 ; |262| 
$C$DW$159	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$159, DW_AT_low_pc(0x00)
	.dwattr $C$DW$159, DW_AT_name("__mpyd")
	.dwattr $C$DW$159, DW_AT_TI_call
        CALL #__mpyd ; |262| 
                                        ; call occurs [#__mpyd] ; |262| 
        MOV dbl(*SP(#0)), XAR3
        MOV AC0, dbl(*SP(#38)) ; |262| 
        MOV *SP(#19) << #2, AC0 ; |262| 
        MOV AC0, T0 ; |262| 
        MOV dbl(*SP(#32)), AC0 ; |262| 
        MOV dbl(*AR3(T0)), AC1 ; |262| 
$C$DW$160	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$160, DW_AT_low_pc(0x00)
	.dwattr $C$DW$160, DW_AT_name("__mpyd")
	.dwattr $C$DW$160, DW_AT_TI_call
        CALL #__mpyd ; |262| 
                                        ; call occurs [#__mpyd] ; |262| 

        MOV dbl(*SP(#38)), AC0 ; |262| 
||      OR #0, AC0, AC1

$C$DW$161	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$161, DW_AT_low_pc(0x00)
	.dwattr $C$DW$161, DW_AT_name("__addd")
	.dwattr $C$DW$161, DW_AT_TI_call
        CALL #__addd ; |262| 
                                        ; call occurs [#__addd] ; |262| 
        MOV AC0, dbl(*SP(#28)) ; |262| 
	.dwpsn	file "../FFT/FFT.c",line 264,column 5,is_stmt
        MOV dbl(*SP(#36)), AC0 ; |264| 
        MOV dbl(*SP(#30)), AC1 ; |264| 
$C$DW$162	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$162, DW_AT_low_pc(0x00)
	.dwattr $C$DW$162, DW_AT_name("__addd")
	.dwattr $C$DW$162, DW_AT_TI_call
        CALL #__addd ; |264| 
                                        ; call occurs [#__addd] ; |264| 
        MOV dbl(*SP(#0)), XAR3
        MOV *SP(#19) << #2, AC1 ; |264| 
        MOV AC1, T0 ; |264| 
        MOV AC0, dbl(*AR3(T0)) ; |264| 
	.dwpsn	file "../FFT/FFT.c",line 265,column 5,is_stmt
        MOV dbl(*SP(#34)), AC0 ; |265| 
        MOV dbl(*SP(#28)), AC1 ; |265| 
$C$DW$163	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$163, DW_AT_low_pc(0x00)
	.dwattr $C$DW$163, DW_AT_name("__addd")
	.dwattr $C$DW$163, DW_AT_TI_call
        CALL #__addd ; |265| 
                                        ; call occurs [#__addd] ; |265| 
        MOV dbl(*SP(#0)), XAR3
        MOV *SP(#19) << #2, AC1 ; |265| 
        MOV AC1, AR1 ; |265| 
        AADD AR1, AR3 ; |265| 
        MOV AC0, dbl(*AR3(short(#2))) ; |265| 
	.dwpsn	file "../FFT/FFT.c",line 266,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *SP(#19) << #2, AC0 ; |266| 
        MOV AC0, AR1 ; |266| 
        AADD AR1, AR3 ; |266| 
        MOV dbl(*AR3(short(#2))), AC0 ; |266| 
        MOV AC0, dbl(*SP(#32)) ; |266| 
	.dwpsn	file "../FFT/FFT.c",line 267,column 5,is_stmt
        MOV dbl(*SP(#16)), AC0 ; |267| 
        SUB AC0, dbl(*SP(#4)), AC0 ; |267| 
        ADD dbl(*SP(#26)), AC0, AC0 ; |267| 
        MOV AC0, dbl(*SP(#24)) ; |267| 
	.dwpsn	file "../FFT/FFT.c",line 268,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *SP(#19) << #2, AC0 ; |268| 
        MOV AC0, T0 ; |268| 
        MOV *SP(#25) << #2, AC0 ; |268| 

        MOV AC0, T0 ; |268| 
||      MOV dbl(*AR3(T0)), AC1 ; |268| 

        MOV AC1, dbl(*AR3(T0)) ; |268| 
	.dwpsn	file "../FFT/FFT.c",line 269,column 5,is_stmt
        MOV dbl(*SP(#32)), AC0 ; |269| 
$C$DW$164	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$164, DW_AT_low_pc(0x00)
	.dwattr $C$DW$164, DW_AT_name("__negd")
	.dwattr $C$DW$164, DW_AT_TI_call
        CALL #__negd ; |269| 
                                        ; call occurs [#__negd] ; |269| 
        MOV dbl(*SP(#0)), XAR3
        MOV *SP(#25) << #2, AC1 ; |269| 
        MOV AC1, AR1 ; |269| 
        AADD AR1, AR3 ; |269| 
        MOV AC0, dbl(*AR3(short(#2))) ; |269| 
	.dwpsn	file "../FFT/FFT.c",line 270,column 5,is_stmt
        MOV dbl(*SP(#16)), AC0 ; |270| 
        ADD dbl(*SP(#10)), AC0, AC0 ; |270| 
        ADD dbl(*SP(#26)), AC0, AC0 ; |270| 
        MOV AC0, dbl(*SP(#24)) ; |270| 
	.dwpsn	file "../FFT/FFT.c",line 271,column 5,is_stmt
        MOV dbl(*SP(#36)), AC0 ; |271| 
        MOV dbl(*SP(#30)), AC1 ; |271| 
$C$DW$165	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$165, DW_AT_low_pc(0x00)
	.dwattr $C$DW$165, DW_AT_name("__subd")
	.dwattr $C$DW$165, DW_AT_TI_call
        CALL #__subd ; |271| 
                                        ; call occurs [#__subd] ; |271| 
        MOV dbl(*SP(#0)), XAR3
        MOV *SP(#25) << #2, AC1 ; |271| 
        MOV AC1, T0 ; |271| 
        MOV AC0, dbl(*AR3(T0)) ; |271| 
	.dwpsn	file "../FFT/FFT.c",line 272,column 5,is_stmt
        MOV dbl(*SP(#34)), AC0 ; |272| 
        MOV dbl(*SP(#28)), AC1 ; |272| 
$C$DW$166	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$166, DW_AT_low_pc(0x00)
	.dwattr $C$DW$166, DW_AT_name("__subd")
	.dwattr $C$DW$166, DW_AT_TI_call
        CALL #__subd ; |272| 
                                        ; call occurs [#__subd] ; |272| 
        MOV dbl(*SP(#0)), XAR3
        MOV *SP(#25) << #2, AC1 ; |272| 
        MOV AC1, AR1 ; |272| 
        AADD AR1, AR3 ; |272| 
        MOV AC0, dbl(*AR3(short(#2))) ; |272| 
	.dwpsn	file "../FFT/FFT.c",line 273,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *SP(#25) << #2, AC0 ; |273| 
        MOV AC0, AR1 ; |273| 
        AADD AR1, AR3 ; |273| 
        MOV dbl(*AR3(short(#2))), AC0 ; |273| 
        MOV AC0, dbl(*SP(#32)) ; |273| 
	.dwpsn	file "../FFT/FFT.c",line 274,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *SP(#25) << #2, AC0 ; |274| 
        MOV AC0, T0 ; |274| 
        MOV *SP(#21) << #2, AC0 ; |274| 

        MOV AC0, T0 ; |274| 
||      MOV dbl(*AR3(T0)), AC1 ; |274| 

        MOV AC1, dbl(*AR3(T0)) ; |274| 
	.dwpsn	file "../FFT/FFT.c",line 275,column 5,is_stmt
        MOV dbl(*SP(#32)), AC0 ; |275| 
$C$DW$167	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$167, DW_AT_low_pc(0x00)
	.dwattr $C$DW$167, DW_AT_name("__negd")
	.dwattr $C$DW$167, DW_AT_TI_call
        CALL #__negd ; |275| 
                                        ; call occurs [#__negd] ; |275| 
        MOV dbl(*SP(#0)), XAR3
        MOV *SP(#21) << #2, AC1 ; |275| 
        MOV AC1, AR1 ; |275| 
        AADD AR1, AR3 ; |275| 
        MOV AC0, dbl(*AR3(short(#2))) ; |275| 
	.dwpsn	file "../FFT/FFT.c",line 276,column 5,is_stmt
        MOV dbl(*SP(#8)), AC0 ; |276| 
        ADD dbl(*SP(#22)), AC0, AC0 ; |276| 
        MOV AC0, dbl(*SP(#22)) ; |276| 
	.dwpsn	file "../FFT/FFT.c",line 250,column 26,is_stmt
        MOV dbl(*SP(#16)), AC0 ; |250| 
        ADD #1, AC0 ; |250| 
        MOV AC0, dbl(*SP(#16)) ; |250| 
	.dwpsn	file "../FFT/FFT.c",line 250,column 17,is_stmt
        MOV dbl(*SP(#12)), AC0 ; |250| 
        MOV dbl(*SP(#16)), AC1 ; |250| 
        CMP AC1 < AC0, TC1 ; |250| 
        BCC $C$L26,TC1 ; |250| 
                                        ; branchcc occurs ; |250| 
$C$DW$L$_MWDSPCG_FFT_DblLen_C$7$E:
	.dwpsn	file "../FFT/FFT.c",line 280,column 1,is_stmt
$C$L27:    
        AADD #41, SP
	.dwcfi	cfa_offset, 3
        POPBOTH XAR5
	.dwcfi	restore_reg, 26
	.dwcfi	cfa_offset, 2
        POP T2
	.dwcfi	restore_reg, 14
	.dwcfi	cfa_offset, 1
$C$DW$168	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$168, DW_AT_low_pc(0x00)
	.dwattr $C$DW$168, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$169	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$169, DW_AT_name("C:\Users\bacon\OneDrive\workspace_v6_1\PAM_project\Debug\FFT.asm:$C$L26:1:1717079648")
	.dwattr $C$DW$169, DW_AT_TI_begin_file("../FFT/FFT.c")
	.dwattr $C$DW$169, DW_AT_TI_begin_line(0xfa)
	.dwattr $C$DW$169, DW_AT_TI_end_line(0x115)
$C$DW$170	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$170, DW_AT_low_pc($C$DW$L$_MWDSPCG_FFT_DblLen_C$6$B)
	.dwattr $C$DW$170, DW_AT_high_pc($C$DW$L$_MWDSPCG_FFT_DblLen_C$6$E)
$C$DW$171	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$171, DW_AT_low_pc($C$DW$L$_MWDSPCG_FFT_DblLen_C$7$B)
	.dwattr $C$DW$171, DW_AT_high_pc($C$DW$L$_MWDSPCG_FFT_DblLen_C$7$E)
	.dwendtag $C$DW$169

	.dwattr $C$DW$117, DW_AT_TI_end_file("../FFT/FFT.c")
	.dwattr $C$DW$117, DW_AT_TI_end_line(0x118)
	.dwattr $C$DW$117, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$117

	.sect	".text"
	.global	_rt_hypotf_snf

$C$DW$172	.dwtag  DW_TAG_subprogram, DW_AT_name("rt_hypotf_snf")
	.dwattr $C$DW$172, DW_AT_low_pc(_rt_hypotf_snf)
	.dwattr $C$DW$172, DW_AT_high_pc(0x00)
	.dwattr $C$DW$172, DW_AT_TI_symbol_name("_rt_hypotf_snf")
	.dwattr $C$DW$172, DW_AT_external
	.dwattr $C$DW$172, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$172, DW_AT_TI_begin_file("../FFT/FFT.c")
	.dwattr $C$DW$172, DW_AT_TI_begin_line(0x11a)
	.dwattr $C$DW$172, DW_AT_TI_begin_column(0x0a)
	.dwattr $C$DW$172, DW_AT_TI_max_frame_size(0x0a)
	.dwpsn	file "../FFT/FFT.c",line 283,column 1,is_stmt,address _rt_hypotf_snf

	.dwfde $C$DW$CIE, _rt_hypotf_snf
$C$DW$173	.dwtag  DW_TAG_formal_parameter, DW_AT_name("u0")
	.dwattr $C$DW$173, DW_AT_TI_symbol_name("_u0")
	.dwattr $C$DW$173, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$173, DW_AT_location[DW_OP_reg0]
$C$DW$174	.dwtag  DW_TAG_formal_parameter, DW_AT_name("u1")
	.dwattr $C$DW$174, DW_AT_TI_symbol_name("_u1")
	.dwattr $C$DW$174, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$174, DW_AT_location[DW_OP_reg3]
;*******************************************************************************
;* FUNCTION NAME: rt_hypotf_snf                                                *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,SP,CARRY,M40,SATA,SATD,RDM,FRCT,  *
;*                        SMUL                                                 *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 10 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (8 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_rt_hypotf_snf:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-9, SP
	.dwcfi	cfa_offset, 10
$C$DW$175	.dwtag  DW_TAG_variable, DW_AT_name("u0")
	.dwattr $C$DW$175, DW_AT_TI_symbol_name("_u0")
	.dwattr $C$DW$175, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$175, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$176	.dwtag  DW_TAG_variable, DW_AT_name("u1")
	.dwattr $C$DW$176, DW_AT_TI_symbol_name("_u1")
	.dwattr $C$DW$176, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$176, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$177	.dwtag  DW_TAG_variable, DW_AT_name("a")
	.dwattr $C$DW$177, DW_AT_TI_symbol_name("_a")
	.dwattr $C$DW$177, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$177, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$178	.dwtag  DW_TAG_variable, DW_AT_name("y")
	.dwattr $C$DW$178, DW_AT_TI_symbol_name("_y")
	.dwattr $C$DW$178, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$178, DW_AT_location[DW_OP_bregx 0x24 6]
        MOV AC1, dbl(*SP(#2)) ; |283| 
        MOV AC0, dbl(*SP(#0)) ; |283| 
	.dwpsn	file "../FFT/FFT.c",line 286,column 3,is_stmt
        SFTL AC0, #1, AC0 ; |286| 
        SFTL AC0, #-1 ; |286| 
        MOV AC0, dbl(*SP(#4)) ; |286| 
	.dwpsn	file "../FFT/FFT.c",line 287,column 3,is_stmt
        MOV dbl(*SP(#2)), AC0 ; |287| 
        SFTL AC0, #1, AC0 ; |287| 
        SFTL AC0, #-1 ; |287| 
        MOV AC0, dbl(*SP(#6)) ; |287| 
	.dwpsn	file "../FFT/FFT.c",line 288,column 3,is_stmt
        MOV dbl(*SP(#6)), AC1 ; |288| 
        MOV dbl(*SP(#4)), AC0 ; |288| 
$C$DW$179	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$179, DW_AT_low_pc(0x00)
	.dwattr $C$DW$179, DW_AT_name("__cmpd")
	.dwattr $C$DW$179, DW_AT_TI_call
        CALL #__cmpd ; |288| 
                                        ; call occurs [#__cmpd] ; |288| 
        BCC $C$L28,T0 >= #0 ; |288| 
                                        ; branchcc occurs ; |288| 
	.dwpsn	file "../FFT/FFT.c",line 289,column 5,is_stmt
        MOV dbl(*SP(#4)), AC0 ; |289| 
        MOV dbl(*SP(#6)), AC1 ; |289| 
$C$DW$180	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$180, DW_AT_low_pc(0x00)
	.dwattr $C$DW$180, DW_AT_name("__divd")
	.dwattr $C$DW$180, DW_AT_TI_call
        CALL #__divd ; |289| 
                                        ; call occurs [#__divd] ; |289| 
        MOV AC0, dbl(*SP(#4)) ; |289| 
	.dwpsn	file "../FFT/FFT.c",line 290,column 5,is_stmt
        MOV dbl(*SP(#4)), AC1 ; |290| 
$C$DW$181	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$181, DW_AT_low_pc(0x00)
	.dwattr $C$DW$181, DW_AT_name("__mpyd")
	.dwattr $C$DW$181, DW_AT_TI_call
        CALL #__mpyd ; |290| 
                                        ; call occurs [#__mpyd] ; |290| 
        MOV dbl(*($C$FL3)), AC1 ; |290| 
$C$DW$182	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$182, DW_AT_low_pc(0x00)
	.dwattr $C$DW$182, DW_AT_name("__addd")
	.dwattr $C$DW$182, DW_AT_TI_call
        CALL #__addd ; |290| 
                                        ; call occurs [#__addd] ; |290| 
$C$DW$183	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$183, DW_AT_low_pc(0x00)
	.dwattr $C$DW$183, DW_AT_name("_sqrt")
	.dwattr $C$DW$183, DW_AT_TI_call
        CALL #_sqrt ; |290| 
                                        ; call occurs [#_sqrt] ; |290| 

        MOV dbl(*SP(#6)), AC0 ; |290| 
||      OR #0, AC0, AC1

$C$DW$184	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$184, DW_AT_low_pc(0x00)
	.dwattr $C$DW$184, DW_AT_name("__mpyd")
	.dwattr $C$DW$184, DW_AT_TI_call
        CALL #__mpyd ; |290| 
                                        ; call occurs [#__mpyd] ; |290| 
        MOV AC0, dbl(*SP(#6)) ; |290| 
	.dwpsn	file "../FFT/FFT.c",line 291,column 3,is_stmt
        B $C$L30  ; |291| 
                                        ; branch occurs ; |291| 
$C$L28:    
	.dwpsn	file "../FFT/FFT.c",line 291,column 10,is_stmt
        MOV dbl(*SP(#4)), AC0 ; |291| 
        MOV dbl(*SP(#6)), AC1 ; |291| 
$C$DW$185	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$185, DW_AT_low_pc(0x00)
	.dwattr $C$DW$185, DW_AT_name("__cmpd")
	.dwattr $C$DW$185, DW_AT_TI_call
        CALL #__cmpd ; |291| 
                                        ; call occurs [#__cmpd] ; |291| 
        BCC $C$L29,T0 <= #0 ; |291| 
                                        ; branchcc occurs ; |291| 
	.dwpsn	file "../FFT/FFT.c",line 292,column 5,is_stmt
        MOV dbl(*SP(#6)), AC0 ; |292| 
        MOV dbl(*SP(#4)), AC1 ; |292| 
$C$DW$186	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$186, DW_AT_low_pc(0x00)
	.dwattr $C$DW$186, DW_AT_name("__divd")
	.dwattr $C$DW$186, DW_AT_TI_call
        CALL #__divd ; |292| 
                                        ; call occurs [#__divd] ; |292| 
        MOV AC0, dbl(*SP(#6)) ; |292| 
	.dwpsn	file "../FFT/FFT.c",line 293,column 5,is_stmt
        MOV dbl(*SP(#6)), AC1 ; |293| 
$C$DW$187	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$187, DW_AT_low_pc(0x00)
	.dwattr $C$DW$187, DW_AT_name("__mpyd")
	.dwattr $C$DW$187, DW_AT_TI_call
        CALL #__mpyd ; |293| 
                                        ; call occurs [#__mpyd] ; |293| 
        MOV dbl(*($C$FL3)), AC1 ; |293| 
$C$DW$188	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$188, DW_AT_low_pc(0x00)
	.dwattr $C$DW$188, DW_AT_name("__addd")
	.dwattr $C$DW$188, DW_AT_TI_call
        CALL #__addd ; |293| 
                                        ; call occurs [#__addd] ; |293| 
$C$DW$189	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$189, DW_AT_low_pc(0x00)
	.dwattr $C$DW$189, DW_AT_name("_sqrt")
	.dwattr $C$DW$189, DW_AT_TI_call
        CALL #_sqrt ; |293| 
                                        ; call occurs [#_sqrt] ; |293| 
        MOV dbl(*SP(#4)), AC1 ; |293| 
$C$DW$190	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$190, DW_AT_low_pc(0x00)
	.dwattr $C$DW$190, DW_AT_name("__mpyd")
	.dwattr $C$DW$190, DW_AT_TI_call
        CALL #__mpyd ; |293| 
                                        ; call occurs [#__mpyd] ; |293| 
        MOV AC0, dbl(*SP(#6)) ; |293| 
	.dwpsn	file "../FFT/FFT.c",line 294,column 3,is_stmt
        B $C$L30  ; |294| 
                                        ; branch occurs ; |294| 
$C$L29:    
	.dwpsn	file "../FFT/FFT.c",line 295,column 5,is_stmt
        MOV dbl(*SP(#6)), AC0 ; |295| 
$C$DW$191	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$191, DW_AT_low_pc(0x00)
	.dwattr $C$DW$191, DW_AT_name("_rtIsNaNF")
	.dwattr $C$DW$191, DW_AT_TI_call
        CALL #_rtIsNaNF ; |295| 
                                        ; call occurs [#_rtIsNaNF] ; |295| 
        BCC $C$L30,T0 != #0 ; |295| 
                                        ; branchcc occurs ; |295| 
	.dwpsn	file "../FFT/FFT.c",line 296,column 7,is_stmt
        MOV dbl(*SP(#4)), AC0 ; |296| 
        MOV dbl(*($C$FL4)), AC1 ; |296| 
$C$DW$192	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$192, DW_AT_low_pc(0x00)
	.dwattr $C$DW$192, DW_AT_name("__mpyd")
	.dwattr $C$DW$192, DW_AT_TI_call
        CALL #__mpyd ; |296| 
                                        ; call occurs [#__mpyd] ; |296| 
        MOV AC0, dbl(*SP(#6)) ; |296| 
$C$L30:    
	.dwpsn	file "../FFT/FFT.c",line 300,column 3,is_stmt
        MOV dbl(*SP(#6)), AC0 ; |300| 
	.dwpsn	file "../FFT/FFT.c",line 301,column 1,is_stmt
        AADD #9, SP
	.dwcfi	cfa_offset, 1
$C$DW$193	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$193, DW_AT_low_pc(0x00)
	.dwattr $C$DW$193, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$172, DW_AT_TI_end_file("../FFT/FFT.c")
	.dwattr $C$DW$172, DW_AT_TI_end_line(0x12d)
	.dwattr $C$DW$172, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$172

	.sect	".text"
	.global	_FFT_step

$C$DW$194	.dwtag  DW_TAG_subprogram, DW_AT_name("FFT_step")
	.dwattr $C$DW$194, DW_AT_low_pc(_FFT_step)
	.dwattr $C$DW$194, DW_AT_high_pc(0x00)
	.dwattr $C$DW$194, DW_AT_TI_symbol_name("_FFT_step")
	.dwattr $C$DW$194, DW_AT_external
	.dwattr $C$DW$194, DW_AT_TI_begin_file("../FFT/FFT.c")
	.dwattr $C$DW$194, DW_AT_TI_begin_line(0x130)
	.dwattr $C$DW$194, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$194, DW_AT_TI_max_frame_size(0x30e)
	.dwpsn	file "../FFT/FFT.c",line 305,column 1,is_stmt,address _FFT_step

	.dwfde $C$DW$CIE, _FFT_step
;*******************************************************************************
;* FUNCTION NAME: FFT_step                                                     *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,AC2,AC2,T0,T2,AR0,XAR0,AR1,XAR1,AR2, *
;*                        AR3,XAR3,AR5,XAR5,FP,XFP,SP,CARRY,TC1,M40,SATA,SATD, *
;*                        RDM,FRCT,SMUL                                        *
;*   Save On Entry Regs : T2,AR5,FP                                            *
;*   Stack Frame        : Full (Frame Pointer in AR6, w/ debug)                *
;*   Total Frame Size   : 782 words                                            *
;*                        (2 return address/alignment)                         *
;*                        (4 function parameters)                              *
;*                        (773 local values)                                   *
;*                        (3 register save area)                               *
;*   Min System Stack   : 3 words                                              *
;*******************************************************************************
_FFT_step:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        PSH T2
	.dwcfi	cfa_offset, 2
	.dwcfi	save_reg_to_mem, 14, -2
        PSHBOTH XAR5
	.dwcfi	cfa_offset, 3
	.dwcfi	save_reg_to_mem, 26, -3
        PSHBOTH XFP
	.dwcfi	cfa_offset, 4
	.dwcfi	save_reg_to_mem, 32, -4
        ADD #-778, mmap(SP)
        AMAR *SP(#0), XFP
	.dwcfi	cfa_offset, 782
$C$DW$195	.dwtag  DW_TAG_variable, DW_AT_name("rtb_FFT")
	.dwattr $C$DW$195, DW_AT_TI_symbol_name("_rtb_FFT")
	.dwattr $C$DW$195, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$195, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$196	.dwtag  DW_TAG_variable, DW_AT_name("rtb_FFT_0")
	.dwattr $C$DW$196, DW_AT_TI_symbol_name("_rtb_FFT_0")
	.dwattr $C$DW$196, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$196, DW_AT_location[DW_OP_bregx 0x24 516]
$C$DW$197	.dwtag  DW_TAG_variable, DW_AT_name("rtb_Abs")
	.dwattr $C$DW$197, DW_AT_TI_symbol_name("_rtb_Abs")
	.dwattr $C$DW$197, DW_AT_type(*$C$DW$T$63)
	.dwattr $C$DW$197, DW_AT_location[DW_OP_bregx 0x24 518]
$C$DW$198	.dwtag  DW_TAG_variable, DW_AT_name("tmp")
	.dwattr $C$DW$198, DW_AT_TI_symbol_name("_tmp")
	.dwattr $C$DW$198, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$198, DW_AT_location[DW_OP_bregx 0x24 774]
$C$DW$199	.dwtag  DW_TAG_variable, DW_AT_name("i")
	.dwattr $C$DW$199, DW_AT_TI_symbol_name("_i")
	.dwattr $C$DW$199, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$199, DW_AT_location[DW_OP_bregx 0x24 776]
	.dwpsn	file "../FFT/FFT.c",line 316,column 8,is_stmt
        MOV #0, *FP(#776) ; |316| 
	.dwpsn	file "../FFT/FFT.c",line 316,column 15,is_stmt
        MOV #128, AR2 ; |316| 
        MOV *FP(#776), AR1 ; |316| 
        CMP AR1 >= AR2, TC1 ; |316| 
        BCC $C$L32,TC1 ; |316| 
                                        ; branchcc occurs ; |316| 
$C$L31:    
$C$DW$L$_FFT_step$2$B:
	.dwpsn	file "../FFT/FFT.c",line 317,column 5,is_stmt
        MOV AR1, T0 ; |317| 
        AMOV #_FFT_U, XAR3 ; |317| 
        MOV *AR3(T0), T0 ; |317| 
$C$DW$200	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$200, DW_AT_low_pc(0x00)
	.dwattr $C$DW$200, DW_AT_name("__fltid")
	.dwattr $C$DW$200, DW_AT_TI_call
        CALL #__fltid ; |317| 
                                        ; call occurs [#__fltid] ; |317| 
        MOV dbl(*($C$FL5)), AC1 ; |317| 
$C$DW$201	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$201, DW_AT_low_pc(0x00)
	.dwattr $C$DW$201, DW_AT_name("__mpyd")
	.dwattr $C$DW$201, DW_AT_TI_call
        CALL #__mpyd ; |317| 
                                        ; call occurs [#__mpyd] ; |317| 
        MOV *FP(#776), T0 ; |317| 
        SFTL T0, #1 ; |317| 
        AMAR *SP(#0), XAR3
        AMAR *+AR3(#518)
        MOV AC0, dbl(*AR3(T0)) ; |317| 
	.dwpsn	file "../FFT/FFT.c",line 316,column 24,is_stmt
        ADD #1, *FP(#776) ; |316| 
	.dwpsn	file "../FFT/FFT.c",line 316,column 15,is_stmt
        MOV #128, AR2 ; |316| 
        MOV *FP(#776), AR1 ; |316| 
        CMP AR1 < AR2, TC1 ; |316| 
        BCC $C$L31,TC1 ; |316| 
                                        ; branchcc occurs ; |316| 
$C$DW$L$_FFT_step$2$E:
$C$L32:    
	.dwpsn	file "../FFT/FFT.c",line 325,column 3,is_stmt
        AMAR *SP(#0), XAR0
        AMAR *SP(#4), XAR1
        MOV #128, AC1 ; |325| 
        AMAR *+AR0(#518)
$C$DW$202	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$202, DW_AT_low_pc(0x00)
	.dwattr $C$DW$202, DW_AT_name("_MWDSPCG_FFT_Interleave_R2BR_S")
	.dwattr $C$DW$202, DW_AT_TI_call

        CALL #_MWDSPCG_FFT_Interleave_R2BR_S ; |325| 
||      MOV #1, AC0 ; |325| 

                                        ; call occurs [#_MWDSPCG_FFT_Interleave_R2BR_S] ; |325| 
	.dwpsn	file "../FFT/FFT.c",line 326,column 3,is_stmt
        MOV #64, AC2 ; |326| 
        AMOV #_FFT_ConstP, XAR1 ; |326| 
        AMAR *SP(#4), XAR0

        MOV #128, AC1 ; |326| 
||      MOV #0, AC0 ; |326| 

        MOV #2, AC0 ; |326| 
||      MOV AC0, dbl(*SP(#0)) ; |326| 

        MOV AC0, dbl(*SP(#2)) ; |326| 
||      MOV #0, T0

$C$DW$203	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$203, DW_AT_low_pc(0x00)
	.dwattr $C$DW$203, DW_AT_name("_MWDSPCG_R2DIT_TBLS_C")
	.dwattr $C$DW$203, DW_AT_TI_call

        CALL #_MWDSPCG_R2DIT_TBLS_C ; |326| 
||      MOV #1, AC0 ; |326| 

                                        ; call occurs [#_MWDSPCG_R2DIT_TBLS_C] ; |326| 
	.dwpsn	file "../FFT/FFT.c",line 328,column 3,is_stmt
        AMOV #_FFT_ConstP, XAR1 ; |328| 
        MOV #128, AC1 ; |328| 

        MOV #1, AC0 ; |328| 
||      AMAR *SP(#4), XAR0

$C$DW$204	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$204, DW_AT_low_pc(0x00)
	.dwattr $C$DW$204, DW_AT_name("_MWDSPCG_FFT_DblLen_C")
	.dwattr $C$DW$204, DW_AT_TI_call

        CALL #_MWDSPCG_FFT_DblLen_C ; |328| 
||      MOV #1, AC2 ; |328| 

                                        ; call occurs [#_MWDSPCG_FFT_DblLen_C] ; |328| 
	.dwpsn	file "../FFT/FFT.c",line 332,column 8,is_stmt
        MOV #0, *FP(#776) ; |332| 
	.dwpsn	file "../FFT/FFT.c",line 332,column 15,is_stmt
        MOV #128, AR2 ; |332| 
        MOV *FP(#776), AR1 ; |332| 
        CMP AR1 >= AR2, TC1 ; |332| 
        BCC $C$L36,TC1 ; |332| 
                                        ; branchcc occurs ; |332| 
$C$L33:    
$C$DW$L$_FFT_step$4$B:
	.dwpsn	file "../FFT/FFT.c",line 333,column 5,is_stmt
        MOV *FP(#776) << #2, AC0 ; |333| 
        MOV AC0, T2 ; |333| 
        MOV T2, T0 ; |333| 
        AMAR *SP(#4), XAR5
        MOV dbl(*($C$FL6)), AC1 ; |333| 
        MOV dbl(*AR5(T0)), AC0 ; |333| 
$C$DW$205	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$205, DW_AT_low_pc(0x00)
	.dwattr $C$DW$205, DW_AT_name("__divd")
	.dwattr $C$DW$205, DW_AT_TI_call
        CALL #__divd ; |333| 
                                        ; call occurs [#__divd] ; |333| 
        MOV T2, T0 ; |333| 
        MOV AC0, dbl(*AR5(T0)) ; |333| 
	.dwpsn	file "../FFT/FFT.c",line 334,column 5,is_stmt
        MOV *FP(#776) << #2, AC0 ; |334| 
        MOV AC0, AR1 ; |334| 
        AMAR *SP(#4), XAR5
        MOV dbl(*($C$FL6)), AC1 ; |334| 
        AADD AR1, AR5 ; |334| 
        MOV dbl(*AR5(short(#2))), AC0 ; |334| 
$C$DW$206	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$206, DW_AT_low_pc(0x00)
	.dwattr $C$DW$206, DW_AT_name("__divd")
	.dwattr $C$DW$206, DW_AT_TI_call
        CALL #__divd ; |334| 
                                        ; call occurs [#__divd] ; |334| 
        MOV AC0, dbl(*AR5(short(#2))) ; |334| 
	.dwpsn	file "../FFT/FFT.c",line 337,column 5,is_stmt
        MOV *FP(#776) << #2, AC0 ; |337| 
        MOV AC0, AR1 ; |337| 
        AMAR *SP(#4), XAR3
        AADD AR1, AR3 ; |337| 
        MOV XAR3, dbl(*FP(#516))
	.dwpsn	file "../FFT/FFT.c",line 342,column 5,is_stmt
        MOV dbl(*AR3), AC0 ; |342| 
        MOV dbl(*AR3(short(#2))), AC1 ; |342| 
$C$DW$207	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$207, DW_AT_low_pc(0x00)
	.dwattr $C$DW$207, DW_AT_name("_rt_hypotf_snf")
	.dwattr $C$DW$207, DW_AT_TI_call
        CALL #_rt_hypotf_snf ; |342| 
                                        ; call occurs [#_rt_hypotf_snf] ; |342| 
        MOV dbl(*($C$FL7)), AC1 ; |342| 
$C$DW$208	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$208, DW_AT_low_pc(0x00)
	.dwattr $C$DW$208, DW_AT_name("__mpyd")
	.dwattr $C$DW$208, DW_AT_TI_call
        CALL #__mpyd ; |342| 
                                        ; call occurs [#__mpyd] ; |342| 
$C$DW$209	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$209, DW_AT_low_pc(0x00)
	.dwattr $C$DW$209, DW_AT_name("_floor")
	.dwattr $C$DW$209, DW_AT_TI_call
        CALL #_floor ; |342| 
                                        ; call occurs [#_floor] ; |342| 
        MOV AC0, dbl(*FP(#774)) ; |342| 
	.dwpsn	file "../FFT/FFT.c",line 343,column 5,is_stmt
        MOV dbl(*($C$FL7)), AC1 ; |343| 
$C$DW$210	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$210, DW_AT_low_pc(0x00)
	.dwattr $C$DW$210, DW_AT_name("__cmpd")
	.dwattr $C$DW$210, DW_AT_TI_call
        CALL #__cmpd ; |343| 
                                        ; call occurs [#__cmpd] ; |343| 
        BCC $C$L34,T0 >= #0 ; |343| 
                                        ; branchcc occurs ; |343| 
$C$DW$L$_FFT_step$4$E:
$C$DW$L$_FFT_step$5$B:
	.dwpsn	file "../FFT/FFT.c",line 345,column 7,is_stmt
        MOV dbl(*FP(#774)), AC0 ; |345| 
$C$DW$211	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$211, DW_AT_low_pc(0x00)
	.dwattr $C$DW$211, DW_AT_name("__fixdi")
	.dwattr $C$DW$211, DW_AT_TI_call
        CALL #__fixdi ; |345| 
                                        ; call occurs [#__fixdi] ; |345| 
        MOV T0, AR1 ; |345| 
        MOV *FP(#776), T0 ; |345| 
        AMOV #_FFT_Y, XAR3 ; |345| 
        MOV AR1, *AR3(T0) ; |345| 
	.dwpsn	file "../FFT/FFT.c",line 346,column 5,is_stmt
        B $C$L35  ; |346| 
                                        ; branch occurs ; |346| 
$C$DW$L$_FFT_step$5$E:
$C$L34:    
$C$DW$L$_FFT_step$6$B:
	.dwpsn	file "../FFT/FFT.c",line 348,column 7,is_stmt
        MOV *FP(#776), T0 ; |348| 
        AMOV #_FFT_Y, XAR3 ; |348| 
        MOV #32767, *AR3(T0) ; |348| 
$C$DW$L$_FFT_step$6$E:
$C$L35:    
$C$DW$L$_FFT_step$7$B:
	.dwpsn	file "../FFT/FFT.c",line 332,column 24,is_stmt
        ADD #1, *FP(#776) ; |332| 
	.dwpsn	file "../FFT/FFT.c",line 332,column 15,is_stmt
        MOV #128, AR2 ; |332| 
        MOV *FP(#776), AR1 ; |332| 
        CMP AR1 < AR2, TC1 ; |332| 
        BCC $C$L33,TC1 ; |332| 
                                        ; branchcc occurs ; |332| 
$C$DW$L$_FFT_step$7$E:
	.dwpsn	file "../FFT/FFT.c",line 355,column 1,is_stmt
$C$L36:    
        ADD #778, mmap(SP)
	.dwcfi	cfa_offset, 4
        POPBOTH XFP
	.dwcfi	restore_reg, 32
	.dwcfi	cfa_offset, 3
        POPBOTH XAR5
	.dwcfi	restore_reg, 26
	.dwcfi	cfa_offset, 2
        POP T2
	.dwcfi	restore_reg, 14
	.dwcfi	cfa_offset, 1
$C$DW$212	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$212, DW_AT_low_pc(0x00)
	.dwattr $C$DW$212, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$213	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$213, DW_AT_name("C:\Users\bacon\OneDrive\workspace_v6_1\PAM_project\Debug\FFT.asm:$C$L33:1:1717079648")
	.dwattr $C$DW$213, DW_AT_TI_begin_file("../FFT/FFT.c")
	.dwattr $C$DW$213, DW_AT_TI_begin_line(0x14c)
	.dwattr $C$DW$213, DW_AT_TI_end_line(0x160)
$C$DW$214	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$214, DW_AT_low_pc($C$DW$L$_FFT_step$4$B)
	.dwattr $C$DW$214, DW_AT_high_pc($C$DW$L$_FFT_step$4$E)
$C$DW$215	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$215, DW_AT_low_pc($C$DW$L$_FFT_step$5$B)
	.dwattr $C$DW$215, DW_AT_high_pc($C$DW$L$_FFT_step$5$E)
$C$DW$216	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$216, DW_AT_low_pc($C$DW$L$_FFT_step$6$B)
	.dwattr $C$DW$216, DW_AT_high_pc($C$DW$L$_FFT_step$6$E)
$C$DW$217	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$217, DW_AT_low_pc($C$DW$L$_FFT_step$7$B)
	.dwattr $C$DW$217, DW_AT_high_pc($C$DW$L$_FFT_step$7$E)
	.dwendtag $C$DW$213


$C$DW$218	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$218, DW_AT_name("C:\Users\bacon\OneDrive\workspace_v6_1\PAM_project\Debug\FFT.asm:$C$L31:1:1717079648")
	.dwattr $C$DW$218, DW_AT_TI_begin_file("../FFT/FFT.c")
	.dwattr $C$DW$218, DW_AT_TI_begin_line(0x13c)
	.dwattr $C$DW$218, DW_AT_TI_end_line(0x13e)
$C$DW$219	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$219, DW_AT_low_pc($C$DW$L$_FFT_step$2$B)
	.dwattr $C$DW$219, DW_AT_high_pc($C$DW$L$_FFT_step$2$E)
	.dwendtag $C$DW$218

	.dwattr $C$DW$194, DW_AT_TI_end_file("../FFT/FFT.c")
	.dwattr $C$DW$194, DW_AT_TI_end_line(0x163)
	.dwattr $C$DW$194, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$194

	.sect	".text"
	.global	_FFT_initialize

$C$DW$220	.dwtag  DW_TAG_subprogram, DW_AT_name("FFT_initialize")
	.dwattr $C$DW$220, DW_AT_low_pc(_FFT_initialize)
	.dwattr $C$DW$220, DW_AT_high_pc(0x00)
	.dwattr $C$DW$220, DW_AT_TI_symbol_name("_FFT_initialize")
	.dwattr $C$DW$220, DW_AT_external
	.dwattr $C$DW$220, DW_AT_TI_begin_file("../FFT/FFT.c")
	.dwattr $C$DW$220, DW_AT_TI_begin_line(0x166)
	.dwattr $C$DW$220, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$220, DW_AT_TI_max_frame_size(0x02)
	.dwpsn	file "../FFT/FFT.c",line 359,column 1,is_stmt,address _FFT_initialize

	.dwfde $C$DW$CIE, _FFT_initialize
;*******************************************************************************
;* FUNCTION NAME: FFT_initialize                                               *
;*                                                                             *
;*   Function Uses Regs : T0,SP,M40,SATA,SATD,RDM,FRCT,SMUL                    *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 2 words                                              *
;*                        (2 return address/alignment)                         *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_FFT_initialize:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-1, SP
	.dwcfi	cfa_offset, 2
	.dwpsn	file "../FFT/FFT.c",line 363,column 3,is_stmt
        MOV #2, T0
$C$DW$221	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$221, DW_AT_low_pc(0x00)
	.dwattr $C$DW$221, DW_AT_name("_rt_InitInfAndNaN")
	.dwattr $C$DW$221, DW_AT_TI_call
        CALL #_rt_InitInfAndNaN ; |363| 
                                        ; call occurs [#_rt_InitInfAndNaN] ; |363| 
	.dwpsn	file "../FFT/FFT.c",line 364,column 1,is_stmt
        AADD #1, SP
	.dwcfi	cfa_offset, 1
$C$DW$222	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$222, DW_AT_low_pc(0x00)
	.dwattr $C$DW$222, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$220, DW_AT_TI_end_file("../FFT/FFT.c")
	.dwattr $C$DW$220, DW_AT_TI_end_line(0x16c)
	.dwattr $C$DW$220, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$220

	.sect	".text"
	.global	_FFT_terminate

$C$DW$223	.dwtag  DW_TAG_subprogram, DW_AT_name("FFT_terminate")
	.dwattr $C$DW$223, DW_AT_low_pc(_FFT_terminate)
	.dwattr $C$DW$223, DW_AT_high_pc(0x00)
	.dwattr $C$DW$223, DW_AT_TI_symbol_name("_FFT_terminate")
	.dwattr $C$DW$223, DW_AT_external
	.dwattr $C$DW$223, DW_AT_TI_begin_file("../FFT/FFT.c")
	.dwattr $C$DW$223, DW_AT_TI_begin_line(0x16f)
	.dwattr $C$DW$223, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$223, DW_AT_TI_max_frame_size(0x01)
	.dwpsn	file "../FFT/FFT.c",line 368,column 1,is_stmt,address _FFT_terminate

	.dwfde $C$DW$CIE, _FFT_terminate
;*******************************************************************************
;* FUNCTION NAME: FFT_terminate                                                *
;*                                                                             *
;*   Function Uses Regs : SP,M40,SATA,SATD,RDM,FRCT,SMUL                       *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 1 word                                               *
;*                        (1 return address/alignment)                         *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_FFT_terminate:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
	.dwpsn	file "../FFT/FFT.c",line 370,column 1,is_stmt
$C$DW$224	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$224, DW_AT_low_pc(0x00)
	.dwattr $C$DW$224, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$223, DW_AT_TI_end_file("../FFT/FFT.c")
	.dwattr $C$DW$223, DW_AT_TI_end_line(0x172)
	.dwattr $C$DW$223, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$223

;*******************************************************************************
;* FLOATING-POINT CONSTANTS                                                    *
;*******************************************************************************
	.sect	".const"
	.align	2
$C$FL1:	.xlong	0x00000000
	.align	2
$C$FL2:	.xlong	0x40000000
	.align	2
$C$FL3:	.xlong	0x3f800000
	.align	2
$C$FL4:	.xlong	0x3fb504f3
	.align	2
$C$FL5:	.xlong	0x38000000
	.align	2
$C$FL6:	.xlong	0x43000000
	.align	2
$C$FL7:	.xlong	0x47000000
;******************************************************************************
;* UNDEFINED EXTERNAL REFERENCES                                              *
;******************************************************************************
	.global	_sqrt
	.global	_floor
	.global	_rt_InitInfAndNaN
	.global	_rtIsNaNF
	.global	_FFT_ConstP
	.global	__mpyli
	.global	__subd
	.global	__addd
	.global	__fltid
	.global	__mpyd
	.global	__negd
	.global	__divd
	.global	__cmpd
	.global	__fixdi

;*******************************************************************************
;* TYPE INFORMATION                                                            *
;*******************************************************************************

$C$DW$T$20	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$20, DW_AT_byte_size(0x04)
$C$DW$225	.dwtag  DW_TAG_member
	.dwattr $C$DW$225, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$225, DW_AT_name("re")
	.dwattr $C$DW$225, DW_AT_TI_symbol_name("_re")
	.dwattr $C$DW$225, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$225, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$226	.dwtag  DW_TAG_member
	.dwattr $C$DW$226, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$226, DW_AT_name("im")
	.dwattr $C$DW$226, DW_AT_TI_symbol_name("_im")
	.dwattr $C$DW$226, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$226, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$20

$C$DW$T$33	.dwtag  DW_TAG_typedef, DW_AT_name("creal32_T")
	.dwattr $C$DW$T$33, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$33, DW_AT_language(DW_LANG_C)
$C$DW$T$34	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$34, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$T$34, DW_AT_address_class(0x17)

$C$DW$T$35	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$35, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$T$35, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$35, DW_AT_byte_size(0x200)
$C$DW$227	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$227, DW_AT_upper_bound(0x7f)
	.dwendtag $C$DW$T$35


$C$DW$T$22	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$22, DW_AT_byte_size(0xc0)
$C$DW$228	.dwtag  DW_TAG_member
	.dwattr $C$DW$228, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$228, DW_AT_name("FFT_TwiddleTable")
	.dwattr $C$DW$228, DW_AT_TI_symbol_name("_FFT_TwiddleTable")
	.dwattr $C$DW$228, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$228, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$22

$C$DW$T$37	.dwtag  DW_TAG_typedef, DW_AT_name("ConstP_FFT_T")
	.dwattr $C$DW$T$37, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$T$37, DW_AT_language(DW_LANG_C)
$C$DW$229	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$229, DW_AT_type(*$C$DW$T$37)
$C$DW$T$38	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$38, DW_AT_type(*$C$DW$229)

$C$DW$T$25	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$25, DW_AT_byte_size(0x80)
$C$DW$230	.dwtag  DW_TAG_member
	.dwattr $C$DW$230, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$230, DW_AT_name("In1")
	.dwattr $C$DW$230, DW_AT_TI_symbol_name("_In1")
	.dwattr $C$DW$230, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$230, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$25

$C$DW$T$39	.dwtag  DW_TAG_typedef, DW_AT_name("ExtU_FFT_T")
	.dwattr $C$DW$T$39, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$T$39, DW_AT_language(DW_LANG_C)

$C$DW$T$26	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$26, DW_AT_byte_size(0x80)
$C$DW$231	.dwtag  DW_TAG_member
	.dwattr $C$DW$231, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$231, DW_AT_name("Out1")
	.dwattr $C$DW$231, DW_AT_TI_symbol_name("_Out1")
	.dwattr $C$DW$231, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$231, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$26

$C$DW$T$40	.dwtag  DW_TAG_typedef, DW_AT_name("ExtY_FFT_T")
	.dwattr $C$DW$T$40, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$T$40, DW_AT_language(DW_LANG_C)
$C$DW$T$4	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$4, DW_AT_encoding(DW_ATE_boolean)
	.dwattr $C$DW$T$4, DW_AT_name("bool")
	.dwattr $C$DW$T$4, DW_AT_byte_size(0x01)
$C$DW$T$5	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$5, DW_AT_encoding(DW_ATE_signed_char)
	.dwattr $C$DW$T$5, DW_AT_name("signed char")
	.dwattr $C$DW$T$5, DW_AT_byte_size(0x01)
$C$DW$T$6	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$6, DW_AT_encoding(DW_ATE_unsigned_char)
	.dwattr $C$DW$T$6, DW_AT_name("unsigned char")
	.dwattr $C$DW$T$6, DW_AT_byte_size(0x01)
$C$DW$T$7	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$7, DW_AT_encoding(DW_ATE_signed_char)
	.dwattr $C$DW$T$7, DW_AT_name("wchar_t")
	.dwattr $C$DW$T$7, DW_AT_byte_size(0x01)
$C$DW$T$8	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$8, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$8, DW_AT_name("short")
	.dwattr $C$DW$T$8, DW_AT_byte_size(0x01)
$C$DW$T$9	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$9, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$9, DW_AT_name("unsigned short")
	.dwattr $C$DW$T$9, DW_AT_byte_size(0x01)
$C$DW$T$10	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$10, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$10, DW_AT_name("int")
	.dwattr $C$DW$T$10, DW_AT_byte_size(0x01)
$C$DW$T$23	.dwtag  DW_TAG_typedef, DW_AT_name("int16_T")
	.dwattr $C$DW$T$23, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$23, DW_AT_language(DW_LANG_C)

$C$DW$T$24	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$24, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$T$24, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$24, DW_AT_byte_size(0x80)
$C$DW$232	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$232, DW_AT_upper_bound(0x7f)
	.dwendtag $C$DW$T$24

$C$DW$T$11	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$11, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$11, DW_AT_name("unsigned int")
	.dwattr $C$DW$T$11, DW_AT_byte_size(0x01)
$C$DW$T$49	.dwtag  DW_TAG_typedef, DW_AT_name("boolean_T")
	.dwattr $C$DW$T$49, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$49, DW_AT_language(DW_LANG_C)
$C$DW$T$41	.dwtag  DW_TAG_typedef, DW_AT_name("size_t")
	.dwattr $C$DW$T$41, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$41, DW_AT_language(DW_LANG_C)
$C$DW$T$59	.dwtag  DW_TAG_typedef, DW_AT_name("uint16_T")
	.dwattr $C$DW$T$59, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$59, DW_AT_language(DW_LANG_C)
$C$DW$T$12	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$12, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$12, DW_AT_name("long")
	.dwattr $C$DW$T$12, DW_AT_byte_size(0x02)
$C$DW$T$46	.dwtag  DW_TAG_typedef, DW_AT_name("int32_T")
	.dwattr $C$DW$T$46, DW_AT_type(*$C$DW$T$12)
	.dwattr $C$DW$T$46, DW_AT_language(DW_LANG_C)
$C$DW$T$13	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$13, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$13, DW_AT_name("unsigned long")
	.dwattr $C$DW$T$13, DW_AT_byte_size(0x02)
$C$DW$T$60	.dwtag  DW_TAG_typedef, DW_AT_name("uint32_T")
	.dwattr $C$DW$T$60, DW_AT_type(*$C$DW$T$13)
	.dwattr $C$DW$T$60, DW_AT_language(DW_LANG_C)
$C$DW$T$14	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$14, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$14, DW_AT_name("long long")
	.dwattr $C$DW$T$14, DW_AT_byte_size(0x04)
	.dwattr $C$DW$T$14, DW_AT_bit_size(0x28)
	.dwattr $C$DW$T$14, DW_AT_bit_offset(0x18)
$C$DW$T$15	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$15, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$15, DW_AT_name("unsigned long long")
	.dwattr $C$DW$T$15, DW_AT_byte_size(0x04)
	.dwattr $C$DW$T$15, DW_AT_bit_size(0x28)
	.dwattr $C$DW$T$15, DW_AT_bit_offset(0x18)
$C$DW$T$16	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$16, DW_AT_encoding(DW_ATE_float)
	.dwattr $C$DW$T$16, DW_AT_name("float")
	.dwattr $C$DW$T$16, DW_AT_byte_size(0x02)
$C$DW$T$19	.dwtag  DW_TAG_typedef, DW_AT_name("real32_T")
	.dwattr $C$DW$T$19, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$T$19, DW_AT_language(DW_LANG_C)

$C$DW$T$21	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$21, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$21, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$21, DW_AT_byte_size(0xc0)
$C$DW$233	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$233, DW_AT_upper_bound(0x5f)
	.dwendtag $C$DW$T$21


$C$DW$T$63	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$63, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$63, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$63, DW_AT_byte_size(0x100)
$C$DW$234	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$234, DW_AT_upper_bound(0x7f)
	.dwendtag $C$DW$T$63

$C$DW$235	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$235, DW_AT_type(*$C$DW$T$19)
$C$DW$T$44	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$44, DW_AT_type(*$C$DW$235)
$C$DW$T$45	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$45, DW_AT_type(*$C$DW$T$44)
	.dwattr $C$DW$T$45, DW_AT_address_class(0x17)
$C$DW$T$17	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$17, DW_AT_encoding(DW_ATE_float)
	.dwattr $C$DW$T$17, DW_AT_name("double")
	.dwattr $C$DW$T$17, DW_AT_byte_size(0x02)
$C$DW$T$18	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$18, DW_AT_encoding(DW_ATE_float)
	.dwattr $C$DW$T$18, DW_AT_name("long double")
	.dwattr $C$DW$T$18, DW_AT_byte_size(0x02)
$C$DW$T$27	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$27, DW_AT_encoding(DW_ATE_signed_char)
	.dwattr $C$DW$T$27, DW_AT_name("signed char")
	.dwattr $C$DW$T$27, DW_AT_byte_size(0x01)
$C$DW$T$28	.dwtag  DW_TAG_typedef, DW_AT_name("char_T")
	.dwattr $C$DW$T$28, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$T$28, DW_AT_language(DW_LANG_C)
$C$DW$236	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$236, DW_AT_type(*$C$DW$T$28)
$C$DW$T$29	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$29, DW_AT_type(*$C$DW$236)
$C$DW$T$30	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$30, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$T$30, DW_AT_address_class(0x17)
$C$DW$237	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$237, DW_AT_type(*$C$DW$T$30)
$C$DW$T$31	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$31, DW_AT_type(*$C$DW$237)

$C$DW$T$32	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$32, DW_AT_name("tag_RTM_FFT_T")
	.dwattr $C$DW$T$32, DW_AT_byte_size(0x02)
$C$DW$238	.dwtag  DW_TAG_member
	.dwattr $C$DW$238, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$238, DW_AT_name("errorStatus")
	.dwattr $C$DW$238, DW_AT_TI_symbol_name("_errorStatus")
	.dwattr $C$DW$238, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$238, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$32

$C$DW$T$70	.dwtag  DW_TAG_typedef, DW_AT_name("RT_MODEL_FFT_T")
	.dwattr $C$DW$T$70, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$T$70, DW_AT_language(DW_LANG_C)
$C$DW$T$71	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$71, DW_AT_type(*$C$DW$T$70)
	.dwattr $C$DW$T$71, DW_AT_address_class(0x17)
$C$DW$239	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$239, DW_AT_type(*$C$DW$T$71)
$C$DW$T$72	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$72, DW_AT_type(*$C$DW$239)
	.dwattr $C$DW$CU, DW_AT_language(DW_LANG_C)

;***************************************************************
;* DWARF CIE ENTRIES                                           *
;***************************************************************

$C$DW$CIE	.dwcie 91
	.dwcfi	cfa_register, 36
	.dwcfi	cfa_offset, 0
	.dwcfi	undefined, 0
	.dwcfi	undefined, 1
	.dwcfi	undefined, 2
	.dwcfi	undefined, 3
	.dwcfi	undefined, 4
	.dwcfi	undefined, 5
	.dwcfi	undefined, 6
	.dwcfi	undefined, 7
	.dwcfi	undefined, 8
	.dwcfi	undefined, 9
	.dwcfi	undefined, 10
	.dwcfi	undefined, 11
	.dwcfi	undefined, 12
	.dwcfi	undefined, 13
	.dwcfi	same_value, 14
	.dwcfi	same_value, 15
	.dwcfi	undefined, 16
	.dwcfi	undefined, 17
	.dwcfi	undefined, 18
	.dwcfi	undefined, 19
	.dwcfi	undefined, 20
	.dwcfi	undefined, 21
	.dwcfi	undefined, 22
	.dwcfi	undefined, 23
	.dwcfi	undefined, 24
	.dwcfi	undefined, 25
	.dwcfi	same_value, 26
	.dwcfi	same_value, 27
	.dwcfi	same_value, 28
	.dwcfi	same_value, 29
	.dwcfi	same_value, 30
	.dwcfi	same_value, 31
	.dwcfi	undefined, 32
	.dwcfi	undefined, 33
	.dwcfi	undefined, 34
	.dwcfi	undefined, 35
	.dwcfi	undefined, 36
	.dwcfi	undefined, 37
	.dwcfi	undefined, 38
	.dwcfi	undefined, 39
	.dwcfi	undefined, 40
	.dwcfi	undefined, 41
	.dwcfi	undefined, 42
	.dwcfi	undefined, 43
	.dwcfi	undefined, 44
	.dwcfi	undefined, 45
	.dwcfi	undefined, 46
	.dwcfi	undefined, 47
	.dwcfi	undefined, 48
	.dwcfi	undefined, 49
	.dwcfi	undefined, 50
	.dwcfi	undefined, 51
	.dwcfi	undefined, 52
	.dwcfi	undefined, 53
	.dwcfi	undefined, 54
	.dwcfi	undefined, 55
	.dwcfi	undefined, 56
	.dwcfi	undefined, 57
	.dwcfi	undefined, 58
	.dwcfi	undefined, 59
	.dwcfi	undefined, 60
	.dwcfi	undefined, 61
	.dwcfi	undefined, 62
	.dwcfi	undefined, 63
	.dwcfi	undefined, 64
	.dwcfi	undefined, 65
	.dwcfi	undefined, 66
	.dwcfi	undefined, 67
	.dwcfi	undefined, 68
	.dwcfi	undefined, 69
	.dwcfi	undefined, 70
	.dwcfi	undefined, 71
	.dwcfi	undefined, 72
	.dwcfi	undefined, 73
	.dwcfi	undefined, 74
	.dwcfi	undefined, 75
	.dwcfi	undefined, 76
	.dwcfi	undefined, 77
	.dwcfi	undefined, 78
	.dwcfi	undefined, 79
	.dwcfi	undefined, 80
	.dwcfi	undefined, 81
	.dwcfi	undefined, 82
	.dwcfi	undefined, 83
	.dwcfi	undefined, 84
	.dwcfi	undefined, 85
	.dwcfi	undefined, 86
	.dwcfi	undefined, 87
	.dwcfi	undefined, 88
	.dwcfi	undefined, 89
	.dwcfi	undefined, 90
	.dwcfi	undefined, 91
	.dwendentry

;***************************************************************
;* DWARF REGISTER MAP                                          *
;***************************************************************

$C$DW$240	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC0")
	.dwattr $C$DW$240, DW_AT_location[DW_OP_reg0]
$C$DW$241	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC0")
	.dwattr $C$DW$241, DW_AT_location[DW_OP_reg1]
$C$DW$242	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC0_G")
	.dwattr $C$DW$242, DW_AT_location[DW_OP_reg2]
$C$DW$243	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC1")
	.dwattr $C$DW$243, DW_AT_location[DW_OP_reg3]
$C$DW$244	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC1")
	.dwattr $C$DW$244, DW_AT_location[DW_OP_reg4]
$C$DW$245	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC1_G")
	.dwattr $C$DW$245, DW_AT_location[DW_OP_reg5]
$C$DW$246	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC2")
	.dwattr $C$DW$246, DW_AT_location[DW_OP_reg6]
$C$DW$247	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC2")
	.dwattr $C$DW$247, DW_AT_location[DW_OP_reg7]
$C$DW$248	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC2_G")
	.dwattr $C$DW$248, DW_AT_location[DW_OP_reg8]
$C$DW$249	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC3")
	.dwattr $C$DW$249, DW_AT_location[DW_OP_reg9]
$C$DW$250	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC3")
	.dwattr $C$DW$250, DW_AT_location[DW_OP_reg10]
$C$DW$251	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC3_G")
	.dwattr $C$DW$251, DW_AT_location[DW_OP_reg11]
$C$DW$252	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T0")
	.dwattr $C$DW$252, DW_AT_location[DW_OP_reg12]
$C$DW$253	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T1")
	.dwattr $C$DW$253, DW_AT_location[DW_OP_reg13]
$C$DW$254	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T2")
	.dwattr $C$DW$254, DW_AT_location[DW_OP_reg14]
$C$DW$255	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T3")
	.dwattr $C$DW$255, DW_AT_location[DW_OP_reg15]
$C$DW$256	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR0")
	.dwattr $C$DW$256, DW_AT_location[DW_OP_reg16]
$C$DW$257	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR0")
	.dwattr $C$DW$257, DW_AT_location[DW_OP_reg17]
$C$DW$258	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR1")
	.dwattr $C$DW$258, DW_AT_location[DW_OP_reg18]
$C$DW$259	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR1")
	.dwattr $C$DW$259, DW_AT_location[DW_OP_reg19]
$C$DW$260	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR2")
	.dwattr $C$DW$260, DW_AT_location[DW_OP_reg20]
$C$DW$261	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR2")
	.dwattr $C$DW$261, DW_AT_location[DW_OP_reg21]
$C$DW$262	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR3")
	.dwattr $C$DW$262, DW_AT_location[DW_OP_reg22]
$C$DW$263	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR3")
	.dwattr $C$DW$263, DW_AT_location[DW_OP_reg23]
$C$DW$264	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR4")
	.dwattr $C$DW$264, DW_AT_location[DW_OP_reg24]
$C$DW$265	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR4")
	.dwattr $C$DW$265, DW_AT_location[DW_OP_reg25]
$C$DW$266	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR5")
	.dwattr $C$DW$266, DW_AT_location[DW_OP_reg26]
$C$DW$267	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR5")
	.dwattr $C$DW$267, DW_AT_location[DW_OP_reg27]
$C$DW$268	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR6")
	.dwattr $C$DW$268, DW_AT_location[DW_OP_reg28]
$C$DW$269	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR6")
	.dwattr $C$DW$269, DW_AT_location[DW_OP_reg29]
$C$DW$270	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR7")
	.dwattr $C$DW$270, DW_AT_location[DW_OP_reg30]
$C$DW$271	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR7")
	.dwattr $C$DW$271, DW_AT_location[DW_OP_reg31]
$C$DW$272	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("FP")
	.dwattr $C$DW$272, DW_AT_location[DW_OP_regx 0x20]
$C$DW$273	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XFP")
	.dwattr $C$DW$273, DW_AT_location[DW_OP_regx 0x21]
$C$DW$274	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("PC")
	.dwattr $C$DW$274, DW_AT_location[DW_OP_regx 0x22]
$C$DW$275	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SP")
	.dwattr $C$DW$275, DW_AT_location[DW_OP_regx 0x23]
$C$DW$276	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XSP")
	.dwattr $C$DW$276, DW_AT_location[DW_OP_regx 0x24]
$C$DW$277	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BKC")
	.dwattr $C$DW$277, DW_AT_location[DW_OP_regx 0x25]
$C$DW$278	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BK03")
	.dwattr $C$DW$278, DW_AT_location[DW_OP_regx 0x26]
$C$DW$279	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BK47")
	.dwattr $C$DW$279, DW_AT_location[DW_OP_regx 0x27]
$C$DW$280	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST0")
	.dwattr $C$DW$280, DW_AT_location[DW_OP_regx 0x28]
$C$DW$281	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST1")
	.dwattr $C$DW$281, DW_AT_location[DW_OP_regx 0x29]
$C$DW$282	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST2")
	.dwattr $C$DW$282, DW_AT_location[DW_OP_regx 0x2a]
$C$DW$283	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST3")
	.dwattr $C$DW$283, DW_AT_location[DW_OP_regx 0x2b]
$C$DW$284	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("MDP")
	.dwattr $C$DW$284, DW_AT_location[DW_OP_regx 0x2c]
$C$DW$285	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("MDP05")
	.dwattr $C$DW$285, DW_AT_location[DW_OP_regx 0x2d]
$C$DW$286	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("MDP67")
	.dwattr $C$DW$286, DW_AT_location[DW_OP_regx 0x2e]
$C$DW$287	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BRC0")
	.dwattr $C$DW$287, DW_AT_location[DW_OP_regx 0x2f]
$C$DW$288	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA0")
	.dwattr $C$DW$288, DW_AT_location[DW_OP_regx 0x30]
$C$DW$289	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA0_H")
	.dwattr $C$DW$289, DW_AT_location[DW_OP_regx 0x31]
$C$DW$290	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA0")
	.dwattr $C$DW$290, DW_AT_location[DW_OP_regx 0x32]
$C$DW$291	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA0_H")
	.dwattr $C$DW$291, DW_AT_location[DW_OP_regx 0x33]
$C$DW$292	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BRS1")
	.dwattr $C$DW$292, DW_AT_location[DW_OP_regx 0x34]
$C$DW$293	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BRC1")
	.dwattr $C$DW$293, DW_AT_location[DW_OP_regx 0x35]
$C$DW$294	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA1")
	.dwattr $C$DW$294, DW_AT_location[DW_OP_regx 0x36]
$C$DW$295	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA1_H")
	.dwattr $C$DW$295, DW_AT_location[DW_OP_regx 0x37]
$C$DW$296	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA1")
	.dwattr $C$DW$296, DW_AT_location[DW_OP_regx 0x38]
$C$DW$297	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA1_H")
	.dwattr $C$DW$297, DW_AT_location[DW_OP_regx 0x39]
$C$DW$298	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CSR")
	.dwattr $C$DW$298, DW_AT_location[DW_OP_regx 0x3a]
$C$DW$299	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RPTC")
	.dwattr $C$DW$299, DW_AT_location[DW_OP_regx 0x3b]
$C$DW$300	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CDP")
	.dwattr $C$DW$300, DW_AT_location[DW_OP_regx 0x3c]
$C$DW$301	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XCDP")
	.dwattr $C$DW$301, DW_AT_location[DW_OP_regx 0x3d]
$C$DW$302	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TRN0")
	.dwattr $C$DW$302, DW_AT_location[DW_OP_regx 0x3e]
$C$DW$303	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TRN1")
	.dwattr $C$DW$303, DW_AT_location[DW_OP_regx 0x3f]
$C$DW$304	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA01")
	.dwattr $C$DW$304, DW_AT_location[DW_OP_regx 0x40]
$C$DW$305	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA23")
	.dwattr $C$DW$305, DW_AT_location[DW_OP_regx 0x41]
$C$DW$306	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA45")
	.dwattr $C$DW$306, DW_AT_location[DW_OP_regx 0x42]
$C$DW$307	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA67")
	.dwattr $C$DW$307, DW_AT_location[DW_OP_regx 0x43]
$C$DW$308	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSAC")
	.dwattr $C$DW$308, DW_AT_location[DW_OP_regx 0x44]
$C$DW$309	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CARRY")
	.dwattr $C$DW$309, DW_AT_location[DW_OP_regx 0x45]
$C$DW$310	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TC1")
	.dwattr $C$DW$310, DW_AT_location[DW_OP_regx 0x46]
$C$DW$311	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TC2")
	.dwattr $C$DW$311, DW_AT_location[DW_OP_regx 0x47]
$C$DW$312	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("M40")
	.dwattr $C$DW$312, DW_AT_location[DW_OP_regx 0x48]
$C$DW$313	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SXMD")
	.dwattr $C$DW$313, DW_AT_location[DW_OP_regx 0x49]
$C$DW$314	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ARMS")
	.dwattr $C$DW$314, DW_AT_location[DW_OP_regx 0x4a]
$C$DW$315	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("C54CM")
	.dwattr $C$DW$315, DW_AT_location[DW_OP_regx 0x4b]
$C$DW$316	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SATA")
	.dwattr $C$DW$316, DW_AT_location[DW_OP_regx 0x4c]
$C$DW$317	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SATD")
	.dwattr $C$DW$317, DW_AT_location[DW_OP_regx 0x4d]
$C$DW$318	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RDM")
	.dwattr $C$DW$318, DW_AT_location[DW_OP_regx 0x4e]
$C$DW$319	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("FRCT")
	.dwattr $C$DW$319, DW_AT_location[DW_OP_regx 0x4f]
$C$DW$320	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SMUL")
	.dwattr $C$DW$320, DW_AT_location[DW_OP_regx 0x50]
$C$DW$321	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("INTM")
	.dwattr $C$DW$321, DW_AT_location[DW_OP_regx 0x51]
$C$DW$322	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR0LC")
	.dwattr $C$DW$322, DW_AT_location[DW_OP_regx 0x52]
$C$DW$323	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR1LC")
	.dwattr $C$DW$323, DW_AT_location[DW_OP_regx 0x53]
$C$DW$324	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR2LC")
	.dwattr $C$DW$324, DW_AT_location[DW_OP_regx 0x54]
$C$DW$325	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR3LC")
	.dwattr $C$DW$325, DW_AT_location[DW_OP_regx 0x55]
$C$DW$326	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR4LC")
	.dwattr $C$DW$326, DW_AT_location[DW_OP_regx 0x56]
$C$DW$327	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR5LC")
	.dwattr $C$DW$327, DW_AT_location[DW_OP_regx 0x57]
$C$DW$328	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR6LC")
	.dwattr $C$DW$328, DW_AT_location[DW_OP_regx 0x58]
$C$DW$329	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR7LC")
	.dwattr $C$DW$329, DW_AT_location[DW_OP_regx 0x59]
$C$DW$330	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CDPLC")
	.dwattr $C$DW$330, DW_AT_location[DW_OP_regx 0x5a]
$C$DW$331	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CIE_RETA")
	.dwattr $C$DW$331, DW_AT_location[DW_OP_regx 0x5b]
	.dwendtag $C$DW$CU

