;*******************************************************************************
;* TMS320C55x C/C++ Codegen                                          PC v4.4.1 *
;* Date/Time created: Thu May 30 09:34:11 2024                                 *
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
	.dwattr $C$DW$CU, DW_AT_name("../FFT/rt_nonfinite.c")
	.dwattr $C$DW$CU, DW_AT_producer("TMS320C55x C/C++ Codegen PC v4.4.1 Copyright (c) 1996-2012 Texas Instruments Incorporated")
	.dwattr $C$DW$CU, DW_AT_TI_version(0x01)
	.dwattr $C$DW$CU, DW_AT_comp_dir("C:\Users\bacon\OneDrive\workspace_v6_1\PAM_project\Debug")

$C$DW$1	.dwtag  DW_TAG_subprogram, DW_AT_name("rtGetNaN")
	.dwattr $C$DW$1, DW_AT_TI_symbol_name("_rtGetNaN")
	.dwattr $C$DW$1, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$1, DW_AT_declaration
	.dwattr $C$DW$1, DW_AT_external

$C$DW$2	.dwtag  DW_TAG_subprogram, DW_AT_name("rtGetNaNF")
	.dwattr $C$DW$2, DW_AT_TI_symbol_name("_rtGetNaNF")
	.dwattr $C$DW$2, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$2, DW_AT_declaration
	.dwattr $C$DW$2, DW_AT_external

$C$DW$3	.dwtag  DW_TAG_subprogram, DW_AT_name("rtGetInf")
	.dwattr $C$DW$3, DW_AT_TI_symbol_name("_rtGetInf")
	.dwattr $C$DW$3, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$3, DW_AT_declaration
	.dwattr $C$DW$3, DW_AT_external

$C$DW$4	.dwtag  DW_TAG_subprogram, DW_AT_name("rtGetInfF")
	.dwattr $C$DW$4, DW_AT_TI_symbol_name("_rtGetInfF")
	.dwattr $C$DW$4, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$4, DW_AT_declaration
	.dwattr $C$DW$4, DW_AT_external

$C$DW$5	.dwtag  DW_TAG_subprogram, DW_AT_name("rtGetMinusInf")
	.dwattr $C$DW$5, DW_AT_TI_symbol_name("_rtGetMinusInf")
	.dwattr $C$DW$5, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$5, DW_AT_declaration
	.dwattr $C$DW$5, DW_AT_external

$C$DW$6	.dwtag  DW_TAG_subprogram, DW_AT_name("rtGetMinusInfF")
	.dwattr $C$DW$6, DW_AT_TI_symbol_name("_rtGetMinusInfF")
	.dwattr $C$DW$6, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$6, DW_AT_declaration
	.dwattr $C$DW$6, DW_AT_external
	.global	_rtInf
	.bss	_rtInf,2,0,2
$C$DW$7	.dwtag  DW_TAG_variable, DW_AT_name("rtInf")
	.dwattr $C$DW$7, DW_AT_TI_symbol_name("_rtInf")
	.dwattr $C$DW$7, DW_AT_location[DW_OP_addr _rtInf]
	.dwattr $C$DW$7, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$7, DW_AT_external
	.global	_rtMinusInf
	.bss	_rtMinusInf,2,0,2
$C$DW$8	.dwtag  DW_TAG_variable, DW_AT_name("rtMinusInf")
	.dwattr $C$DW$8, DW_AT_TI_symbol_name("_rtMinusInf")
	.dwattr $C$DW$8, DW_AT_location[DW_OP_addr _rtMinusInf]
	.dwattr $C$DW$8, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$8, DW_AT_external
	.global	_rtNaN
	.bss	_rtNaN,2,0,2
$C$DW$9	.dwtag  DW_TAG_variable, DW_AT_name("rtNaN")
	.dwattr $C$DW$9, DW_AT_TI_symbol_name("_rtNaN")
	.dwattr $C$DW$9, DW_AT_location[DW_OP_addr _rtNaN]
	.dwattr $C$DW$9, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$9, DW_AT_external
	.global	_rtInfF
	.bss	_rtInfF,2,0,2
$C$DW$10	.dwtag  DW_TAG_variable, DW_AT_name("rtInfF")
	.dwattr $C$DW$10, DW_AT_TI_symbol_name("_rtInfF")
	.dwattr $C$DW$10, DW_AT_location[DW_OP_addr _rtInfF]
	.dwattr $C$DW$10, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$10, DW_AT_external
	.global	_rtMinusInfF
	.bss	_rtMinusInfF,2,0,2
$C$DW$11	.dwtag  DW_TAG_variable, DW_AT_name("rtMinusInfF")
	.dwattr $C$DW$11, DW_AT_TI_symbol_name("_rtMinusInfF")
	.dwattr $C$DW$11, DW_AT_location[DW_OP_addr _rtMinusInfF]
	.dwattr $C$DW$11, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$11, DW_AT_external
	.global	_rtNaNF
	.bss	_rtNaNF,2,0,2
$C$DW$12	.dwtag  DW_TAG_variable, DW_AT_name("rtNaNF")
	.dwattr $C$DW$12, DW_AT_TI_symbol_name("_rtNaNF")
	.dwattr $C$DW$12, DW_AT_location[DW_OP_addr _rtNaNF]
	.dwattr $C$DW$12, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$12, DW_AT_external
;	C:\ti\ccsv6\tools\compiler\c5500_4.4.1\bin\acp55.exe -@C:\\Users\\bacon\\AppData\\Local\\Temp\\2274012 
	.sect	".text"
	.global	_rt_InitInfAndNaN

$C$DW$13	.dwtag  DW_TAG_subprogram, DW_AT_name("rt_InitInfAndNaN")
	.dwattr $C$DW$13, DW_AT_low_pc(_rt_InitInfAndNaN)
	.dwattr $C$DW$13, DW_AT_high_pc(0x00)
	.dwattr $C$DW$13, DW_AT_TI_symbol_name("_rt_InitInfAndNaN")
	.dwattr $C$DW$13, DW_AT_external
	.dwattr $C$DW$13, DW_AT_TI_begin_file("../FFT/rt_nonfinite.c")
	.dwattr $C$DW$13, DW_AT_TI_begin_line(0x29)
	.dwattr $C$DW$13, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$13, DW_AT_TI_max_frame_size(0x02)
	.dwpsn	file "../FFT/rt_nonfinite.c",line 42,column 1,is_stmt,address _rt_InitInfAndNaN

	.dwfde $C$DW$CIE, _rt_InitInfAndNaN
$C$DW$14	.dwtag  DW_TAG_formal_parameter, DW_AT_name("realSize")
	.dwattr $C$DW$14, DW_AT_TI_symbol_name("_realSize")
	.dwattr $C$DW$14, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$14, DW_AT_location[DW_OP_reg12]
;*******************************************************************************
;* FUNCTION NAME: rt_InitInfAndNaN                                             *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,T0,SP,M40,SATA,SATD,RDM,FRCT,SMUL            *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 2 words                                              *
;*                        (1 return address/alignment)                         *
;*                        (1 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_rt_InitInfAndNaN:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-1, SP
	.dwcfi	cfa_offset, 2
$C$DW$15	.dwtag  DW_TAG_variable, DW_AT_name("realSize")
	.dwattr $C$DW$15, DW_AT_TI_symbol_name("_realSize")
	.dwattr $C$DW$15, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$15, DW_AT_location[DW_OP_bregx 0x24 0]
        MOV T0, *SP(#0) ; |42| 
	.dwpsn	file "../FFT/rt_nonfinite.c",line 43,column 3,is_stmt
	.dwpsn	file "../FFT/rt_nonfinite.c",line 44,column 3,is_stmt
$C$DW$16	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$16, DW_AT_low_pc(0x00)
	.dwattr $C$DW$16, DW_AT_name("_rtGetNaN")
	.dwattr $C$DW$16, DW_AT_TI_call
        CALL #_rtGetNaN ; |44| 
                                        ; call occurs [#_rtGetNaN] ; |44| 
        MOV AC0, dbl(*(#_rtNaN)) ; |44| 
	.dwpsn	file "../FFT/rt_nonfinite.c",line 45,column 3,is_stmt
$C$DW$17	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$17, DW_AT_low_pc(0x00)
	.dwattr $C$DW$17, DW_AT_name("_rtGetNaNF")
	.dwattr $C$DW$17, DW_AT_TI_call
        CALL #_rtGetNaNF ; |45| 
                                        ; call occurs [#_rtGetNaNF] ; |45| 
        MOV AC0, dbl(*(#_rtNaNF)) ; |45| 
	.dwpsn	file "../FFT/rt_nonfinite.c",line 46,column 3,is_stmt
$C$DW$18	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$18, DW_AT_low_pc(0x00)
	.dwattr $C$DW$18, DW_AT_name("_rtGetInf")
	.dwattr $C$DW$18, DW_AT_TI_call
        CALL #_rtGetInf ; |46| 
                                        ; call occurs [#_rtGetInf] ; |46| 
        MOV AC0, dbl(*(#_rtInf)) ; |46| 
	.dwpsn	file "../FFT/rt_nonfinite.c",line 47,column 3,is_stmt
$C$DW$19	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$19, DW_AT_low_pc(0x00)
	.dwattr $C$DW$19, DW_AT_name("_rtGetInfF")
	.dwattr $C$DW$19, DW_AT_TI_call
        CALL #_rtGetInfF ; |47| 
                                        ; call occurs [#_rtGetInfF] ; |47| 
        MOV AC0, dbl(*(#_rtInfF)) ; |47| 
	.dwpsn	file "../FFT/rt_nonfinite.c",line 48,column 3,is_stmt
$C$DW$20	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$20, DW_AT_low_pc(0x00)
	.dwattr $C$DW$20, DW_AT_name("_rtGetMinusInf")
	.dwattr $C$DW$20, DW_AT_TI_call
        CALL #_rtGetMinusInf ; |48| 
                                        ; call occurs [#_rtGetMinusInf] ; |48| 
        MOV AC0, dbl(*(#_rtMinusInf)) ; |48| 
	.dwpsn	file "../FFT/rt_nonfinite.c",line 49,column 3,is_stmt
$C$DW$21	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$21, DW_AT_low_pc(0x00)
	.dwattr $C$DW$21, DW_AT_name("_rtGetMinusInfF")
	.dwattr $C$DW$21, DW_AT_TI_call
        CALL #_rtGetMinusInfF ; |49| 
                                        ; call occurs [#_rtGetMinusInfF] ; |49| 
        MOV AC0, dbl(*(#_rtMinusInfF)) ; |49| 
	.dwpsn	file "../FFT/rt_nonfinite.c",line 50,column 1,is_stmt
        AADD #1, SP
	.dwcfi	cfa_offset, 1
$C$DW$22	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$22, DW_AT_low_pc(0x00)
	.dwattr $C$DW$22, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$13, DW_AT_TI_end_file("../FFT/rt_nonfinite.c")
	.dwattr $C$DW$13, DW_AT_TI_end_line(0x32)
	.dwattr $C$DW$13, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$13

	.sect	".text"
	.global	_rtIsInf

$C$DW$23	.dwtag  DW_TAG_subprogram, DW_AT_name("rtIsInf")
	.dwattr $C$DW$23, DW_AT_low_pc(_rtIsInf)
	.dwattr $C$DW$23, DW_AT_high_pc(0x00)
	.dwattr $C$DW$23, DW_AT_TI_symbol_name("_rtIsInf")
	.dwattr $C$DW$23, DW_AT_external
	.dwattr $C$DW$23, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$23, DW_AT_TI_begin_file("../FFT/rt_nonfinite.c")
	.dwattr $C$DW$23, DW_AT_TI_begin_line(0x35)
	.dwattr $C$DW$23, DW_AT_TI_begin_column(0x0b)
	.dwattr $C$DW$23, DW_AT_TI_max_frame_size(0x04)
	.dwpsn	file "../FFT/rt_nonfinite.c",line 54,column 1,is_stmt,address _rtIsInf

	.dwfde $C$DW$CIE, _rtIsInf
$C$DW$24	.dwtag  DW_TAG_formal_parameter, DW_AT_name("value")
	.dwattr $C$DW$24, DW_AT_TI_symbol_name("_value")
	.dwattr $C$DW$24, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$24, DW_AT_location[DW_OP_reg0]
;*******************************************************************************
;* FUNCTION NAME: rtIsInf                                                      *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,SP,M40,SATA,SATD,RDM,FRCT,SMUL    *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 4 words                                              *
;*                        (2 return address/alignment)                         *
;*                        (2 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_rtIsInf:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-3, SP
	.dwcfi	cfa_offset, 4
$C$DW$25	.dwtag  DW_TAG_variable, DW_AT_name("value")
	.dwattr $C$DW$25, DW_AT_TI_symbol_name("_value")
	.dwattr $C$DW$25, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$25, DW_AT_location[DW_OP_bregx 0x24 0]
        MOV AC0, dbl(*SP(#0)) ; |54| 
	.dwpsn	file "../FFT/rt_nonfinite.c",line 55,column 3,is_stmt
        MOV dbl(*(#_rtInf)), AC1 ; |55| 
$C$DW$26	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$26, DW_AT_low_pc(0x00)
	.dwattr $C$DW$26, DW_AT_name("__cmpd")
	.dwattr $C$DW$26, DW_AT_TI_call
        CALL #__cmpd ; |55| 
                                        ; call occurs [#__cmpd] ; |55| 
        BCC $C$L1,T0 == #0 ; |55| 
                                        ; branchcc occurs ; |55| 
        MOV dbl(*SP(#0)), AC0 ; |55| 
        MOV dbl(*(#_rtMinusInf)), AC1 ; |55| 
$C$DW$27	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$27, DW_AT_low_pc(0x00)
	.dwattr $C$DW$27, DW_AT_name("__cmpd")
	.dwattr $C$DW$27, DW_AT_TI_call
        CALL #__cmpd ; |55| 
                                        ; call occurs [#__cmpd] ; |55| 
        BCC $C$L2,T0 != #0 ; |55| 
                                        ; branchcc occurs ; |55| 
$C$L1:    
        MOV #1, T0
        B $C$L3   ; |55| 
                                        ; branch occurs ; |55| 
$C$L2:    
        MOV #0, T0
$C$L3:    
	.dwpsn	file "../FFT/rt_nonfinite.c",line 56,column 1,is_stmt
        AADD #3, SP
	.dwcfi	cfa_offset, 1
$C$DW$28	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$28, DW_AT_low_pc(0x00)
	.dwattr $C$DW$28, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$23, DW_AT_TI_end_file("../FFT/rt_nonfinite.c")
	.dwattr $C$DW$23, DW_AT_TI_end_line(0x38)
	.dwattr $C$DW$23, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$23

	.sect	".text"
	.global	_rtIsInfF

$C$DW$29	.dwtag  DW_TAG_subprogram, DW_AT_name("rtIsInfF")
	.dwattr $C$DW$29, DW_AT_low_pc(_rtIsInfF)
	.dwattr $C$DW$29, DW_AT_high_pc(0x00)
	.dwattr $C$DW$29, DW_AT_TI_symbol_name("_rtIsInfF")
	.dwattr $C$DW$29, DW_AT_external
	.dwattr $C$DW$29, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$29, DW_AT_TI_begin_file("../FFT/rt_nonfinite.c")
	.dwattr $C$DW$29, DW_AT_TI_begin_line(0x3b)
	.dwattr $C$DW$29, DW_AT_TI_begin_column(0x0b)
	.dwattr $C$DW$29, DW_AT_TI_max_frame_size(0x04)
	.dwpsn	file "../FFT/rt_nonfinite.c",line 60,column 1,is_stmt,address _rtIsInfF

	.dwfde $C$DW$CIE, _rtIsInfF
$C$DW$30	.dwtag  DW_TAG_formal_parameter, DW_AT_name("value")
	.dwattr $C$DW$30, DW_AT_TI_symbol_name("_value")
	.dwattr $C$DW$30, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$30, DW_AT_location[DW_OP_reg0]
;*******************************************************************************
;* FUNCTION NAME: rtIsInfF                                                     *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,SP,M40,SATA,SATD,RDM,FRCT,SMUL    *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 4 words                                              *
;*                        (2 return address/alignment)                         *
;*                        (2 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_rtIsInfF:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-3, SP
	.dwcfi	cfa_offset, 4
$C$DW$31	.dwtag  DW_TAG_variable, DW_AT_name("value")
	.dwattr $C$DW$31, DW_AT_TI_symbol_name("_value")
	.dwattr $C$DW$31, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$31, DW_AT_location[DW_OP_bregx 0x24 0]
        MOV AC0, dbl(*SP(#0)) ; |60| 
	.dwpsn	file "../FFT/rt_nonfinite.c",line 61,column 3,is_stmt
        MOV dbl(*(#_rtInfF)), AC1 ; |61| 
$C$DW$32	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$32, DW_AT_low_pc(0x00)
	.dwattr $C$DW$32, DW_AT_name("__cmpd")
	.dwattr $C$DW$32, DW_AT_TI_call
        CALL #__cmpd ; |61| 
                                        ; call occurs [#__cmpd] ; |61| 
        BCC $C$L4,T0 == #0 ; |61| 
                                        ; branchcc occurs ; |61| 
        MOV dbl(*SP(#0)), AC0 ; |61| 
        MOV dbl(*(#_rtMinusInfF)), AC1 ; |61| 
$C$DW$33	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$33, DW_AT_low_pc(0x00)
	.dwattr $C$DW$33, DW_AT_name("__cmpd")
	.dwattr $C$DW$33, DW_AT_TI_call
        CALL #__cmpd ; |61| 
                                        ; call occurs [#__cmpd] ; |61| 
        BCC $C$L5,T0 != #0 ; |61| 
                                        ; branchcc occurs ; |61| 
$C$L4:    
        MOV #1, T0
        B $C$L6   ; |61| 
                                        ; branch occurs ; |61| 
$C$L5:    
        MOV #0, T0
$C$L6:    
	.dwpsn	file "../FFT/rt_nonfinite.c",line 62,column 1,is_stmt
        AADD #3, SP
	.dwcfi	cfa_offset, 1
$C$DW$34	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$34, DW_AT_low_pc(0x00)
	.dwattr $C$DW$34, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$29, DW_AT_TI_end_file("../FFT/rt_nonfinite.c")
	.dwattr $C$DW$29, DW_AT_TI_end_line(0x3e)
	.dwattr $C$DW$29, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$29

	.sect	".text"
	.global	_rtIsNaN

$C$DW$35	.dwtag  DW_TAG_subprogram, DW_AT_name("rtIsNaN")
	.dwattr $C$DW$35, DW_AT_low_pc(_rtIsNaN)
	.dwattr $C$DW$35, DW_AT_high_pc(0x00)
	.dwattr $C$DW$35, DW_AT_TI_symbol_name("_rtIsNaN")
	.dwattr $C$DW$35, DW_AT_external
	.dwattr $C$DW$35, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$35, DW_AT_TI_begin_file("../FFT/rt_nonfinite.c")
	.dwattr $C$DW$35, DW_AT_TI_begin_line(0x41)
	.dwattr $C$DW$35, DW_AT_TI_begin_column(0x0b)
	.dwattr $C$DW$35, DW_AT_TI_max_frame_size(0x0a)
	.dwpsn	file "../FFT/rt_nonfinite.c",line 66,column 1,is_stmt,address _rtIsNaN

	.dwfde $C$DW$CIE, _rtIsNaN
$C$DW$36	.dwtag  DW_TAG_formal_parameter, DW_AT_name("value")
	.dwattr $C$DW$36, DW_AT_TI_symbol_name("_value")
	.dwattr $C$DW$36, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$36, DW_AT_location[DW_OP_reg0]
;*******************************************************************************
;* FUNCTION NAME: rtIsNaN                                                      *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,AR1,AR3,XAR3,SP,TC1,M40,SATA,SATD,*
;*                        RDM,FRCT,SMUL                                        *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 10 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (8 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_rtIsNaN:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-9, SP
	.dwcfi	cfa_offset, 10
$C$DW$37	.dwtag  DW_TAG_variable, DW_AT_name("value")
	.dwattr $C$DW$37, DW_AT_TI_symbol_name("_value")
	.dwattr $C$DW$37, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$37, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$38	.dwtag  DW_TAG_variable, DW_AT_name("result")
	.dwattr $C$DW$38, DW_AT_TI_symbol_name("_result")
	.dwattr $C$DW$38, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$38, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$39	.dwtag  DW_TAG_variable, DW_AT_name("bitsPerReal")
	.dwattr $C$DW$39, DW_AT_TI_symbol_name("_bitsPerReal")
	.dwattr $C$DW$39, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$39, DW_AT_location[DW_OP_bregx 0x24 3]
        MOV AC0, dbl(*SP(#0)) ; |66| 
	.dwpsn	file "../FFT/rt_nonfinite.c",line 67,column 13,is_stmt
        MOV #0, *SP(#2) ; |67| 
	.dwpsn	file "../FFT/rt_nonfinite.c",line 68,column 10,is_stmt
        MOV #32, *SP(#3) ; |68| 
	.dwpsn	file "../FFT/rt_nonfinite.c",line 69,column 3,is_stmt
        CMP *SP(#3) == #32, TC1 ; |69| 
        BCC $C$L7,!TC1 ; |69| 
                                        ; branchcc occurs ; |69| 
	.dwpsn	file "../FFT/rt_nonfinite.c",line 70,column 5,is_stmt
        MOV dbl(*SP(#0)), AC0 ; |70| 
$C$DW$40	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$40, DW_AT_low_pc(0x00)
	.dwattr $C$DW$40, DW_AT_name("_rtIsNaNF")
	.dwattr $C$DW$40, DW_AT_TI_call
        CALL #_rtIsNaNF ; |70| 
                                        ; call occurs [#_rtIsNaNF] ; |70| 
        MOV T0, *SP(#2) ; |70| 
	.dwpsn	file "../FFT/rt_nonfinite.c",line 71,column 3,is_stmt
        B $C$L10  ; |71| 
                                        ; branch occurs ; |71| 
$C$L7:    

$C$DW$41	.dwtag  DW_TAG_lexical_block, DW_AT_low_pc(0x00), DW_AT_high_pc(0x00)
$C$DW$42	.dwtag  DW_TAG_variable, DW_AT_name("tmpVal")
	.dwattr $C$DW$42, DW_AT_TI_symbol_name("_tmpVal")
	.dwattr $C$DW$42, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$42, DW_AT_location[DW_OP_bregx 0x24 4]
	.dwpsn	file "../FFT/rt_nonfinite.c",line 77,column 5,is_stmt
        MOV dbl(*SP(#0)), AC0 ; |77| 
        MOV AC0, dbl(*SP(#4)) ; |77| 
	.dwpsn	file "../FFT/rt_nonfinite.c",line 78,column 5,is_stmt
        MOV dbl(*SP(#4)), AC1 ; |78| 
        MOV #32752 << #16, AC0 ; |78| 

        MOV #32752 << #16, AC1 ; |78| 
||      AND AC1, AC0 ; |78| 

        CMPU AC0 != AC1, TC1 ; |78| 

        BCC $C$L9,TC1 ; |78| 
||      MOV #0, AR1

                                        ; branchcc occurs ; |78| 
        AMOV #1048575, XAR3 ; |78| 
        MOV dbl(*SP(#4)), AC1 ; |78| 
        MOV XAR3, AC0
        AND AC1, AC0 ; |78| 
        BCC $C$L8,AC0 != #0 ; |78| 
                                        ; branchcc occurs ; |78| 
        MOV dbl(*SP(#6)), AC0 ; |78| 
        BCC $C$L9,AC0 == #0 ; |78| 
                                        ; branchcc occurs ; |78| 
$C$L8:    
        MOV #1, AR1
$C$L9:    
        MOV AR1, *SP(#2) ; |78| 
	.dwendtag $C$DW$41

$C$L10:    
	.dwpsn	file "../FFT/rt_nonfinite.c",line 83,column 3,is_stmt
        MOV *SP(#2), T0 ; |83| 
	.dwpsn	file "../FFT/rt_nonfinite.c",line 84,column 1,is_stmt
        AADD #9, SP
	.dwcfi	cfa_offset, 1
$C$DW$43	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$43, DW_AT_low_pc(0x00)
	.dwattr $C$DW$43, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$35, DW_AT_TI_end_file("../FFT/rt_nonfinite.c")
	.dwattr $C$DW$35, DW_AT_TI_end_line(0x54)
	.dwattr $C$DW$35, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$35

	.sect	".text"
	.global	_rtIsNaNF

$C$DW$44	.dwtag  DW_TAG_subprogram, DW_AT_name("rtIsNaNF")
	.dwattr $C$DW$44, DW_AT_low_pc(_rtIsNaNF)
	.dwattr $C$DW$44, DW_AT_high_pc(0x00)
	.dwattr $C$DW$44, DW_AT_TI_symbol_name("_rtIsNaNF")
	.dwattr $C$DW$44, DW_AT_external
	.dwattr $C$DW$44, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$44, DW_AT_TI_begin_file("../FFT/rt_nonfinite.c")
	.dwattr $C$DW$44, DW_AT_TI_begin_line(0x57)
	.dwattr $C$DW$44, DW_AT_TI_begin_column(0x0b)
	.dwattr $C$DW$44, DW_AT_TI_max_frame_size(0x06)
	.dwpsn	file "../FFT/rt_nonfinite.c",line 88,column 1,is_stmt,address _rtIsNaNF

	.dwfde $C$DW$CIE, _rtIsNaNF
$C$DW$45	.dwtag  DW_TAG_formal_parameter, DW_AT_name("value")
	.dwattr $C$DW$45, DW_AT_TI_symbol_name("_value")
	.dwattr $C$DW$45, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$45, DW_AT_location[DW_OP_reg0]
;*******************************************************************************
;* FUNCTION NAME: rtIsNaNF                                                     *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,AR3,XAR3,SP,TC1,M40,SATA,SATD,RDM,*
;*                        FRCT,SMUL                                            *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 6 words                                              *
;*                        (2 return address/alignment)                         *
;*                        (4 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_rtIsNaNF:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-5, SP
	.dwcfi	cfa_offset, 6
$C$DW$46	.dwtag  DW_TAG_variable, DW_AT_name("value")
	.dwattr $C$DW$46, DW_AT_TI_symbol_name("_value")
	.dwattr $C$DW$46, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$46, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$47	.dwtag  DW_TAG_variable, DW_AT_name("tmp")
	.dwattr $C$DW$47, DW_AT_TI_symbol_name("_tmp")
	.dwattr $C$DW$47, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$47, DW_AT_location[DW_OP_bregx 0x24 2]
        MOV AC0, dbl(*SP(#0)) ; |88| 
	.dwpsn	file "../FFT/rt_nonfinite.c",line 90,column 3,is_stmt
        MOV AC0, dbl(*SP(#2)) ; |90| 
	.dwpsn	file "../FFT/rt_nonfinite.c",line 91,column 3,is_stmt
        MOV #32640 << #16, AC0 ; |91| 

        MOV dbl(*SP(#2)), AC1 ; |91| 
||      MOV #0, T0

        MOV #32640 << #16, AC1 ; |91| 
||      AND AC1, AC0 ; |91| 

        CMPU AC0 != AC1, TC1 ; |91| 
        BCC $C$L11,TC1 ; |91| 
                                        ; branchcc occurs ; |91| 
        AMOV #8388607, XAR3 ; |91| 
        MOV dbl(*SP(#2)), AC1 ; |91| 
        MOV XAR3, AC0
        AND AC1, AC0 ; |91| 
        BCC $C$L11,AC0 == #0 ; |91| 
                                        ; branchcc occurs ; |91| 
        MOV #1, T0
$C$L11:    
	.dwpsn	file "../FFT/rt_nonfinite.c",line 93,column 1,is_stmt
        AADD #5, SP
	.dwcfi	cfa_offset, 1
$C$DW$48	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$48, DW_AT_low_pc(0x00)
	.dwattr $C$DW$48, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$44, DW_AT_TI_end_file("../FFT/rt_nonfinite.c")
	.dwattr $C$DW$44, DW_AT_TI_end_line(0x5d)
	.dwattr $C$DW$44, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$44

;******************************************************************************
;* UNDEFINED EXTERNAL REFERENCES                                              *
;******************************************************************************
	.global	_rtGetNaN
	.global	_rtGetNaNF
	.global	_rtGetInf
	.global	_rtGetInfF
	.global	_rtGetMinusInf
	.global	_rtGetMinusInfF
	.global	__cmpd

;*******************************************************************************
;* TYPE INFORMATION                                                            *
;*******************************************************************************

$C$DW$T$20	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$20, DW_AT_byte_size(0x04)
$C$DW$49	.dwtag  DW_TAG_member
	.dwattr $C$DW$49, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$49, DW_AT_name("wordH")
	.dwattr $C$DW$49, DW_AT_TI_symbol_name("_wordH")
	.dwattr $C$DW$49, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$49, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$50	.dwtag  DW_TAG_member
	.dwattr $C$DW$50, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$50, DW_AT_name("wordL")
	.dwattr $C$DW$50, DW_AT_TI_symbol_name("_wordL")
	.dwattr $C$DW$50, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$50, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$20


$C$DW$T$21	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$21, DW_AT_byte_size(0x04)
$C$DW$51	.dwtag  DW_TAG_member
	.dwattr $C$DW$51, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$51, DW_AT_name("words")
	.dwattr $C$DW$51, DW_AT_TI_symbol_name("_words")
	.dwattr $C$DW$51, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$51, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$21

$C$DW$T$23	.dwtag  DW_TAG_typedef, DW_AT_name("BigEndianIEEEDouble")
	.dwattr $C$DW$T$23, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$T$23, DW_AT_language(DW_LANG_C)

$C$DW$T$22	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$22, DW_AT_byte_size(0x02)
$C$DW$52	.dwtag  DW_TAG_member
	.dwattr $C$DW$52, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$52, DW_AT_name("wordL")
	.dwattr $C$DW$52, DW_AT_TI_symbol_name("_wordL")
	.dwattr $C$DW$52, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$52, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$22

$C$DW$T$28	.dwtag  DW_TAG_typedef, DW_AT_name("IEEESingle")
	.dwattr $C$DW$T$28, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$T$28, DW_AT_language(DW_LANG_C)

$C$DW$T$25	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$25, DW_AT_byte_size(0x04)
$C$DW$53	.dwtag  DW_TAG_member
	.dwattr $C$DW$53, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$53, DW_AT_name("bitVal")
	.dwattr $C$DW$53, DW_AT_TI_symbol_name("_bitVal")
	.dwattr $C$DW$53, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$53, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$54	.dwtag  DW_TAG_member
	.dwattr $C$DW$54, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$54, DW_AT_name("fltVal")
	.dwattr $C$DW$54, DW_AT_TI_symbol_name("_fltVal")
	.dwattr $C$DW$54, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$54, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$25


$C$DW$T$27	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$27, DW_AT_byte_size(0x02)
$C$DW$55	.dwtag  DW_TAG_member
	.dwattr $C$DW$55, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$55, DW_AT_name("wordLreal")
	.dwattr $C$DW$55, DW_AT_TI_symbol_name("_wordLreal")
	.dwattr $C$DW$55, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$55, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$56	.dwtag  DW_TAG_member
	.dwattr $C$DW$56, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$56, DW_AT_name("wordLuint")
	.dwattr $C$DW$56, DW_AT_TI_symbol_name("_wordLuint")
	.dwattr $C$DW$56, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$56, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$27

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
$C$DW$T$11	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$11, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$11, DW_AT_name("unsigned int")
	.dwattr $C$DW$T$11, DW_AT_byte_size(0x01)
$C$DW$T$31	.dwtag  DW_TAG_typedef, DW_AT_name("boolean_T")
	.dwattr $C$DW$T$31, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$31, DW_AT_language(DW_LANG_C)
$C$DW$T$29	.dwtag  DW_TAG_typedef, DW_AT_name("size_t")
	.dwattr $C$DW$T$29, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$29, DW_AT_language(DW_LANG_C)
$C$DW$T$12	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$12, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$12, DW_AT_name("long")
	.dwattr $C$DW$T$12, DW_AT_byte_size(0x02)
$C$DW$T$13	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$13, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$13, DW_AT_name("unsigned long")
	.dwattr $C$DW$T$13, DW_AT_byte_size(0x02)
$C$DW$T$19	.dwtag  DW_TAG_typedef, DW_AT_name("uint32_T")
	.dwattr $C$DW$T$19, DW_AT_type(*$C$DW$T$13)
	.dwattr $C$DW$T$19, DW_AT_language(DW_LANG_C)
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
$C$DW$T$26	.dwtag  DW_TAG_typedef, DW_AT_name("real32_T")
	.dwattr $C$DW$T$26, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$T$26, DW_AT_language(DW_LANG_C)
$C$DW$T$17	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$17, DW_AT_encoding(DW_ATE_float)
	.dwattr $C$DW$T$17, DW_AT_name("double")
	.dwattr $C$DW$T$17, DW_AT_byte_size(0x02)
$C$DW$T$24	.dwtag  DW_TAG_typedef, DW_AT_name("real_T")
	.dwattr $C$DW$T$24, DW_AT_type(*$C$DW$T$17)
	.dwattr $C$DW$T$24, DW_AT_language(DW_LANG_C)
$C$DW$T$18	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$18, DW_AT_encoding(DW_ATE_float)
	.dwattr $C$DW$T$18, DW_AT_name("long double")
	.dwattr $C$DW$T$18, DW_AT_byte_size(0x02)
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

$C$DW$57	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC0")
	.dwattr $C$DW$57, DW_AT_location[DW_OP_reg0]
$C$DW$58	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC0")
	.dwattr $C$DW$58, DW_AT_location[DW_OP_reg1]
$C$DW$59	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC0_G")
	.dwattr $C$DW$59, DW_AT_location[DW_OP_reg2]
$C$DW$60	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC1")
	.dwattr $C$DW$60, DW_AT_location[DW_OP_reg3]
$C$DW$61	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC1")
	.dwattr $C$DW$61, DW_AT_location[DW_OP_reg4]
$C$DW$62	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC1_G")
	.dwattr $C$DW$62, DW_AT_location[DW_OP_reg5]
$C$DW$63	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC2")
	.dwattr $C$DW$63, DW_AT_location[DW_OP_reg6]
$C$DW$64	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC2")
	.dwattr $C$DW$64, DW_AT_location[DW_OP_reg7]
$C$DW$65	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC2_G")
	.dwattr $C$DW$65, DW_AT_location[DW_OP_reg8]
$C$DW$66	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC3")
	.dwattr $C$DW$66, DW_AT_location[DW_OP_reg9]
$C$DW$67	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC3")
	.dwattr $C$DW$67, DW_AT_location[DW_OP_reg10]
$C$DW$68	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC3_G")
	.dwattr $C$DW$68, DW_AT_location[DW_OP_reg11]
$C$DW$69	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T0")
	.dwattr $C$DW$69, DW_AT_location[DW_OP_reg12]
$C$DW$70	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T1")
	.dwattr $C$DW$70, DW_AT_location[DW_OP_reg13]
$C$DW$71	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T2")
	.dwattr $C$DW$71, DW_AT_location[DW_OP_reg14]
$C$DW$72	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T3")
	.dwattr $C$DW$72, DW_AT_location[DW_OP_reg15]
$C$DW$73	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR0")
	.dwattr $C$DW$73, DW_AT_location[DW_OP_reg16]
$C$DW$74	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR0")
	.dwattr $C$DW$74, DW_AT_location[DW_OP_reg17]
$C$DW$75	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR1")
	.dwattr $C$DW$75, DW_AT_location[DW_OP_reg18]
$C$DW$76	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR1")
	.dwattr $C$DW$76, DW_AT_location[DW_OP_reg19]
$C$DW$77	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR2")
	.dwattr $C$DW$77, DW_AT_location[DW_OP_reg20]
$C$DW$78	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR2")
	.dwattr $C$DW$78, DW_AT_location[DW_OP_reg21]
$C$DW$79	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR3")
	.dwattr $C$DW$79, DW_AT_location[DW_OP_reg22]
$C$DW$80	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR3")
	.dwattr $C$DW$80, DW_AT_location[DW_OP_reg23]
$C$DW$81	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR4")
	.dwattr $C$DW$81, DW_AT_location[DW_OP_reg24]
$C$DW$82	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR4")
	.dwattr $C$DW$82, DW_AT_location[DW_OP_reg25]
$C$DW$83	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR5")
	.dwattr $C$DW$83, DW_AT_location[DW_OP_reg26]
$C$DW$84	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR5")
	.dwattr $C$DW$84, DW_AT_location[DW_OP_reg27]
$C$DW$85	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR6")
	.dwattr $C$DW$85, DW_AT_location[DW_OP_reg28]
$C$DW$86	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR6")
	.dwattr $C$DW$86, DW_AT_location[DW_OP_reg29]
$C$DW$87	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR7")
	.dwattr $C$DW$87, DW_AT_location[DW_OP_reg30]
$C$DW$88	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR7")
	.dwattr $C$DW$88, DW_AT_location[DW_OP_reg31]
$C$DW$89	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("FP")
	.dwattr $C$DW$89, DW_AT_location[DW_OP_regx 0x20]
$C$DW$90	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XFP")
	.dwattr $C$DW$90, DW_AT_location[DW_OP_regx 0x21]
$C$DW$91	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("PC")
	.dwattr $C$DW$91, DW_AT_location[DW_OP_regx 0x22]
$C$DW$92	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SP")
	.dwattr $C$DW$92, DW_AT_location[DW_OP_regx 0x23]
$C$DW$93	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XSP")
	.dwattr $C$DW$93, DW_AT_location[DW_OP_regx 0x24]
$C$DW$94	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BKC")
	.dwattr $C$DW$94, DW_AT_location[DW_OP_regx 0x25]
$C$DW$95	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BK03")
	.dwattr $C$DW$95, DW_AT_location[DW_OP_regx 0x26]
$C$DW$96	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BK47")
	.dwattr $C$DW$96, DW_AT_location[DW_OP_regx 0x27]
$C$DW$97	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST0")
	.dwattr $C$DW$97, DW_AT_location[DW_OP_regx 0x28]
$C$DW$98	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST1")
	.dwattr $C$DW$98, DW_AT_location[DW_OP_regx 0x29]
$C$DW$99	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST2")
	.dwattr $C$DW$99, DW_AT_location[DW_OP_regx 0x2a]
$C$DW$100	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST3")
	.dwattr $C$DW$100, DW_AT_location[DW_OP_regx 0x2b]
$C$DW$101	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("MDP")
	.dwattr $C$DW$101, DW_AT_location[DW_OP_regx 0x2c]
$C$DW$102	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("MDP05")
	.dwattr $C$DW$102, DW_AT_location[DW_OP_regx 0x2d]
$C$DW$103	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("MDP67")
	.dwattr $C$DW$103, DW_AT_location[DW_OP_regx 0x2e]
$C$DW$104	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BRC0")
	.dwattr $C$DW$104, DW_AT_location[DW_OP_regx 0x2f]
$C$DW$105	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA0")
	.dwattr $C$DW$105, DW_AT_location[DW_OP_regx 0x30]
$C$DW$106	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA0_H")
	.dwattr $C$DW$106, DW_AT_location[DW_OP_regx 0x31]
$C$DW$107	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA0")
	.dwattr $C$DW$107, DW_AT_location[DW_OP_regx 0x32]
$C$DW$108	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA0_H")
	.dwattr $C$DW$108, DW_AT_location[DW_OP_regx 0x33]
$C$DW$109	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BRS1")
	.dwattr $C$DW$109, DW_AT_location[DW_OP_regx 0x34]
$C$DW$110	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BRC1")
	.dwattr $C$DW$110, DW_AT_location[DW_OP_regx 0x35]
$C$DW$111	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA1")
	.dwattr $C$DW$111, DW_AT_location[DW_OP_regx 0x36]
$C$DW$112	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA1_H")
	.dwattr $C$DW$112, DW_AT_location[DW_OP_regx 0x37]
$C$DW$113	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA1")
	.dwattr $C$DW$113, DW_AT_location[DW_OP_regx 0x38]
$C$DW$114	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA1_H")
	.dwattr $C$DW$114, DW_AT_location[DW_OP_regx 0x39]
$C$DW$115	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CSR")
	.dwattr $C$DW$115, DW_AT_location[DW_OP_regx 0x3a]
$C$DW$116	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RPTC")
	.dwattr $C$DW$116, DW_AT_location[DW_OP_regx 0x3b]
$C$DW$117	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CDP")
	.dwattr $C$DW$117, DW_AT_location[DW_OP_regx 0x3c]
$C$DW$118	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XCDP")
	.dwattr $C$DW$118, DW_AT_location[DW_OP_regx 0x3d]
$C$DW$119	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TRN0")
	.dwattr $C$DW$119, DW_AT_location[DW_OP_regx 0x3e]
$C$DW$120	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TRN1")
	.dwattr $C$DW$120, DW_AT_location[DW_OP_regx 0x3f]
$C$DW$121	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA01")
	.dwattr $C$DW$121, DW_AT_location[DW_OP_regx 0x40]
$C$DW$122	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA23")
	.dwattr $C$DW$122, DW_AT_location[DW_OP_regx 0x41]
$C$DW$123	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA45")
	.dwattr $C$DW$123, DW_AT_location[DW_OP_regx 0x42]
$C$DW$124	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA67")
	.dwattr $C$DW$124, DW_AT_location[DW_OP_regx 0x43]
$C$DW$125	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSAC")
	.dwattr $C$DW$125, DW_AT_location[DW_OP_regx 0x44]
$C$DW$126	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CARRY")
	.dwattr $C$DW$126, DW_AT_location[DW_OP_regx 0x45]
$C$DW$127	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TC1")
	.dwattr $C$DW$127, DW_AT_location[DW_OP_regx 0x46]
$C$DW$128	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TC2")
	.dwattr $C$DW$128, DW_AT_location[DW_OP_regx 0x47]
$C$DW$129	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("M40")
	.dwattr $C$DW$129, DW_AT_location[DW_OP_regx 0x48]
$C$DW$130	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SXMD")
	.dwattr $C$DW$130, DW_AT_location[DW_OP_regx 0x49]
$C$DW$131	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ARMS")
	.dwattr $C$DW$131, DW_AT_location[DW_OP_regx 0x4a]
$C$DW$132	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("C54CM")
	.dwattr $C$DW$132, DW_AT_location[DW_OP_regx 0x4b]
$C$DW$133	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SATA")
	.dwattr $C$DW$133, DW_AT_location[DW_OP_regx 0x4c]
$C$DW$134	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SATD")
	.dwattr $C$DW$134, DW_AT_location[DW_OP_regx 0x4d]
$C$DW$135	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RDM")
	.dwattr $C$DW$135, DW_AT_location[DW_OP_regx 0x4e]
$C$DW$136	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("FRCT")
	.dwattr $C$DW$136, DW_AT_location[DW_OP_regx 0x4f]
$C$DW$137	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SMUL")
	.dwattr $C$DW$137, DW_AT_location[DW_OP_regx 0x50]
$C$DW$138	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("INTM")
	.dwattr $C$DW$138, DW_AT_location[DW_OP_regx 0x51]
$C$DW$139	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR0LC")
	.dwattr $C$DW$139, DW_AT_location[DW_OP_regx 0x52]
$C$DW$140	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR1LC")
	.dwattr $C$DW$140, DW_AT_location[DW_OP_regx 0x53]
$C$DW$141	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR2LC")
	.dwattr $C$DW$141, DW_AT_location[DW_OP_regx 0x54]
$C$DW$142	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR3LC")
	.dwattr $C$DW$142, DW_AT_location[DW_OP_regx 0x55]
$C$DW$143	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR4LC")
	.dwattr $C$DW$143, DW_AT_location[DW_OP_regx 0x56]
$C$DW$144	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR5LC")
	.dwattr $C$DW$144, DW_AT_location[DW_OP_regx 0x57]
$C$DW$145	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR6LC")
	.dwattr $C$DW$145, DW_AT_location[DW_OP_regx 0x58]
$C$DW$146	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR7LC")
	.dwattr $C$DW$146, DW_AT_location[DW_OP_regx 0x59]
$C$DW$147	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CDPLC")
	.dwattr $C$DW$147, DW_AT_location[DW_OP_regx 0x5a]
$C$DW$148	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CIE_RETA")
	.dwattr $C$DW$148, DW_AT_location[DW_OP_regx 0x5b]
	.dwendtag $C$DW$CU

