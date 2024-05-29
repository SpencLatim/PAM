;*******************************************************************************
;* TMS320C55x C/C++ Codegen                                          PC v4.4.1 *
;* Date/Time created: Mon May 13 09:43:38 2024                                 *
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
	.dwattr $C$DW$CU, DW_AT_name("../FIR.c")
	.dwattr $C$DW$CU, DW_AT_producer("TMS320C55x C/C++ Codegen PC v4.4.1 Copyright (c) 1996-2012 Texas Instruments Incorporated")
	.dwattr $C$DW$CU, DW_AT_TI_version(0x01)
	.dwattr $C$DW$CU, DW_AT_comp_dir("C:\Users\golan\Downloads\ezdsp5535_v1_spring2024\projects\pam\Debug")

$C$DW$1	.dwtag  DW_TAG_subprogram, DW_AT_name("_smac")
	.dwattr $C$DW$1, DW_AT_TI_symbol_name("__smac")
	.dwattr $C$DW$1, DW_AT_type(*$C$DW$T$12)
	.dwattr $C$DW$1, DW_AT_declaration
	.dwattr $C$DW$1, DW_AT_external
$C$DW$2	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$2, DW_AT_type(*$C$DW$T$12)
$C$DW$3	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$3, DW_AT_type(*$C$DW$T$10)
$C$DW$4	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$4, DW_AT_type(*$C$DW$T$10)
	.dwendtag $C$DW$1


$C$DW$5	.dwtag  DW_TAG_subprogram, DW_AT_name("_lshrs")
	.dwattr $C$DW$5, DW_AT_TI_symbol_name("__lshrs")
	.dwattr $C$DW$5, DW_AT_type(*$C$DW$T$12)
	.dwattr $C$DW$5, DW_AT_declaration
	.dwattr $C$DW$5, DW_AT_external
$C$DW$6	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$6, DW_AT_type(*$C$DW$T$12)
$C$DW$7	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$7, DW_AT_type(*$C$DW$T$10)
	.dwendtag $C$DW$5

;	C:\ti\ccsv6\tools\compiler\c5500_4.4.1\bin\acp55.exe -@C:\\Users\\golan\\AppData\\Local\\Temp\\9025212 
	.sect	".text"
	.global	_myFir

$C$DW$8	.dwtag  DW_TAG_subprogram, DW_AT_name("myFir")
	.dwattr $C$DW$8, DW_AT_low_pc(_myFir)
	.dwattr $C$DW$8, DW_AT_high_pc(0x00)
	.dwattr $C$DW$8, DW_AT_TI_symbol_name("_myFir")
	.dwattr $C$DW$8, DW_AT_external
	.dwattr $C$DW$8, DW_AT_TI_begin_file("../FIR.c")
	.dwattr $C$DW$8, DW_AT_TI_begin_line(0x09)
	.dwattr $C$DW$8, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$8, DW_AT_TI_max_frame_size(0x12)
	.dwpsn	file "../FIR.c",line 15,column 1,is_stmt,address _myFir

	.dwfde $C$DW$CIE, _myFir
$C$DW$9	.dwtag  DW_TAG_formal_parameter, DW_AT_name("x")
	.dwattr $C$DW$9, DW_AT_TI_symbol_name("_x")
	.dwattr $C$DW$9, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$9, DW_AT_location[DW_OP_reg17]
$C$DW$10	.dwtag  DW_TAG_formal_parameter, DW_AT_name("h")
	.dwattr $C$DW$10, DW_AT_TI_symbol_name("_h")
	.dwattr $C$DW$10, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$10, DW_AT_location[DW_OP_reg19]
$C$DW$11	.dwtag  DW_TAG_formal_parameter, DW_AT_name("delayLine")
	.dwattr $C$DW$11, DW_AT_TI_symbol_name("_delayLine")
	.dwattr $C$DW$11, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$11, DW_AT_location[DW_OP_reg21]
$C$DW$12	.dwtag  DW_TAG_formal_parameter, DW_AT_name("nx")
	.dwattr $C$DW$12, DW_AT_TI_symbol_name("_nx")
	.dwattr $C$DW$12, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$12, DW_AT_location[DW_OP_reg0]
$C$DW$13	.dwtag  DW_TAG_formal_parameter, DW_AT_name("nh")
	.dwattr $C$DW$13, DW_AT_TI_symbol_name("_nh")
	.dwattr $C$DW$13, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$13, DW_AT_location[DW_OP_reg3]
;*******************************************************************************
;* FUNCTION NAME: myFir                                                        *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,AR0,XAR0,AR1,XAR1,AR2,XAR2,AR3,   *
;*                        XAR3,SP,CARRY,TC1,M40,SATA,SATD,RDM,FRCT,SMUL        *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 18 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (16 local values)                                    *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_myFir:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-17, SP
	.dwcfi	cfa_offset, 18
$C$DW$14	.dwtag  DW_TAG_variable, DW_AT_name("x")
	.dwattr $C$DW$14, DW_AT_TI_symbol_name("_x")
	.dwattr $C$DW$14, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$14, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$15	.dwtag  DW_TAG_variable, DW_AT_name("h")
	.dwattr $C$DW$15, DW_AT_TI_symbol_name("_h")
	.dwattr $C$DW$15, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$15, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$16	.dwtag  DW_TAG_variable, DW_AT_name("delayLine")
	.dwattr $C$DW$16, DW_AT_TI_symbol_name("_delayLine")
	.dwattr $C$DW$16, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$16, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$17	.dwtag  DW_TAG_variable, DW_AT_name("nx")
	.dwattr $C$DW$17, DW_AT_TI_symbol_name("_nx")
	.dwattr $C$DW$17, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$17, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$18	.dwtag  DW_TAG_variable, DW_AT_name("nh")
	.dwattr $C$DW$18, DW_AT_TI_symbol_name("_nh")
	.dwattr $C$DW$18, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$18, DW_AT_location[DW_OP_bregx 0x24 8]
$C$DW$19	.dwtag  DW_TAG_variable, DW_AT_name("i")
	.dwattr $C$DW$19, DW_AT_TI_symbol_name("_i")
	.dwattr $C$DW$19, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$19, DW_AT_location[DW_OP_bregx 0x24 10]
$C$DW$20	.dwtag  DW_TAG_variable, DW_AT_name("j")
	.dwattr $C$DW$20, DW_AT_TI_symbol_name("_j")
	.dwattr $C$DW$20, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$20, DW_AT_location[DW_OP_bregx 0x24 11]
$C$DW$21	.dwtag  DW_TAG_variable, DW_AT_name("k")
	.dwattr $C$DW$21, DW_AT_TI_symbol_name("_k")
	.dwattr $C$DW$21, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$21, DW_AT_location[DW_OP_bregx 0x24 12]
        MOV AC1, dbl(*SP(#8)) ; |15| 
        MOV AC0, dbl(*SP(#6)) ; |15| 
        MOV XAR2, dbl(*SP(#4))
        MOV XAR1, dbl(*SP(#2))
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "../FIR.c",line 16,column 8,is_stmt
        MOV #0, *SP(#10) ; |16| 
	.dwpsn	file "../FIR.c",line 17,column 8,is_stmt
        MOV #0, *SP(#11) ; |17| 
	.dwpsn	file "../FIR.c",line 18,column 8,is_stmt
        MOV #0, *SP(#12) ; |18| 
	.dwpsn	file "../FIR.c",line 21,column 6,is_stmt
        MOV #0, *SP(#10) ; |21| 
	.dwpsn	file "../FIR.c",line 21,column 13,is_stmt
        MOV dbl(*SP(#6)), AC0 ; |21| 
        MOV *SP(#10), AC1 ; |21| 
        CMPU AC1 >= AC0, TC1 ; |21| 
        BCC $C$L6,TC1 ; |21| 
                                        ; branchcc occurs ; |21| 
$C$L1:    
$C$DW$L$_myFir$2$B:

$C$DW$22	.dwtag  DW_TAG_lexical_block, DW_AT_low_pc(0x00), DW_AT_high_pc(0x00)
$C$DW$23	.dwtag  DW_TAG_variable, DW_AT_name("result")
	.dwattr $C$DW$23, DW_AT_TI_symbol_name("_result")
	.dwattr $C$DW$23, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$23, DW_AT_location[DW_OP_bregx 0x24 14]
	.dwpsn	file "../FIR.c",line 23,column 9,is_stmt
        MOV #0, AC0 ; |23| 
        OR #0x8000, AC0, AC0 ; |23| 
        MOV AC0, dbl(*SP(#14)) ; |23| 
	.dwpsn	file "../FIR.c",line 25,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *SP(#10), T0 ; |25| 
        MOV dbl(*SP(#4)), XAR2
        MOV *AR3(T0), *AR2 ; |25| 
	.dwpsn	file "../FIR.c",line 28,column 7,is_stmt
        MOV #0, *SP(#11) ; |28| 
	.dwpsn	file "../FIR.c",line 28,column 14,is_stmt
        MOV *SP(#11), AC1 ; |28| 
        MOV dbl(*SP(#8)), AC0 ; |28| 
        CMPU AC1 >= AC0, TC1 ; |28| 
        BCC $C$L3,TC1 ; |28| 
                                        ; branchcc occurs ; |28| 
$C$DW$L$_myFir$2$E:
$C$L2:    
$C$DW$L$_myFir$3$B:
	.dwpsn	file "../FIR.c",line 30,column 4,is_stmt
        MOV *SP(#11), AR1 ; |30| 
        MOV dbl(*SP(#4)), XAR3
        MOV dbl(*SP(#2)), XAR2
        MOV AR1, T0

        MOV dbl(*SP(#14)), AC0 ; |30| 
||      BSET ST1_SATD

        AADD AR1, AR3 ; |30| 
||      BSET ST1_FRCT

        MACM *AR3, *AR2(T0), AC0, AC0 ; |30| 
        MOV AC0, dbl(*SP(#14)) ; |30| 
	.dwpsn	file "../FIR.c",line 28,column 22,is_stmt
        BCLR ST1_SATD
        ADD #1, *SP(#11) ; |28| 
	.dwpsn	file "../FIR.c",line 28,column 14,is_stmt
        MOV *SP(#11), AC1 ; |28| 
        MOV dbl(*SP(#8)), AC0 ; |28| 
        CMPU AC1 < AC0, TC1 ; |28| 
        BCC $C$L2,TC1 ; |28| 
                                        ; branchcc occurs ; |28| 
$C$DW$L$_myFir$3$E:
$C$L3:    
$C$DW$L$_myFir$4$B:
	.dwpsn	file "../FIR.c",line 33,column 12,is_stmt
        MOV dbl(*SP(#8)), AC0 ; |33| 
        SUB #1, AC0 ; |33| 
        MOV AC0, *SP(#12) ; |33| 
	.dwpsn	file "../FIR.c",line 33,column 24,is_stmt
        MOV AC0, AR1
        BCC $C$L5,AR1 <= #0 ; |33| 
                                        ; branchcc occurs ; |33| 
$C$DW$L$_myFir$4$E:
$C$L4:    
$C$DW$L$_myFir$5$B:
	.dwpsn	file "../FIR.c",line 34,column 10,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MOV dbl(*SP(#4)), XAR2
        MOV AR1, T0
        SUB #1, T0 ; |34| 
        AADD AR1, AR3 ; |34| 
        MOV *AR2(T0), *AR3 ; |34| 
	.dwpsn	file "../FIR.c",line 33,column 31,is_stmt
        SUB #1, *SP(#12) ; |33| 
	.dwpsn	file "../FIR.c",line 33,column 24,is_stmt
        MOV *SP(#12), AR1 ; |33| 
        BCC $C$L4,AR1 > #0 ; |33| 
                                        ; branchcc occurs ; |33| 
$C$DW$L$_myFir$5$E:
$C$L5:    
$C$DW$L$_myFir$6$B:
	.dwpsn	file "../FIR.c",line 37,column 6,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MOV #0, *AR3 ; |37| 
	.dwpsn	file "../FIR.c",line 39,column 6,is_stmt
        MOV *SP(#10), T0 ; |39| 
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*SP(#14)), AC0 ; |39| 
        MOV HI(AC0), *AR3(T0) ; |39| 
	.dwendtag $C$DW$22

	.dwpsn	file "../FIR.c",line 21,column 21,is_stmt
        ADD #1, *SP(#10) ; |21| 
	.dwpsn	file "../FIR.c",line 21,column 13,is_stmt
        MOV *SP(#10), AC1 ; |21| 
        MOV dbl(*SP(#6)), AC0 ; |21| 
        CMPU AC1 < AC0, TC1 ; |21| 
        BCC $C$L1,TC1 ; |21| 
                                        ; branchcc occurs ; |21| 
$C$DW$L$_myFir$6$E:
	.dwpsn	file "../FIR.c",line 42,column 1,is_stmt
$C$L6:    
        AADD #17, SP
	.dwcfi	cfa_offset, 1
        BCLR ST1_FRCT
$C$DW$24	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$24, DW_AT_low_pc(0x00)
	.dwattr $C$DW$24, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$25	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$25, DW_AT_name("C:\Users\golan\Downloads\ezdsp5535_v1_spring2024\projects\pam\Debug\FIR.asm:$C$L1:1:1715611419")
	.dwattr $C$DW$25, DW_AT_TI_begin_file("../FIR.c")
	.dwattr $C$DW$25, DW_AT_TI_begin_line(0x15)
	.dwattr $C$DW$25, DW_AT_TI_end_line(0x28)
$C$DW$26	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$26, DW_AT_low_pc($C$DW$L$_myFir$2$B)
	.dwattr $C$DW$26, DW_AT_high_pc($C$DW$L$_myFir$2$E)
$C$DW$27	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$27, DW_AT_low_pc($C$DW$L$_myFir$4$B)
	.dwattr $C$DW$27, DW_AT_high_pc($C$DW$L$_myFir$4$E)
$C$DW$28	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$28, DW_AT_low_pc($C$DW$L$_myFir$6$B)
	.dwattr $C$DW$28, DW_AT_high_pc($C$DW$L$_myFir$6$E)

$C$DW$29	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$29, DW_AT_name("C:\Users\golan\Downloads\ezdsp5535_v1_spring2024\projects\pam\Debug\FIR.asm:$C$L2:2:1715611419")
	.dwattr $C$DW$29, DW_AT_TI_begin_file("../FIR.c")
	.dwattr $C$DW$29, DW_AT_TI_begin_line(0x1c)
	.dwattr $C$DW$29, DW_AT_TI_end_line(0x1f)
$C$DW$30	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$30, DW_AT_low_pc($C$DW$L$_myFir$3$B)
	.dwattr $C$DW$30, DW_AT_high_pc($C$DW$L$_myFir$3$E)
	.dwendtag $C$DW$29


$C$DW$31	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$31, DW_AT_name("C:\Users\golan\Downloads\ezdsp5535_v1_spring2024\projects\pam\Debug\FIR.asm:$C$L4:2:1715611419")
	.dwattr $C$DW$31, DW_AT_TI_begin_file("../FIR.c")
	.dwattr $C$DW$31, DW_AT_TI_begin_line(0x21)
	.dwattr $C$DW$31, DW_AT_TI_end_line(0x23)
$C$DW$32	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$32, DW_AT_low_pc($C$DW$L$_myFir$5$B)
	.dwattr $C$DW$32, DW_AT_high_pc($C$DW$L$_myFir$5$E)
	.dwendtag $C$DW$31

	.dwendtag $C$DW$25

	.dwattr $C$DW$8, DW_AT_TI_end_file("../FIR.c")
	.dwattr $C$DW$8, DW_AT_TI_end_line(0x2a)
	.dwattr $C$DW$8, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$8

	.sect	".text"
	.global	_myFir2

$C$DW$33	.dwtag  DW_TAG_subprogram, DW_AT_name("myFir2")
	.dwattr $C$DW$33, DW_AT_low_pc(_myFir2)
	.dwattr $C$DW$33, DW_AT_high_pc(0x00)
	.dwattr $C$DW$33, DW_AT_TI_symbol_name("_myFir2")
	.dwattr $C$DW$33, DW_AT_external
	.dwattr $C$DW$33, DW_AT_TI_begin_file("../FIR.c")
	.dwattr $C$DW$33, DW_AT_TI_begin_line(0x2c)
	.dwattr $C$DW$33, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$33, DW_AT_TI_max_frame_size(0x12)
	.dwpsn	file "../FIR.c",line 50,column 1,is_stmt,address _myFir2

	.dwfde $C$DW$CIE, _myFir2
$C$DW$34	.dwtag  DW_TAG_formal_parameter, DW_AT_name("x")
	.dwattr $C$DW$34, DW_AT_TI_symbol_name("_x")
	.dwattr $C$DW$34, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$34, DW_AT_location[DW_OP_reg17]
$C$DW$35	.dwtag  DW_TAG_formal_parameter, DW_AT_name("h")
	.dwattr $C$DW$35, DW_AT_TI_symbol_name("_h")
	.dwattr $C$DW$35, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$35, DW_AT_location[DW_OP_reg19]
$C$DW$36	.dwtag  DW_TAG_formal_parameter, DW_AT_name("delayLine")
	.dwattr $C$DW$36, DW_AT_TI_symbol_name("_delayLine")
	.dwattr $C$DW$36, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$36, DW_AT_location[DW_OP_reg21]
$C$DW$37	.dwtag  DW_TAG_formal_parameter, DW_AT_name("nx")
	.dwattr $C$DW$37, DW_AT_TI_symbol_name("_nx")
	.dwattr $C$DW$37, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$37, DW_AT_location[DW_OP_reg0]
$C$DW$38	.dwtag  DW_TAG_formal_parameter, DW_AT_name("nh")
	.dwattr $C$DW$38, DW_AT_TI_symbol_name("_nh")
	.dwattr $C$DW$38, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$38, DW_AT_location[DW_OP_reg3]
;*******************************************************************************
;* FUNCTION NAME: myFir2                                                       *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,AR0,XAR0,AR1,XAR1,AR2,XAR2,AR3,   *
;*                        XAR3,SP,CARRY,TC1,M40,SATA,SATD,RDM,FRCT,SMUL        *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 18 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (16 local values)                                    *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_myFir2:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-17, SP
	.dwcfi	cfa_offset, 18
$C$DW$39	.dwtag  DW_TAG_variable, DW_AT_name("x")
	.dwattr $C$DW$39, DW_AT_TI_symbol_name("_x")
	.dwattr $C$DW$39, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$39, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$40	.dwtag  DW_TAG_variable, DW_AT_name("h")
	.dwattr $C$DW$40, DW_AT_TI_symbol_name("_h")
	.dwattr $C$DW$40, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$40, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$41	.dwtag  DW_TAG_variable, DW_AT_name("delayLine")
	.dwattr $C$DW$41, DW_AT_TI_symbol_name("_delayLine")
	.dwattr $C$DW$41, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$41, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$42	.dwtag  DW_TAG_variable, DW_AT_name("nx")
	.dwattr $C$DW$42, DW_AT_TI_symbol_name("_nx")
	.dwattr $C$DW$42, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$42, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$43	.dwtag  DW_TAG_variable, DW_AT_name("nh")
	.dwattr $C$DW$43, DW_AT_TI_symbol_name("_nh")
	.dwattr $C$DW$43, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$43, DW_AT_location[DW_OP_bregx 0x24 8]
$C$DW$44	.dwtag  DW_TAG_variable, DW_AT_name("i")
	.dwattr $C$DW$44, DW_AT_TI_symbol_name("_i")
	.dwattr $C$DW$44, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$44, DW_AT_location[DW_OP_bregx 0x24 10]
$C$DW$45	.dwtag  DW_TAG_variable, DW_AT_name("j")
	.dwattr $C$DW$45, DW_AT_TI_symbol_name("_j")
	.dwattr $C$DW$45, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$45, DW_AT_location[DW_OP_bregx 0x24 11]
$C$DW$46	.dwtag  DW_TAG_variable, DW_AT_name("k")
	.dwattr $C$DW$46, DW_AT_TI_symbol_name("_k")
	.dwattr $C$DW$46, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$46, DW_AT_location[DW_OP_bregx 0x24 12]
        MOV AC1, dbl(*SP(#8)) ; |50| 
        MOV AC0, dbl(*SP(#6)) ; |50| 
        MOV XAR2, dbl(*SP(#4))
        MOV XAR1, dbl(*SP(#2))
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "../FIR.c",line 51,column 8,is_stmt
        MOV #0, *SP(#10) ; |51| 
	.dwpsn	file "../FIR.c",line 52,column 8,is_stmt
        MOV #0, *SP(#11) ; |52| 
	.dwpsn	file "../FIR.c",line 53,column 8,is_stmt
        MOV #0, *SP(#12) ; |53| 
	.dwpsn	file "../FIR.c",line 56,column 6,is_stmt
        MOV #0, *SP(#10) ; |56| 
	.dwpsn	file "../FIR.c",line 56,column 13,is_stmt
        MOV dbl(*SP(#6)), AC0 ; |56| 
        MOV *SP(#10), AC1 ; |56| 
        CMPU AC1 >= AC0, TC1 ; |56| 
        BCC $C$L12,TC1 ; |56| 
                                        ; branchcc occurs ; |56| 
$C$L7:    
$C$DW$L$_myFir2$2$B:

$C$DW$47	.dwtag  DW_TAG_lexical_block, DW_AT_low_pc(0x00), DW_AT_high_pc(0x00)
$C$DW$48	.dwtag  DW_TAG_variable, DW_AT_name("result")
	.dwattr $C$DW$48, DW_AT_TI_symbol_name("_result")
	.dwattr $C$DW$48, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$48, DW_AT_location[DW_OP_bregx 0x24 14]
	.dwpsn	file "../FIR.c",line 58,column 9,is_stmt
        MOV #0, AC0 ; |58| 
        OR #0x8000, AC0, AC0 ; |58| 
        MOV AC0, dbl(*SP(#14)) ; |58| 
	.dwpsn	file "../FIR.c",line 59,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *SP(#10), T0 ; |59| 
        MOV dbl(*SP(#4)), XAR2
        MOV *AR3(T0), *AR2 ; |59| 
	.dwpsn	file "../FIR.c",line 60,column 3,is_stmt
        MOV *SP(#10), T0 ; |60| 
        ADD #1, T0 ; |60| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(T0), AR1 ; |60| 
        MOV dbl(*SP(#4)), XAR3
        MOV AR1, *AR3(short(#1)) ; |60| 
	.dwpsn	file "../FIR.c",line 63,column 7,is_stmt
        MOV #0, *SP(#11) ; |63| 
	.dwpsn	file "../FIR.c",line 63,column 14,is_stmt
        MOV *SP(#11), AC1 ; |63| 
        MOV dbl(*SP(#8)), AC0 ; |63| 
        CMPU AC1 >= AC0, TC1 ; |63| 
        BCC $C$L9,TC1 ; |63| 
                                        ; branchcc occurs ; |63| 
$C$DW$L$_myFir2$2$E:
$C$L8:    
$C$DW$L$_myFir2$3$B:
	.dwpsn	file "../FIR.c",line 65,column 4,is_stmt
        MOV *SP(#11), AR1 ; |65| 
        MOV dbl(*SP(#4)), XAR3
        MOV dbl(*SP(#2)), XAR2
        MOV AR1, T0

        MOV dbl(*SP(#14)), AC0 ; |65| 
||      BSET ST1_SATD

        AADD AR1, AR3 ; |65| 
||      BSET ST1_FRCT

        MACM *AR3, *AR2(T0), AC0, AC0 ; |65| 
        MOV AC0, dbl(*SP(#14)) ; |65| 
	.dwpsn	file "../FIR.c",line 63,column 22,is_stmt
        BCLR ST1_SATD
        ADD #1, *SP(#11) ; |63| 
	.dwpsn	file "../FIR.c",line 63,column 14,is_stmt
        MOV *SP(#11), AC1 ; |63| 
        MOV dbl(*SP(#8)), AC0 ; |63| 
        CMPU AC1 < AC0, TC1 ; |63| 
        BCC $C$L8,TC1 ; |63| 
                                        ; branchcc occurs ; |63| 
$C$DW$L$_myFir2$3$E:
$C$L9:    
$C$DW$L$_myFir2$4$B:
	.dwpsn	file "../FIR.c",line 68,column 12,is_stmt
        MOV dbl(*SP(#8)), AC0 ; |68| 
        SUB #1, AC0 ; |68| 
        MOV AC0, *SP(#12) ; |68| 
	.dwpsn	file "../FIR.c",line 68,column 24,is_stmt
        MOV AC0, AR1
        BCC $C$L11,AR1 <= #0 ; |68| 
                                        ; branchcc occurs ; |68| 
$C$DW$L$_myFir2$4$E:
$C$L10:    
$C$DW$L$_myFir2$5$B:
	.dwpsn	file "../FIR.c",line 69,column 10,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MOV dbl(*SP(#4)), XAR2
        MOV AR1, T0
        SUB #1, T0 ; |69| 
        AADD AR1, AR3 ; |69| 
        MOV *AR2(T0), *AR3 ; |69| 
	.dwpsn	file "../FIR.c",line 68,column 31,is_stmt
        SUB #1, *SP(#12) ; |68| 
	.dwpsn	file "../FIR.c",line 68,column 24,is_stmt
        MOV *SP(#12), AR1 ; |68| 
        BCC $C$L10,AR1 > #0 ; |68| 
                                        ; branchcc occurs ; |68| 
$C$DW$L$_myFir2$5$E:
$C$L11:    
$C$DW$L$_myFir2$6$B:
	.dwpsn	file "../FIR.c",line 72,column 6,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MOV #0, *AR3 ; |72| 
	.dwpsn	file "../FIR.c",line 73,column 6,is_stmt
        MOV *SP(#10), T0 ; |73| 
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*SP(#14)), AC0 ; |73| 
        MOV HI(AC0), *AR3(T0) ; |73| 
	.dwendtag $C$DW$47

	.dwpsn	file "../FIR.c",line 56,column 21,is_stmt
        ADD #2, *SP(#10) ; |56| 
	.dwpsn	file "../FIR.c",line 56,column 13,is_stmt
        MOV *SP(#10), AC1 ; |56| 
        MOV dbl(*SP(#6)), AC0 ; |56| 
        CMPU AC1 < AC0, TC1 ; |56| 
        BCC $C$L7,TC1 ; |56| 
                                        ; branchcc occurs ; |56| 
$C$DW$L$_myFir2$6$E:
	.dwpsn	file "../FIR.c",line 76,column 1,is_stmt
$C$L12:    
        AADD #17, SP
	.dwcfi	cfa_offset, 1
        BCLR ST1_FRCT
$C$DW$49	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$49, DW_AT_low_pc(0x00)
	.dwattr $C$DW$49, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$50	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$50, DW_AT_name("C:\Users\golan\Downloads\ezdsp5535_v1_spring2024\projects\pam\Debug\FIR.asm:$C$L7:1:1715611419")
	.dwattr $C$DW$50, DW_AT_TI_begin_file("../FIR.c")
	.dwattr $C$DW$50, DW_AT_TI_begin_line(0x38)
	.dwattr $C$DW$50, DW_AT_TI_end_line(0x4a)
$C$DW$51	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$51, DW_AT_low_pc($C$DW$L$_myFir2$2$B)
	.dwattr $C$DW$51, DW_AT_high_pc($C$DW$L$_myFir2$2$E)
$C$DW$52	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$52, DW_AT_low_pc($C$DW$L$_myFir2$4$B)
	.dwattr $C$DW$52, DW_AT_high_pc($C$DW$L$_myFir2$4$E)
$C$DW$53	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$53, DW_AT_low_pc($C$DW$L$_myFir2$6$B)
	.dwattr $C$DW$53, DW_AT_high_pc($C$DW$L$_myFir2$6$E)

$C$DW$54	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$54, DW_AT_name("C:\Users\golan\Downloads\ezdsp5535_v1_spring2024\projects\pam\Debug\FIR.asm:$C$L8:2:1715611419")
	.dwattr $C$DW$54, DW_AT_TI_begin_file("../FIR.c")
	.dwattr $C$DW$54, DW_AT_TI_begin_line(0x3f)
	.dwattr $C$DW$54, DW_AT_TI_end_line(0x42)
$C$DW$55	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$55, DW_AT_low_pc($C$DW$L$_myFir2$3$B)
	.dwattr $C$DW$55, DW_AT_high_pc($C$DW$L$_myFir2$3$E)
	.dwendtag $C$DW$54


$C$DW$56	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$56, DW_AT_name("C:\Users\golan\Downloads\ezdsp5535_v1_spring2024\projects\pam\Debug\FIR.asm:$C$L10:2:1715611419")
	.dwattr $C$DW$56, DW_AT_TI_begin_file("../FIR.c")
	.dwattr $C$DW$56, DW_AT_TI_begin_line(0x44)
	.dwattr $C$DW$56, DW_AT_TI_end_line(0x46)
$C$DW$57	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$57, DW_AT_low_pc($C$DW$L$_myFir2$5$B)
	.dwattr $C$DW$57, DW_AT_high_pc($C$DW$L$_myFir2$5$E)
	.dwendtag $C$DW$56

	.dwendtag $C$DW$50

	.dwattr $C$DW$33, DW_AT_TI_end_file("../FIR.c")
	.dwattr $C$DW$33, DW_AT_TI_end_line(0x4c)
	.dwattr $C$DW$33, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$33

	.sect	".text"
	.global	_maintainDL

$C$DW$58	.dwtag  DW_TAG_subprogram, DW_AT_name("maintainDL")
	.dwattr $C$DW$58, DW_AT_low_pc(_maintainDL)
	.dwattr $C$DW$58, DW_AT_high_pc(0x00)
	.dwattr $C$DW$58, DW_AT_TI_symbol_name("_maintainDL")
	.dwattr $C$DW$58, DW_AT_external
	.dwattr $C$DW$58, DW_AT_TI_begin_file("../FIR.c")
	.dwattr $C$DW$58, DW_AT_TI_begin_line(0x4f)
	.dwattr $C$DW$58, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$58, DW_AT_TI_max_frame_size(0x0c)
	.dwpsn	file "../FIR.c",line 79,column 91,is_stmt,address _maintainDL

	.dwfde $C$DW$CIE, _maintainDL
$C$DW$59	.dwtag  DW_TAG_formal_parameter, DW_AT_name("sampleArray")
	.dwattr $C$DW$59, DW_AT_TI_symbol_name("_sampleArray")
	.dwattr $C$DW$59, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$59, DW_AT_location[DW_OP_reg17]
$C$DW$60	.dwtag  DW_TAG_formal_parameter, DW_AT_name("delayLine")
	.dwattr $C$DW$60, DW_AT_TI_symbol_name("_delayLine")
	.dwattr $C$DW$60, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$60, DW_AT_location[DW_OP_reg19]
$C$DW$61	.dwtag  DW_TAG_formal_parameter, DW_AT_name("arraySize")
	.dwattr $C$DW$61, DW_AT_TI_symbol_name("_arraySize")
	.dwattr $C$DW$61, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$61, DW_AT_location[DW_OP_reg0]
;*******************************************************************************
;* FUNCTION NAME: maintainDL                                                   *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,AR0,XAR0,AR1,XAR1,AR2,XAR2,AR3,   *
;*                        XAR3,SP,CARRY,TC1,M40,SATA,SATD,RDM,FRCT,SMUL        *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 12 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (10 local values)                                    *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_maintainDL:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-11, SP
	.dwcfi	cfa_offset, 12
$C$DW$62	.dwtag  DW_TAG_variable, DW_AT_name("sampleArray")
	.dwattr $C$DW$62, DW_AT_TI_symbol_name("_sampleArray")
	.dwattr $C$DW$62, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$62, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$63	.dwtag  DW_TAG_variable, DW_AT_name("delayLine")
	.dwattr $C$DW$63, DW_AT_TI_symbol_name("_delayLine")
	.dwattr $C$DW$63, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$63, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$64	.dwtag  DW_TAG_variable, DW_AT_name("arraySize")
	.dwattr $C$DW$64, DW_AT_TI_symbol_name("_arraySize")
	.dwattr $C$DW$64, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$64, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$65	.dwtag  DW_TAG_variable, DW_AT_name("i")
	.dwattr $C$DW$65, DW_AT_TI_symbol_name("_i")
	.dwattr $C$DW$65, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$65, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$66	.dwtag  DW_TAG_variable, DW_AT_name("j")
	.dwattr $C$DW$66, DW_AT_TI_symbol_name("_j")
	.dwattr $C$DW$66, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$66, DW_AT_location[DW_OP_bregx 0x24 8]
        MOV AC0, dbl(*SP(#4)) ; |79| 
        MOV XAR1, dbl(*SP(#2))
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "../FIR.c",line 81,column 10,is_stmt
        MOV #0, AC0 ; |81| 
        MOV AC0, dbl(*SP(#6)) ; |81| 
	.dwpsn	file "../FIR.c",line 81,column 17,is_stmt
        MOV dbl(*SP(#6)), AC1 ; |81| 
        MOV dbl(*SP(#4)), AC0 ; |81| 
        CMPU AC1 >= AC0, TC1 ; |81| 
        BCC $C$L16,TC1 ; |81| 
                                        ; branchcc occurs ; |81| 
$C$L13:    
$C$DW$L$_maintainDL$2$B:
	.dwpsn	file "../FIR.c",line 82,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *SP(#7), T0 ; |82| 
        MOV dbl(*SP(#2)), XAR2
        MOV *AR3(T0), *AR2 ; |82| 
	.dwpsn	file "../FIR.c",line 84,column 14,is_stmt
        MOV #29, AC0 ; |84| 
        MOV AC0, dbl(*SP(#8)) ; |84| 
	.dwpsn	file "../FIR.c",line 84,column 32,is_stmt
        MOV dbl(*SP(#8)), AC0 ; |84| 
        BCC $C$L15,AC0 == #0 ; |84| 
                                        ; branchcc occurs ; |84| 
$C$DW$L$_maintainDL$2$E:
$C$L14:    
$C$DW$L$_maintainDL$3$B:
	.dwpsn	file "../FIR.c",line 85,column 13,is_stmt
        MOV *SP(#9), AR1 ; |85| 
        MOV dbl(*SP(#2)), XAR3
        MOV dbl(*SP(#2)), XAR2
        MOV dbl(*SP(#8)), AC0 ; |85| 
        SUB #1, AC0 ; |85| 
        MOV AC0, T0 ; |85| 
        AADD AR1, AR3 ; |85| 
        MOV *AR2(T0), *AR3 ; |85| 
	.dwpsn	file "../FIR.c",line 84,column 39,is_stmt
        MOV dbl(*SP(#8)), AC0 ; |84| 
        SUB #1, AC0 ; |84| 
        MOV AC0, dbl(*SP(#8)) ; |84| 
	.dwpsn	file "../FIR.c",line 84,column 32,is_stmt
        MOV dbl(*SP(#8)), AC0 ; |84| 
        BCC $C$L14,AC0 != #0 ; |84| 
                                        ; branchcc occurs ; |84| 
$C$DW$L$_maintainDL$3$E:
$C$L15:    
$C$DW$L$_maintainDL$4$B:
	.dwpsn	file "../FIR.c",line 87,column 9,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV #0, *AR3 ; |87| 
	.dwpsn	file "../FIR.c",line 81,column 32,is_stmt
        MOV dbl(*SP(#6)), AC0 ; |81| 
        ADD #1, AC0 ; |81| 
        MOV AC0, dbl(*SP(#6)) ; |81| 
	.dwpsn	file "../FIR.c",line 81,column 17,is_stmt
        MOV dbl(*SP(#6)), AC1 ; |81| 
        MOV dbl(*SP(#4)), AC0 ; |81| 
        CMPU AC1 < AC0, TC1 ; |81| 
        BCC $C$L13,TC1 ; |81| 
                                        ; branchcc occurs ; |81| 
$C$DW$L$_maintainDL$4$E:
	.dwpsn	file "../FIR.c",line 89,column 1,is_stmt
$C$L16:    
        AADD #11, SP
	.dwcfi	cfa_offset, 1
$C$DW$67	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$67, DW_AT_low_pc(0x00)
	.dwattr $C$DW$67, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$68	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$68, DW_AT_name("C:\Users\golan\Downloads\ezdsp5535_v1_spring2024\projects\pam\Debug\FIR.asm:$C$L13:1:1715611419")
	.dwattr $C$DW$68, DW_AT_TI_begin_file("../FIR.c")
	.dwattr $C$DW$68, DW_AT_TI_begin_line(0x51)
	.dwattr $C$DW$68, DW_AT_TI_end_line(0x58)
$C$DW$69	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$69, DW_AT_low_pc($C$DW$L$_maintainDL$2$B)
	.dwattr $C$DW$69, DW_AT_high_pc($C$DW$L$_maintainDL$2$E)
$C$DW$70	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$70, DW_AT_low_pc($C$DW$L$_maintainDL$4$B)
	.dwattr $C$DW$70, DW_AT_high_pc($C$DW$L$_maintainDL$4$E)

$C$DW$71	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$71, DW_AT_name("C:\Users\golan\Downloads\ezdsp5535_v1_spring2024\projects\pam\Debug\FIR.asm:$C$L14:2:1715611419")
	.dwattr $C$DW$71, DW_AT_TI_begin_file("../FIR.c")
	.dwattr $C$DW$71, DW_AT_TI_begin_line(0x54)
	.dwattr $C$DW$71, DW_AT_TI_end_line(0x56)
$C$DW$72	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$72, DW_AT_low_pc($C$DW$L$_maintainDL$3$B)
	.dwattr $C$DW$72, DW_AT_high_pc($C$DW$L$_maintainDL$3$E)
	.dwendtag $C$DW$71

	.dwendtag $C$DW$68

	.dwattr $C$DW$58, DW_AT_TI_end_file("../FIR.c")
	.dwattr $C$DW$58, DW_AT_TI_end_line(0x59)
	.dwattr $C$DW$58, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$58


;*******************************************************************************
;* TYPE INFORMATION                                                            *
;*******************************************************************************
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
$C$DW$T$19	.dwtag  DW_TAG_typedef, DW_AT_name("Int16")
	.dwattr $C$DW$T$19, DW_AT_type(*$C$DW$T$8)
	.dwattr $C$DW$T$19, DW_AT_language(DW_LANG_C)
$C$DW$T$20	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$20, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$20, DW_AT_address_class(0x17)
$C$DW$73	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$73, DW_AT_type(*$C$DW$T$20)
$C$DW$T$21	.dwtag  DW_TAG_TI_restrict_type
	.dwattr $C$DW$T$21, DW_AT_type(*$C$DW$73)
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
$C$DW$T$12	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$12, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$12, DW_AT_name("long")
	.dwattr $C$DW$T$12, DW_AT_byte_size(0x02)
$C$DW$T$27	.dwtag  DW_TAG_typedef, DW_AT_name("Int32")
	.dwattr $C$DW$T$27, DW_AT_type(*$C$DW$T$12)
	.dwattr $C$DW$T$27, DW_AT_language(DW_LANG_C)
$C$DW$T$13	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$13, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$13, DW_AT_name("unsigned long")
	.dwattr $C$DW$T$13, DW_AT_byte_size(0x02)
$C$DW$T$22	.dwtag  DW_TAG_typedef, DW_AT_name("Uint32")
	.dwattr $C$DW$T$22, DW_AT_type(*$C$DW$T$13)
	.dwattr $C$DW$T$22, DW_AT_language(DW_LANG_C)
$C$DW$74	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$74, DW_AT_type(*$C$DW$T$22)
$C$DW$T$24	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$24, DW_AT_type(*$C$DW$74)
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
$C$DW$T$17	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$17, DW_AT_encoding(DW_ATE_float)
	.dwattr $C$DW$T$17, DW_AT_name("double")
	.dwattr $C$DW$T$17, DW_AT_byte_size(0x02)
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

$C$DW$75	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC0")
	.dwattr $C$DW$75, DW_AT_location[DW_OP_reg0]
$C$DW$76	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC0")
	.dwattr $C$DW$76, DW_AT_location[DW_OP_reg1]
$C$DW$77	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC0_G")
	.dwattr $C$DW$77, DW_AT_location[DW_OP_reg2]
$C$DW$78	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC1")
	.dwattr $C$DW$78, DW_AT_location[DW_OP_reg3]
$C$DW$79	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC1")
	.dwattr $C$DW$79, DW_AT_location[DW_OP_reg4]
$C$DW$80	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC1_G")
	.dwattr $C$DW$80, DW_AT_location[DW_OP_reg5]
$C$DW$81	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC2")
	.dwattr $C$DW$81, DW_AT_location[DW_OP_reg6]
$C$DW$82	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC2")
	.dwattr $C$DW$82, DW_AT_location[DW_OP_reg7]
$C$DW$83	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC2_G")
	.dwattr $C$DW$83, DW_AT_location[DW_OP_reg8]
$C$DW$84	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC3")
	.dwattr $C$DW$84, DW_AT_location[DW_OP_reg9]
$C$DW$85	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC3")
	.dwattr $C$DW$85, DW_AT_location[DW_OP_reg10]
$C$DW$86	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC3_G")
	.dwattr $C$DW$86, DW_AT_location[DW_OP_reg11]
$C$DW$87	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T0")
	.dwattr $C$DW$87, DW_AT_location[DW_OP_reg12]
$C$DW$88	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T1")
	.dwattr $C$DW$88, DW_AT_location[DW_OP_reg13]
$C$DW$89	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T2")
	.dwattr $C$DW$89, DW_AT_location[DW_OP_reg14]
$C$DW$90	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T3")
	.dwattr $C$DW$90, DW_AT_location[DW_OP_reg15]
$C$DW$91	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR0")
	.dwattr $C$DW$91, DW_AT_location[DW_OP_reg16]
$C$DW$92	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR0")
	.dwattr $C$DW$92, DW_AT_location[DW_OP_reg17]
$C$DW$93	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR1")
	.dwattr $C$DW$93, DW_AT_location[DW_OP_reg18]
$C$DW$94	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR1")
	.dwattr $C$DW$94, DW_AT_location[DW_OP_reg19]
$C$DW$95	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR2")
	.dwattr $C$DW$95, DW_AT_location[DW_OP_reg20]
$C$DW$96	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR2")
	.dwattr $C$DW$96, DW_AT_location[DW_OP_reg21]
$C$DW$97	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR3")
	.dwattr $C$DW$97, DW_AT_location[DW_OP_reg22]
$C$DW$98	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR3")
	.dwattr $C$DW$98, DW_AT_location[DW_OP_reg23]
$C$DW$99	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR4")
	.dwattr $C$DW$99, DW_AT_location[DW_OP_reg24]
$C$DW$100	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR4")
	.dwattr $C$DW$100, DW_AT_location[DW_OP_reg25]
$C$DW$101	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR5")
	.dwattr $C$DW$101, DW_AT_location[DW_OP_reg26]
$C$DW$102	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR5")
	.dwattr $C$DW$102, DW_AT_location[DW_OP_reg27]
$C$DW$103	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR6")
	.dwattr $C$DW$103, DW_AT_location[DW_OP_reg28]
$C$DW$104	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR6")
	.dwattr $C$DW$104, DW_AT_location[DW_OP_reg29]
$C$DW$105	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR7")
	.dwattr $C$DW$105, DW_AT_location[DW_OP_reg30]
$C$DW$106	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR7")
	.dwattr $C$DW$106, DW_AT_location[DW_OP_reg31]
$C$DW$107	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("FP")
	.dwattr $C$DW$107, DW_AT_location[DW_OP_regx 0x20]
$C$DW$108	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XFP")
	.dwattr $C$DW$108, DW_AT_location[DW_OP_regx 0x21]
$C$DW$109	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("PC")
	.dwattr $C$DW$109, DW_AT_location[DW_OP_regx 0x22]
$C$DW$110	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SP")
	.dwattr $C$DW$110, DW_AT_location[DW_OP_regx 0x23]
$C$DW$111	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XSP")
	.dwattr $C$DW$111, DW_AT_location[DW_OP_regx 0x24]
$C$DW$112	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BKC")
	.dwattr $C$DW$112, DW_AT_location[DW_OP_regx 0x25]
$C$DW$113	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BK03")
	.dwattr $C$DW$113, DW_AT_location[DW_OP_regx 0x26]
$C$DW$114	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BK47")
	.dwattr $C$DW$114, DW_AT_location[DW_OP_regx 0x27]
$C$DW$115	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST0")
	.dwattr $C$DW$115, DW_AT_location[DW_OP_regx 0x28]
$C$DW$116	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST1")
	.dwattr $C$DW$116, DW_AT_location[DW_OP_regx 0x29]
$C$DW$117	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST2")
	.dwattr $C$DW$117, DW_AT_location[DW_OP_regx 0x2a]
$C$DW$118	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST3")
	.dwattr $C$DW$118, DW_AT_location[DW_OP_regx 0x2b]
$C$DW$119	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("MDP")
	.dwattr $C$DW$119, DW_AT_location[DW_OP_regx 0x2c]
$C$DW$120	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("MDP05")
	.dwattr $C$DW$120, DW_AT_location[DW_OP_regx 0x2d]
$C$DW$121	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("MDP67")
	.dwattr $C$DW$121, DW_AT_location[DW_OP_regx 0x2e]
$C$DW$122	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BRC0")
	.dwattr $C$DW$122, DW_AT_location[DW_OP_regx 0x2f]
$C$DW$123	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA0")
	.dwattr $C$DW$123, DW_AT_location[DW_OP_regx 0x30]
$C$DW$124	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA0_H")
	.dwattr $C$DW$124, DW_AT_location[DW_OP_regx 0x31]
$C$DW$125	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA0")
	.dwattr $C$DW$125, DW_AT_location[DW_OP_regx 0x32]
$C$DW$126	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA0_H")
	.dwattr $C$DW$126, DW_AT_location[DW_OP_regx 0x33]
$C$DW$127	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BRS1")
	.dwattr $C$DW$127, DW_AT_location[DW_OP_regx 0x34]
$C$DW$128	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BRC1")
	.dwattr $C$DW$128, DW_AT_location[DW_OP_regx 0x35]
$C$DW$129	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA1")
	.dwattr $C$DW$129, DW_AT_location[DW_OP_regx 0x36]
$C$DW$130	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA1_H")
	.dwattr $C$DW$130, DW_AT_location[DW_OP_regx 0x37]
$C$DW$131	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA1")
	.dwattr $C$DW$131, DW_AT_location[DW_OP_regx 0x38]
$C$DW$132	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA1_H")
	.dwattr $C$DW$132, DW_AT_location[DW_OP_regx 0x39]
$C$DW$133	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CSR")
	.dwattr $C$DW$133, DW_AT_location[DW_OP_regx 0x3a]
$C$DW$134	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RPTC")
	.dwattr $C$DW$134, DW_AT_location[DW_OP_regx 0x3b]
$C$DW$135	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CDP")
	.dwattr $C$DW$135, DW_AT_location[DW_OP_regx 0x3c]
$C$DW$136	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XCDP")
	.dwattr $C$DW$136, DW_AT_location[DW_OP_regx 0x3d]
$C$DW$137	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TRN0")
	.dwattr $C$DW$137, DW_AT_location[DW_OP_regx 0x3e]
$C$DW$138	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TRN1")
	.dwattr $C$DW$138, DW_AT_location[DW_OP_regx 0x3f]
$C$DW$139	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA01")
	.dwattr $C$DW$139, DW_AT_location[DW_OP_regx 0x40]
$C$DW$140	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA23")
	.dwattr $C$DW$140, DW_AT_location[DW_OP_regx 0x41]
$C$DW$141	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA45")
	.dwattr $C$DW$141, DW_AT_location[DW_OP_regx 0x42]
$C$DW$142	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA67")
	.dwattr $C$DW$142, DW_AT_location[DW_OP_regx 0x43]
$C$DW$143	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSAC")
	.dwattr $C$DW$143, DW_AT_location[DW_OP_regx 0x44]
$C$DW$144	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CARRY")
	.dwattr $C$DW$144, DW_AT_location[DW_OP_regx 0x45]
$C$DW$145	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TC1")
	.dwattr $C$DW$145, DW_AT_location[DW_OP_regx 0x46]
$C$DW$146	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TC2")
	.dwattr $C$DW$146, DW_AT_location[DW_OP_regx 0x47]
$C$DW$147	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("M40")
	.dwattr $C$DW$147, DW_AT_location[DW_OP_regx 0x48]
$C$DW$148	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SXMD")
	.dwattr $C$DW$148, DW_AT_location[DW_OP_regx 0x49]
$C$DW$149	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ARMS")
	.dwattr $C$DW$149, DW_AT_location[DW_OP_regx 0x4a]
$C$DW$150	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("C54CM")
	.dwattr $C$DW$150, DW_AT_location[DW_OP_regx 0x4b]
$C$DW$151	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SATA")
	.dwattr $C$DW$151, DW_AT_location[DW_OP_regx 0x4c]
$C$DW$152	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SATD")
	.dwattr $C$DW$152, DW_AT_location[DW_OP_regx 0x4d]
$C$DW$153	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RDM")
	.dwattr $C$DW$153, DW_AT_location[DW_OP_regx 0x4e]
$C$DW$154	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("FRCT")
	.dwattr $C$DW$154, DW_AT_location[DW_OP_regx 0x4f]
$C$DW$155	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SMUL")
	.dwattr $C$DW$155, DW_AT_location[DW_OP_regx 0x50]
$C$DW$156	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("INTM")
	.dwattr $C$DW$156, DW_AT_location[DW_OP_regx 0x51]
$C$DW$157	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR0LC")
	.dwattr $C$DW$157, DW_AT_location[DW_OP_regx 0x52]
$C$DW$158	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR1LC")
	.dwattr $C$DW$158, DW_AT_location[DW_OP_regx 0x53]
$C$DW$159	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR2LC")
	.dwattr $C$DW$159, DW_AT_location[DW_OP_regx 0x54]
$C$DW$160	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR3LC")
	.dwattr $C$DW$160, DW_AT_location[DW_OP_regx 0x55]
$C$DW$161	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR4LC")
	.dwattr $C$DW$161, DW_AT_location[DW_OP_regx 0x56]
$C$DW$162	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR5LC")
	.dwattr $C$DW$162, DW_AT_location[DW_OP_regx 0x57]
$C$DW$163	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR6LC")
	.dwattr $C$DW$163, DW_AT_location[DW_OP_regx 0x58]
$C$DW$164	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR7LC")
	.dwattr $C$DW$164, DW_AT_location[DW_OP_regx 0x59]
$C$DW$165	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CDPLC")
	.dwattr $C$DW$165, DW_AT_location[DW_OP_regx 0x5a]
$C$DW$166	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CIE_RETA")
	.dwattr $C$DW$166, DW_AT_location[DW_OP_regx 0x5b]
	.dwendtag $C$DW$CU

