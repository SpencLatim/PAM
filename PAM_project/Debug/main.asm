;*******************************************************************************
;* TMS320C55x C/C++ Codegen                                          PC v4.4.1 *
;* Date/Time created: Thu May 30 09:41:15 2024                                 *
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
	.dwattr $C$DW$CU, DW_AT_name("../main.c")
	.dwattr $C$DW$CU, DW_AT_producer("TMS320C55x C/C++ Codegen PC v4.4.1 Copyright (c) 1996-2012 Texas Instruments Incorporated")
	.dwattr $C$DW$CU, DW_AT_TI_version(0x01)
	.dwattr $C$DW$CU, DW_AT_comp_dir("C:\Users\bacon\OneDrive\workspace_v6_1\PAM_project\Debug")
;******************************************************************************
;* CINIT RECORDS                                                              *
;******************************************************************************
	.sect	".cinit"
	.align	1
	.field  	$C$IR_1,16
	.field  	_cosineFilter+0,24
	.field  	0,8
	.field	0,16			; _cosineFilter[0] @ 0
	.field	-6,16			; _cosineFilter[1] @ 16
	.field	-9,16			; _cosineFilter[2] @ 32
	.field	-7,16			; _cosineFilter[3] @ 48
	.field	-3,16			; _cosineFilter[4] @ 64
	.field	0,16			; _cosineFilter[5] @ 80
	.field	-3,16			; _cosineFilter[6] @ 96
	.field	-12,16			; _cosineFilter[7] @ 112
	.field	-19,16			; _cosineFilter[8] @ 128
	.field	-16,16			; _cosineFilter[9] @ 144
	.field	0,16			; _cosineFilter[10] @ 160
	.field	22,16			; _cosineFilter[11] @ 176
	.field	36,16			; _cosineFilter[12] @ 192
	.field	32,16			; _cosineFilter[13] @ 208
	.field	13,16			; _cosineFilter[14] @ 224
	.field	0,16			; _cosineFilter[15] @ 240
	.field	20,16			; _cosineFilter[16] @ 256
	.field	77,16			; _cosineFilter[17] @ 272
	.field	139,16			; _cosineFilter[18] @ 288
	.field	137,16			; _cosineFilter[19] @ 304
	.field	0,16			; _cosineFilter[20] @ 320
	.field	-288,16			; _cosineFilter[21] @ 336
	.field	-640,16			; _cosineFilter[22] @ 352
	.field	-865,16			; _cosineFilter[23] @ 368
	.field	-716,16			; _cosineFilter[24] @ 384
	.field	0,16			; _cosineFilter[25] @ 400
	.field	1314,16			; _cosineFilter[26] @ 416
	.field	3035,16			; _cosineFilter[27] @ 432
	.field	4776,16			; _cosineFilter[28] @ 448
	.field	6073,16			; _cosineFilter[29] @ 464
	.field	6554,16			; _cosineFilter[30] @ 480
	.field	6073,16			; _cosineFilter[31] @ 496
	.field	4776,16			; _cosineFilter[32] @ 512
	.field	3035,16			; _cosineFilter[33] @ 528
	.field	1314,16			; _cosineFilter[34] @ 544
	.field	0,16			; _cosineFilter[35] @ 560
	.field	-716,16			; _cosineFilter[36] @ 576
	.field	-865,16			; _cosineFilter[37] @ 592
	.field	-640,16			; _cosineFilter[38] @ 608
	.field	-288,16			; _cosineFilter[39] @ 624
	.field	0,16			; _cosineFilter[40] @ 640
	.field	137,16			; _cosineFilter[41] @ 656
	.field	139,16			; _cosineFilter[42] @ 672
	.field	77,16			; _cosineFilter[43] @ 688
	.field	20,16			; _cosineFilter[44] @ 704
	.field	0,16			; _cosineFilter[45] @ 720
	.field	13,16			; _cosineFilter[46] @ 736
	.field	32,16			; _cosineFilter[47] @ 752
	.field	36,16			; _cosineFilter[48] @ 768
	.field	22,16			; _cosineFilter[49] @ 784
	.field	0,16			; _cosineFilter[50] @ 800
	.field	-16,16			; _cosineFilter[51] @ 816
	.field	-19,16			; _cosineFilter[52] @ 832
	.field	-12,16			; _cosineFilter[53] @ 848
	.field	-3,16			; _cosineFilter[54] @ 864
	.field	0,16			; _cosineFilter[55] @ 880
	.field	-3,16			; _cosineFilter[56] @ 896
	.field	-7,16			; _cosineFilter[57] @ 912
	.field	-9,16			; _cosineFilter[58] @ 928
	.field	-6,16			; _cosineFilter[59] @ 944
	.field	0,16			; _cosineFilter[60] @ 960
$C$IR_1:	.set	61

	.sect	".cinit"
	.align	1
	.field  	$C$IR_2,16
	.field  	_testVector+0,24
	.field  	0,8
	.field	0,16			; _testVector[0] @ 0
	.field	17908,16			; _testVector[1] @ 16
	.field	11961,16			; _testVector[2] @ 32
	.field	9042,16			; _testVector[3] @ 48
	.field	-7387,16			; _testVector[4] @ 64
	.field	12175,16			; _testVector[5] @ 80
	.field	-1662,16			; _testVector[6] @ 96
	.field	8617,16			; _testVector[7] @ 112
	.field	-13304,16			; _testVector[8] @ 128
	.field	15627,16			; _testVector[9] @ 144
	.field	15057,16			; _testVector[10] @ 160
	.field	32767,16			; _testVector[11] @ 176
	.field	5135,16			; _testVector[12] @ 192
	.field	3330,16			; _testVector[13] @ 208
	.field	-2446,16			; _testVector[14] @ 224
	.field	8828,16			; _testVector[15] @ 240
	.field	6859,16			; _testVector[16] @ 256
	.field	-2158,16			; _testVector[17] @ 272
	.field	7836,16			; _testVector[18] @ 288
	.field	10843,16			; _testVector[19] @ 304
	.field	27705,16			; _testVector[20] @ 320
	.field	-775,16			; _testVector[21] @ 336
	.field	-1847,16			; _testVector[22] @ 352
	.field	-22486,16			; _testVector[23] @ 368
	.field	5571,16			; _testVector[24] @ 384
	.field	-6328,16			; _testVector[25] @ 400
	.field	5564,16			; _testVector[26] @ 416
	.field	-12427,16			; _testVector[27] @ 432
	.field	7030,16			; _testVector[28] @ 448
	.field	3398,16			; _testVector[29] @ 464
	.field	947,16			; _testVector[30] @ 480
	.field	-19888,16			; _testVector[31] @ 496
	.field	-26943,16			; _testVector[32] @ 512
	.field	-11396,16			; _testVector[33] @ 528
	.field	-5746,16			; _testVector[34] @ 544
	.field	5123,16			; _testVector[35] @ 560
	.field	-15136,16			; _testVector[36] @ 576
	.field	838,16			; _testVector[37] @ 592
	.field	-9682,16			; _testVector[38] @ 608
	.field	6228,16			; _testVector[39] @ 624
	.field	-25059,16			; _testVector[40] @ 640
	.field	-15650,16			; _testVector[41] @ 656
	.field	-21412,16			; _testVector[42] @ 672
	.field	10997,16			; _testVector[43] @ 688
	.field	5550,16			; _testVector[44] @ 704
	.field	6073,16			; _testVector[45] @ 720
	.field	-5750,16			; _testVector[46] @ 736
	.field	0,16			; _testVector[47] @ 752
$C$IR_2:	.set	48

	.sect	".cinit"
	.align	1
	.field  	1,16
	.field  	_boop+0,24
	.field  	0,8
	.field	768,16			; _boop @ 0


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


$C$DW$5	.dwtag  DW_TAG_subprogram, DW_AT_name("myFir")
	.dwattr $C$DW$5, DW_AT_TI_symbol_name("_myFir")
	.dwattr $C$DW$5, DW_AT_declaration
	.dwattr $C$DW$5, DW_AT_external
$C$DW$6	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$6, DW_AT_type(*$C$DW$T$21)
$C$DW$7	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$7, DW_AT_type(*$C$DW$T$21)
$C$DW$8	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$8, DW_AT_type(*$C$DW$T$21)
$C$DW$9	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$9, DW_AT_type(*$C$DW$T$22)
$C$DW$10	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$10, DW_AT_type(*$C$DW$T$22)
	.dwendtag $C$DW$5


$C$DW$11	.dwtag  DW_TAG_subprogram, DW_AT_name("sqrt")
	.dwattr $C$DW$11, DW_AT_TI_symbol_name("_sqrt")
	.dwattr $C$DW$11, DW_AT_type(*$C$DW$T$17)
	.dwattr $C$DW$11, DW_AT_declaration
	.dwattr $C$DW$11, DW_AT_external
$C$DW$12	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$12, DW_AT_type(*$C$DW$T$17)
	.dwendtag $C$DW$11


$C$DW$13	.dwtag  DW_TAG_subprogram, DW_AT_name("rand")
	.dwattr $C$DW$13, DW_AT_TI_symbol_name("_rand")
	.dwattr $C$DW$13, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$13, DW_AT_declaration
	.dwattr $C$DW$13, DW_AT_external
	.bss	_cosineFilter,61,0,0
$C$DW$14	.dwtag  DW_TAG_variable, DW_AT_name("cosineFilter")
	.dwattr $C$DW$14, DW_AT_TI_symbol_name("_cosineFilter")
	.dwattr $C$DW$14, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$14, DW_AT_location[DW_OP_addr _cosineFilter]
	.bss	_testVector,48,0,0
$C$DW$15	.dwtag  DW_TAG_variable, DW_AT_name("testVector")
	.dwattr $C$DW$15, DW_AT_TI_symbol_name("_testVector")
	.dwattr $C$DW$15, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$15, DW_AT_location[DW_OP_addr _testVector]
	.global	_bitCollection
	.bss	_bitCollection,768,0,0
$C$DW$16	.dwtag  DW_TAG_variable, DW_AT_name("bitCollection")
	.dwattr $C$DW$16, DW_AT_TI_symbol_name("_bitCollection")
	.dwattr $C$DW$16, DW_AT_location[DW_OP_addr _bitCollection]
	.dwattr $C$DW$16, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$16, DW_AT_external
	.global	_symbolsCollection
	.bss	_symbolsCollection,768,0,0
$C$DW$17	.dwtag  DW_TAG_variable, DW_AT_name("symbolsCollection")
	.dwattr $C$DW$17, DW_AT_TI_symbol_name("_symbolsCollection")
	.dwattr $C$DW$17, DW_AT_location[DW_OP_addr _symbolsCollection]
	.dwattr $C$DW$17, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$17, DW_AT_external
	.global	_Reconstruction
	.bss	_Reconstruction,48,0,0
$C$DW$18	.dwtag  DW_TAG_variable, DW_AT_name("Reconstruction")
	.dwattr $C$DW$18, DW_AT_TI_symbol_name("_Reconstruction")
	.dwattr $C$DW$18, DW_AT_location[DW_OP_addr _Reconstruction]
	.dwattr $C$DW$18, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$18, DW_AT_external
	.global	_delayLine
	.bss	_delayLine,61,0,0
$C$DW$19	.dwtag  DW_TAG_variable, DW_AT_name("delayLine")
	.dwattr $C$DW$19, DW_AT_TI_symbol_name("_delayLine")
	.dwattr $C$DW$19, DW_AT_location[DW_OP_addr _delayLine]
	.dwattr $C$DW$19, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$19, DW_AT_external
	.global	_padBitCollection
	.bss	_padBitCollection,8448,0,0
$C$DW$20	.dwtag  DW_TAG_variable, DW_AT_name("padBitCollection")
	.dwattr $C$DW$20, DW_AT_TI_symbol_name("_padBitCollection")
	.dwattr $C$DW$20, DW_AT_location[DW_OP_addr _padBitCollection]
	.dwattr $C$DW$20, DW_AT_type(*$C$DW$T$38)
	.dwattr $C$DW$20, DW_AT_external
	.global	_RXBits
	.bss	_RXBits,8448,0,0
$C$DW$21	.dwtag  DW_TAG_variable, DW_AT_name("RXBits")
	.dwattr $C$DW$21, DW_AT_TI_symbol_name("_RXBits")
	.dwattr $C$DW$21, DW_AT_location[DW_OP_addr _RXBits]
	.dwattr $C$DW$21, DW_AT_type(*$C$DW$T$38)
	.dwattr $C$DW$21, DW_AT_external
	.global	_bitCollection2
	.bss	_bitCollection2,768,0,0
$C$DW$22	.dwtag  DW_TAG_variable, DW_AT_name("bitCollection2")
	.dwattr $C$DW$22, DW_AT_TI_symbol_name("_bitCollection2")
	.dwattr $C$DW$22, DW_AT_location[DW_OP_addr _bitCollection2]
	.dwattr $C$DW$22, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$22, DW_AT_external
	.global	_boop
	.bss	_boop,1,0,0
$C$DW$23	.dwtag  DW_TAG_variable, DW_AT_name("boop")
	.dwattr $C$DW$23, DW_AT_TI_symbol_name("_boop")
	.dwattr $C$DW$23, DW_AT_location[DW_OP_addr _boop]
	.dwattr $C$DW$23, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$23, DW_AT_external
;	C:\ti\ccsv6\tools\compiler\c5500_4.4.1\bin\acp55.exe -@C:\\Users\\bacon\\AppData\\Local\\Temp\\2254012 
	.sect	".text"
	.global	_StopTest

$C$DW$24	.dwtag  DW_TAG_subprogram, DW_AT_name("StopTest")
	.dwattr $C$DW$24, DW_AT_low_pc(_StopTest)
	.dwattr $C$DW$24, DW_AT_high_pc(0x00)
	.dwattr $C$DW$24, DW_AT_TI_symbol_name("_StopTest")
	.dwattr $C$DW$24, DW_AT_external
	.dwattr $C$DW$24, DW_AT_TI_begin_file("../main.c")
	.dwattr $C$DW$24, DW_AT_TI_begin_line(0x18)
	.dwattr $C$DW$24, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$24, DW_AT_TI_max_frame_size(0x01)
	.dwpsn	file "../main.c",line 25,column 1,is_stmt,address _StopTest

	.dwfde $C$DW$CIE, _StopTest
;*******************************************************************************
;* FUNCTION NAME: StopTest                                                     *
;*                                                                             *
;*   Function Uses Regs : SP,M40,SATA,SATD,RDM,FRCT,SMUL                       *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 1 word                                               *
;*                        (1 return address/alignment)                         *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_StopTest:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
	.dwpsn	file "../main.c",line 27,column 5,is_stmt
	.dwpsn	file "../main.c",line 28,column 1,is_stmt
$C$DW$25	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$25, DW_AT_low_pc(0x00)
	.dwattr $C$DW$25, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$24, DW_AT_TI_end_file("../main.c")
	.dwattr $C$DW$24, DW_AT_TI_end_line(0x1c)
	.dwattr $C$DW$24, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$24

	.sect	".text"
	.global	_main

$C$DW$26	.dwtag  DW_TAG_subprogram, DW_AT_name("main")
	.dwattr $C$DW$26, DW_AT_low_pc(_main)
	.dwattr $C$DW$26, DW_AT_high_pc(0x00)
	.dwattr $C$DW$26, DW_AT_TI_symbol_name("_main")
	.dwattr $C$DW$26, DW_AT_external
	.dwattr $C$DW$26, DW_AT_TI_begin_file("../main.c")
	.dwattr $C$DW$26, DW_AT_TI_begin_line(0x3f)
	.dwattr $C$DW$26, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$26, DW_AT_TI_max_frame_size(0x06)
	.dwpsn	file "../main.c",line 64,column 1,is_stmt,address _main

	.dwfde $C$DW$CIE, _main
;*******************************************************************************
;* FUNCTION NAME: main                                                         *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,AR0,XAR0,AR1,XAR1,AR2,XAR2,AR3,   *
;*                        XAR3,SP,CARRY,TC1,M40,SATA,SATD,RDM,FRCT,SMUL        *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 6 words                                              *
;*                        (2 return address/alignment)                         *
;*                        (4 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_main:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-5, SP
	.dwcfi	cfa_offset, 6
$C$DW$27	.dwtag  DW_TAG_variable, DW_AT_name("i")
	.dwattr $C$DW$27, DW_AT_TI_symbol_name("_i")
	.dwattr $C$DW$27, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$27, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$28	.dwtag  DW_TAG_variable, DW_AT_name("errors")
	.dwattr $C$DW$28, DW_AT_TI_symbol_name("_errors")
	.dwattr $C$DW$28, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$28, DW_AT_location[DW_OP_bregx 0x24 1]
$C$DW$29	.dwtag  DW_TAG_variable, DW_AT_name("error_percent")
	.dwattr $C$DW$29, DW_AT_TI_symbol_name("_error_percent")
	.dwattr $C$DW$29, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$29, DW_AT_location[DW_OP_bregx 0x24 2]
	.dwpsn	file "../main.c",line 69,column 13,is_stmt
        MOV #0, *SP(#0) ; |69| 
	.dwpsn	file "../main.c",line 70,column 9,is_stmt
        MOV #0, *SP(#0) ; |70| 
	.dwpsn	file "../main.c",line 70,column 13,is_stmt
        MOV #30, AR2 ; |70| 
        MOV *SP(#0), AR1 ; |70| 
        CMP AR1 >= AR2, TC1 ; |70| 
        BCC $C$L2,TC1 ; |70| 
                                        ; branchcc occurs ; |70| 
$C$L1:    
$C$DW$L$_main$2$B:
	.dwpsn	file "../main.c",line 71,column 6,is_stmt
        MOV AR1, T0 ; |71| 
        AMOV #_delayLine, XAR3 ; |71| 
        MOV #0, *AR3(T0) ; |71| 
	.dwpsn	file "../main.c",line 70,column 24,is_stmt
        ADD #1, *SP(#0) ; |70| 
	.dwpsn	file "../main.c",line 70,column 13,is_stmt
        MOV *SP(#0), AR1 ; |70| 
        CMP AR1 < AR2, TC1 ; |70| 
        BCC $C$L1,TC1 ; |70| 
                                        ; branchcc occurs ; |70| 
$C$DW$L$_main$2$E:
$C$L2:    
	.dwpsn	file "../main.c",line 83,column 5,is_stmt
        AMOV #_bitCollection, XAR1 ; |83| 
        AMOV #_testVector, XAR0 ; |83| 
$C$DW$30	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$30, DW_AT_low_pc(0x00)
	.dwattr $C$DW$30, DW_AT_name("_bit_extraction")
	.dwattr $C$DW$30, DW_AT_TI_call
        CALL #_bit_extraction ; |83| 
                                        ; call occurs [#_bit_extraction] ; |83| 
	.dwpsn	file "../main.c",line 85,column 5,is_stmt
        AMOV #_symbolsCollection, XAR1 ; |85| 
        AMOV #_bitCollection, XAR0 ; |85| 
$C$DW$31	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$31, DW_AT_low_pc(0x00)
	.dwattr $C$DW$31, DW_AT_name("_symbol_extraction")
	.dwattr $C$DW$31, DW_AT_TI_call
        CALL #_symbol_extraction ; |85| 
                                        ; call occurs [#_symbol_extraction] ; |85| 
	.dwpsn	file "../main.c",line 87,column 5,is_stmt
        AMOV #_padBitCollection, XAR1 ; |87| 
        AMOV #_symbolsCollection, XAR0 ; |87| 
$C$DW$32	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$32, DW_AT_low_pc(0x00)
	.dwattr $C$DW$32, DW_AT_name("_zeroPadding")
	.dwattr $C$DW$32, DW_AT_TI_call
        CALL #_zeroPadding ; |87| 
                                        ; call occurs [#_zeroPadding] ; |87| 
	.dwpsn	file "../main.c",line 89,column 5,is_stmt
        AMOV #_cosineFilter, XAR1 ; |89| 
        AMOV #_padBitCollection, XAR0 ; |89| 
        AMOV #_delayLine, XAR2 ; |89| 
        MOV #61, AC1 ; |89| 
        MOV #8448, AC0 ; |89| 
$C$DW$33	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$33, DW_AT_low_pc(0x00)
	.dwattr $C$DW$33, DW_AT_name("_myFir")
	.dwattr $C$DW$33, DW_AT_TI_call
        CALL #_myFir ; |89| 
                                        ; call occurs [#_myFir] ; |89| 
	.dwpsn	file "../main.c",line 96,column 5,is_stmt
        AMOV #_RXBits, XAR1 ; |96| 
        AMOV #_padBitCollection, XAR0 ; |96| 
$C$DW$34	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$34, DW_AT_low_pc(0x00)
	.dwattr $C$DW$34, DW_AT_name("_noiser")
	.dwattr $C$DW$34, DW_AT_TI_call

        CALL #_noiser ; |96| 
||      MOV #1, T0

                                        ; call occurs [#_noiser] ; |96| 
	.dwpsn	file "../main.c",line 98,column 9,is_stmt
        MOV #0, *SP(#0) ; |98| 
	.dwpsn	file "../main.c",line 98,column 13,is_stmt
        MOV #30, AR2 ; |98| 
        MOV *SP(#0), AR1 ; |98| 
        CMP AR1 >= AR2, TC1 ; |98| 
        BCC $C$L4,TC1 ; |98| 
                                        ; branchcc occurs ; |98| 
$C$L3:    
$C$DW$L$_main$4$B:
	.dwpsn	file "../main.c",line 99,column 10,is_stmt
        MOV AR1, T0 ; |99| 
        AMOV #_delayLine, XAR3 ; |99| 
        MOV #0, *AR3(T0) ; |99| 
	.dwpsn	file "../main.c",line 98,column 24,is_stmt
        ADD #1, *SP(#0) ; |98| 
	.dwpsn	file "../main.c",line 98,column 13,is_stmt
        MOV *SP(#0), AR1 ; |98| 
        CMP AR1 < AR2, TC1 ; |98| 
        BCC $C$L3,TC1 ; |98| 
                                        ; branchcc occurs ; |98| 
$C$DW$L$_main$4$E:
$C$L4:    
	.dwpsn	file "../main.c",line 106,column 5,is_stmt
        AMOV #_delayLine, XAR2 ; |106| 
        AMOV #_cosineFilter, XAR1 ; |106| 
        AMOV #_RXBits, XAR0 ; |106| 
        MOV #61, AC1 ; |106| 
        MOV #8448, AC0 ; |106| 
$C$DW$35	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$35, DW_AT_low_pc(0x00)
	.dwattr $C$DW$35, DW_AT_name("_myFir")
	.dwattr $C$DW$35, DW_AT_TI_call
        CALL #_myFir ; |106| 
                                        ; call occurs [#_myFir] ; |106| 
	.dwpsn	file "../main.c",line 108,column 5,is_stmt
        AMOV #_bitCollection2, XAR1 ; |108| 
        AMOV #_RXBits, XAR0 ; |108| 
$C$DW$36	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$36, DW_AT_low_pc(0x00)
	.dwattr $C$DW$36, DW_AT_name("_downSample")
	.dwattr $C$DW$36, DW_AT_TI_call
        CALL #_downSample ; |108| 
                                        ; call occurs [#_downSample] ; |108| 
	.dwpsn	file "../main.c",line 110,column 5,is_stmt
        AMOV #_Reconstruction, XAR1 ; |110| 
        AMOV #_bitCollection2, XAR0 ; |110| 
$C$DW$37	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$37, DW_AT_low_pc(0x00)
	.dwattr $C$DW$37, DW_AT_name("_number_reconstruction")
	.dwattr $C$DW$37, DW_AT_TI_call
        CALL #_number_reconstruction ; |110| 
                                        ; call occurs [#_number_reconstruction] ; |110| 
	.dwpsn	file "../main.c",line 117,column 13,is_stmt
        AMOV #_bitCollection2, XAR1 ; |117| 
        AMOV #_bitCollection, XAR0 ; |117| 
$C$DW$38	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$38, DW_AT_low_pc(0x00)
	.dwattr $C$DW$38, DW_AT_name("_error_detection")
	.dwattr $C$DW$38, DW_AT_TI_call
        CALL #_error_detection ; |117| 
                                        ; call occurs [#_error_detection] ; |117| 
        MOV T0, *SP(#1) ; |117| 
	.dwpsn	file "../main.c",line 119,column 20,is_stmt
$C$DW$39	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$39, DW_AT_low_pc(0x00)
	.dwattr $C$DW$39, DW_AT_name("__fltid")
	.dwattr $C$DW$39, DW_AT_TI_call
        CALL #__fltid ; |119| 
                                        ; call occurs [#__fltid] ; |119| 
        MOV AC0, dbl(*SP(#2)) ; |119| 
        NOP
        NOP
        NOP
	.dwpsn	file "../main.c",line 121,column 5,is_stmt
        MOV dbl(*SP(#2)), AC0 ; |121| 
        MOV dbl(*($C$FL1)), AC1 ; |121| 
$C$DW$40	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$40, DW_AT_low_pc(0x00)
	.dwattr $C$DW$40, DW_AT_name("__divd")
	.dwattr $C$DW$40, DW_AT_TI_call
        CALL #__divd ; |121| 
                                        ; call occurs [#__divd] ; |121| 
        MOV AC0, dbl(*SP(#2)) ; |121| 
        NOP
        NOP
	.dwpsn	file "../main.c",line 123,column 5,is_stmt
        MOV dbl(*($C$FL2)), AC1 ; |123| 
        MOV dbl(*SP(#2)), AC0 ; |123| 
$C$DW$41	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$41, DW_AT_low_pc(0x00)
	.dwattr $C$DW$41, DW_AT_name("__mpyd")
	.dwattr $C$DW$41, DW_AT_TI_call
        CALL #__mpyd ; |123| 
                                        ; call occurs [#__mpyd] ; |123| 
        MOV AC0, dbl(*SP(#2)) ; |123| 
	.dwpsn	file "../main.c",line 127,column 1,is_stmt
        AADD #5, SP
	.dwcfi	cfa_offset, 1
$C$DW$42	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$42, DW_AT_low_pc(0x00)
	.dwattr $C$DW$42, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$43	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$43, DW_AT_name("C:\Users\bacon\OneDrive\workspace_v6_1\PAM_project\Debug\main.asm:$C$L3:1:1717080075")
	.dwattr $C$DW$43, DW_AT_TI_begin_file("../main.c")
	.dwattr $C$DW$43, DW_AT_TI_begin_line(0x62)
	.dwattr $C$DW$43, DW_AT_TI_end_line(0x64)
$C$DW$44	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$44, DW_AT_low_pc($C$DW$L$_main$4$B)
	.dwattr $C$DW$44, DW_AT_high_pc($C$DW$L$_main$4$E)
	.dwendtag $C$DW$43


$C$DW$45	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$45, DW_AT_name("C:\Users\bacon\OneDrive\workspace_v6_1\PAM_project\Debug\main.asm:$C$L1:1:1717080075")
	.dwattr $C$DW$45, DW_AT_TI_begin_file("../main.c")
	.dwattr $C$DW$45, DW_AT_TI_begin_line(0x46)
	.dwattr $C$DW$45, DW_AT_TI_end_line(0x48)
$C$DW$46	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$46, DW_AT_low_pc($C$DW$L$_main$2$B)
	.dwattr $C$DW$46, DW_AT_high_pc($C$DW$L$_main$2$E)
	.dwendtag $C$DW$45

	.dwattr $C$DW$26, DW_AT_TI_end_file("../main.c")
	.dwattr $C$DW$26, DW_AT_TI_end_line(0x7f)
	.dwattr $C$DW$26, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$26

	.sect	".text"
	.global	_bit_extraction

$C$DW$47	.dwtag  DW_TAG_subprogram, DW_AT_name("bit_extraction")
	.dwattr $C$DW$47, DW_AT_low_pc(_bit_extraction)
	.dwattr $C$DW$47, DW_AT_high_pc(0x00)
	.dwattr $C$DW$47, DW_AT_TI_symbol_name("_bit_extraction")
	.dwattr $C$DW$47, DW_AT_external
	.dwattr $C$DW$47, DW_AT_TI_begin_file("../main.c")
	.dwattr $C$DW$47, DW_AT_TI_begin_line(0x89)
	.dwattr $C$DW$47, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$47, DW_AT_TI_max_frame_size(0x08)
	.dwpsn	file "../main.c",line 137,column 54,is_stmt,address _bit_extraction

	.dwfde $C$DW$CIE, _bit_extraction
$C$DW$48	.dwtag  DW_TAG_formal_parameter, DW_AT_name("inData")
	.dwattr $C$DW$48, DW_AT_TI_symbol_name("_inData")
	.dwattr $C$DW$48, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$48, DW_AT_location[DW_OP_reg17]
$C$DW$49	.dwtag  DW_TAG_formal_parameter, DW_AT_name("outData")
	.dwattr $C$DW$49, DW_AT_TI_symbol_name("_outData")
	.dwattr $C$DW$49, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$49, DW_AT_location[DW_OP_reg19]
;*******************************************************************************
;* FUNCTION NAME: bit_extraction                                               *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,T0,T1,AR0,XAR0,AR1,XAR1,AR2,AR3,XAR3,SP, *
;*                        CARRY,TC1,M40,SATA,SATD,RDM,FRCT,SMUL                *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 8 words                                              *
;*                        (1 return address/alignment)                         *
;*                        (7 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_bit_extraction:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-7, SP
	.dwcfi	cfa_offset, 8
$C$DW$50	.dwtag  DW_TAG_variable, DW_AT_name("inData")
	.dwattr $C$DW$50, DW_AT_TI_symbol_name("_inData")
	.dwattr $C$DW$50, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$50, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$51	.dwtag  DW_TAG_variable, DW_AT_name("outData")
	.dwattr $C$DW$51, DW_AT_TI_symbol_name("_outData")
	.dwattr $C$DW$51, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$51, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$52	.dwtag  DW_TAG_variable, DW_AT_name("i")
	.dwattr $C$DW$52, DW_AT_TI_symbol_name("_i")
	.dwattr $C$DW$52, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$52, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$53	.dwtag  DW_TAG_variable, DW_AT_name("j")
	.dwattr $C$DW$53, DW_AT_TI_symbol_name("_j")
	.dwattr $C$DW$53, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$53, DW_AT_location[DW_OP_bregx 0x24 5]
$C$DW$54	.dwtag  DW_TAG_variable, DW_AT_name("temp")
	.dwattr $C$DW$54, DW_AT_TI_symbol_name("_temp")
	.dwattr $C$DW$54, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$54, DW_AT_location[DW_OP_bregx 0x24 6]
        MOV XAR1, dbl(*SP(#2))
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "../main.c",line 138,column 10,is_stmt
        MOV #0, *SP(#4) ; |138| 
	.dwpsn	file "../main.c",line 139,column 10,is_stmt
        MOV #0, *SP(#5) ; |139| 
	.dwpsn	file "../main.c",line 140,column 10,is_stmt
        MOV #0, *SP(#6) ; |140| 
	.dwpsn	file "../main.c",line 141,column 6,is_stmt
        MOV #0, *SP(#4) ; |141| 
	.dwpsn	file "../main.c",line 141,column 10,is_stmt
        MOV #768, AR2 ; |141| 
        MOV *SP(#4), AR1 ; |141| 
        CMP AR1 >= AR2, TC1 ; |141| 
        BCC $C$L8,TC1 ; |141| 
                                        ; branchcc occurs ; |141| 
$C$L5:    
$C$DW$L$_bit_extraction$2$B:
	.dwpsn	file "../main.c",line 142,column 7,is_stmt
        MOV #0, *SP(#5) ; |142| 
	.dwpsn	file "../main.c",line 142,column 11,is_stmt
        MOV #16, AR2 ; |142| 
        MOV *SP(#5), AR1 ; |142| 
        CMP AR1 >= AR2, TC1 ; |142| 
        BCC $C$L7,TC1 ; |142| 
                                        ; branchcc occurs ; |142| 
$C$DW$L$_bit_extraction$2$E:
$C$L6:    
$C$DW$L$_bit_extraction$3$B:
	.dwpsn	file "../main.c",line 143,column 4,is_stmt
        MOV *SP(#4), T0 ; |143| 
        MOV dbl(*SP(#0)), XAR3

        MOV #1, AC0
||      MOV AR1, T1 ; |143| 

        SFTS AC0, T1, AC0 ; |143| 
        AND *AR3(T0), AC0, AC0 ; |143| 
        MOV AC0, *SP(#6) ; |143| 
	.dwpsn	file "../main.c",line 144,column 4,is_stmt
        MOV *SP(#5), AR1 ; |144| 

        MOV *SP(#6), AC0 ; |144| 
||      NEG AR1, T1 ; |144| 

        SFTS AC0, T1, AC0 ; |144| 
        MOV AC0, *SP(#6) ; |144| 
	.dwpsn	file "../main.c",line 145,column 4,is_stmt
        MOV *SP(#4), AC1 ; |145| 
        MOV dbl(*SP(#2)), XAR3
        MOV *SP(#5), AC0 ; |145| 
        ADD AC1 << #4, AC0 ; |145| 
        MOV AC0, T0 ; |145| 
        MOV *SP(#6), AR1 ; |145| 
        MOV AR1, *AR3(T0) ; |145| 
	.dwpsn	file "../main.c",line 142,column 16,is_stmt
        ADD #1, *SP(#5) ; |142| 
	.dwpsn	file "../main.c",line 142,column 11,is_stmt
        MOV *SP(#5), AR1 ; |142| 
        CMP AR1 < AR2, TC1 ; |142| 
        BCC $C$L6,TC1 ; |142| 
                                        ; branchcc occurs ; |142| 
$C$DW$L$_bit_extraction$3$E:
$C$L7:    
$C$DW$L$_bit_extraction$4$B:
	.dwpsn	file "../main.c",line 141,column 19,is_stmt
        ADD #1, *SP(#4) ; |141| 
	.dwpsn	file "../main.c",line 141,column 10,is_stmt
        MOV #768, AR2 ; |141| 
        MOV *SP(#4), AR1 ; |141| 
        CMP AR1 < AR2, TC1 ; |141| 
        BCC $C$L5,TC1 ; |141| 
                                        ; branchcc occurs ; |141| 
$C$DW$L$_bit_extraction$4$E:
	.dwpsn	file "../main.c",line 149,column 1,is_stmt
$C$L8:    
        AADD #7, SP
	.dwcfi	cfa_offset, 1
$C$DW$55	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$55, DW_AT_low_pc(0x00)
	.dwattr $C$DW$55, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$56	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$56, DW_AT_name("C:\Users\bacon\OneDrive\workspace_v6_1\PAM_project\Debug\main.asm:$C$L5:1:1717080075")
	.dwattr $C$DW$56, DW_AT_TI_begin_file("../main.c")
	.dwattr $C$DW$56, DW_AT_TI_begin_line(0x8d)
	.dwattr $C$DW$56, DW_AT_TI_end_line(0x93)
$C$DW$57	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$57, DW_AT_low_pc($C$DW$L$_bit_extraction$2$B)
	.dwattr $C$DW$57, DW_AT_high_pc($C$DW$L$_bit_extraction$2$E)
$C$DW$58	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$58, DW_AT_low_pc($C$DW$L$_bit_extraction$4$B)
	.dwattr $C$DW$58, DW_AT_high_pc($C$DW$L$_bit_extraction$4$E)

$C$DW$59	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$59, DW_AT_name("C:\Users\bacon\OneDrive\workspace_v6_1\PAM_project\Debug\main.asm:$C$L6:2:1717080075")
	.dwattr $C$DW$59, DW_AT_TI_begin_file("../main.c")
	.dwattr $C$DW$59, DW_AT_TI_begin_line(0x8e)
	.dwattr $C$DW$59, DW_AT_TI_end_line(0x92)
$C$DW$60	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$60, DW_AT_low_pc($C$DW$L$_bit_extraction$3$B)
	.dwattr $C$DW$60, DW_AT_high_pc($C$DW$L$_bit_extraction$3$E)
	.dwendtag $C$DW$59

	.dwendtag $C$DW$56

	.dwattr $C$DW$47, DW_AT_TI_end_file("../main.c")
	.dwattr $C$DW$47, DW_AT_TI_end_line(0x95)
	.dwattr $C$DW$47, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$47

	.sect	".text"
	.global	_symbol_extraction

$C$DW$61	.dwtag  DW_TAG_subprogram, DW_AT_name("symbol_extraction")
	.dwattr $C$DW$61, DW_AT_low_pc(_symbol_extraction)
	.dwattr $C$DW$61, DW_AT_high_pc(0x00)
	.dwattr $C$DW$61, DW_AT_TI_symbol_name("_symbol_extraction")
	.dwattr $C$DW$61, DW_AT_external
	.dwattr $C$DW$61, DW_AT_TI_begin_file("../main.c")
	.dwattr $C$DW$61, DW_AT_TI_begin_line(0x97)
	.dwattr $C$DW$61, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$61, DW_AT_TI_max_frame_size(0x06)
	.dwpsn	file "../main.c",line 151,column 57,is_stmt,address _symbol_extraction

	.dwfde $C$DW$CIE, _symbol_extraction
$C$DW$62	.dwtag  DW_TAG_formal_parameter, DW_AT_name("inData")
	.dwattr $C$DW$62, DW_AT_TI_symbol_name("_inData")
	.dwattr $C$DW$62, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$62, DW_AT_location[DW_OP_reg17]
$C$DW$63	.dwtag  DW_TAG_formal_parameter, DW_AT_name("outData")
	.dwattr $C$DW$63, DW_AT_TI_symbol_name("_outData")
	.dwattr $C$DW$63, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$63, DW_AT_location[DW_OP_reg19]
;*******************************************************************************
;* FUNCTION NAME: symbol_extraction                                            *
;*                                                                             *
;*   Function Uses Regs : T0,AR0,XAR0,AR1,XAR1,AR2,AR3,XAR3,SP,CARRY,TC1,M40,  *
;*                        SATA,SATD,RDM,FRCT,SMUL                              *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 6 words                                              *
;*                        (1 return address/alignment)                         *
;*                        (5 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_symbol_extraction:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-5, SP
	.dwcfi	cfa_offset, 6
$C$DW$64	.dwtag  DW_TAG_variable, DW_AT_name("inData")
	.dwattr $C$DW$64, DW_AT_TI_symbol_name("_inData")
	.dwattr $C$DW$64, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$64, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$65	.dwtag  DW_TAG_variable, DW_AT_name("outData")
	.dwattr $C$DW$65, DW_AT_TI_symbol_name("_outData")
	.dwattr $C$DW$65, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$65, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$66	.dwtag  DW_TAG_variable, DW_AT_name("i")
	.dwattr $C$DW$66, DW_AT_TI_symbol_name("_i")
	.dwattr $C$DW$66, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$66, DW_AT_location[DW_OP_bregx 0x24 4]
        MOV XAR1, dbl(*SP(#2))
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "../main.c",line 152,column 10,is_stmt
        MOV #0, *SP(#4) ; |152| 
	.dwpsn	file "../main.c",line 153,column 6,is_stmt
        MOV #0, *SP(#4) ; |153| 
	.dwpsn	file "../main.c",line 153,column 10,is_stmt
        MOV #768, AR2 ; |153| 
        MOV *SP(#4), AR1 ; |153| 
        CMP AR1 >= AR2, TC1 ; |153| 
        BCC $C$L12,TC1 ; |153| 
                                        ; branchcc occurs ; |153| 
$C$L9:    
$C$DW$L$_symbol_extraction$2$B:
	.dwpsn	file "../main.c",line 154,column 3,is_stmt
        MOV AR1, T0
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(T0), AR1 ; |154| 
        BCC $C$L10,AR1 != #0 ; |154| 
                                        ; branchcc occurs ; |154| 
$C$DW$L$_symbol_extraction$2$E:
$C$DW$L$_symbol_extraction$3$B:
	.dwpsn	file "../main.c",line 155,column 4,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV #-1000, *AR3(T0) ; |155| 
	.dwpsn	file "../main.c",line 156,column 3,is_stmt
        B $C$L11  ; |156| 
                                        ; branch occurs ; |156| 
$C$DW$L$_symbol_extraction$3$E:
$C$L10:    
$C$DW$L$_symbol_extraction$4$B:
	.dwpsn	file "../main.c",line 157,column 4,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV #1000, *AR3(T0) ; |157| 
$C$DW$L$_symbol_extraction$4$E:
$C$L11:    
$C$DW$L$_symbol_extraction$5$B:
	.dwpsn	file "../main.c",line 153,column 19,is_stmt
        ADD #1, *SP(#4) ; |153| 
	.dwpsn	file "../main.c",line 153,column 10,is_stmt
        MOV *SP(#4), AR1 ; |153| 
        CMP AR1 < AR2, TC1 ; |153| 
        BCC $C$L9,TC1 ; |153| 
                                        ; branchcc occurs ; |153| 
$C$DW$L$_symbol_extraction$5$E:
	.dwpsn	file "../main.c",line 160,column 1,is_stmt
$C$L12:    
        AADD #5, SP
	.dwcfi	cfa_offset, 1
$C$DW$67	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$67, DW_AT_low_pc(0x00)
	.dwattr $C$DW$67, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$68	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$68, DW_AT_name("C:\Users\bacon\OneDrive\workspace_v6_1\PAM_project\Debug\main.asm:$C$L9:1:1717080075")
	.dwattr $C$DW$68, DW_AT_TI_begin_file("../main.c")
	.dwattr $C$DW$68, DW_AT_TI_begin_line(0x99)
	.dwattr $C$DW$68, DW_AT_TI_end_line(0x9f)
$C$DW$69	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$69, DW_AT_low_pc($C$DW$L$_symbol_extraction$2$B)
	.dwattr $C$DW$69, DW_AT_high_pc($C$DW$L$_symbol_extraction$2$E)
$C$DW$70	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$70, DW_AT_low_pc($C$DW$L$_symbol_extraction$3$B)
	.dwattr $C$DW$70, DW_AT_high_pc($C$DW$L$_symbol_extraction$3$E)
$C$DW$71	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$71, DW_AT_low_pc($C$DW$L$_symbol_extraction$4$B)
	.dwattr $C$DW$71, DW_AT_high_pc($C$DW$L$_symbol_extraction$4$E)
$C$DW$72	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$72, DW_AT_low_pc($C$DW$L$_symbol_extraction$5$B)
	.dwattr $C$DW$72, DW_AT_high_pc($C$DW$L$_symbol_extraction$5$E)
	.dwendtag $C$DW$68

	.dwattr $C$DW$61, DW_AT_TI_end_file("../main.c")
	.dwattr $C$DW$61, DW_AT_TI_end_line(0xa0)
	.dwattr $C$DW$61, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$61

	.sect	".text"
	.global	_zeroPadding

$C$DW$73	.dwtag  DW_TAG_subprogram, DW_AT_name("zeroPadding")
	.dwattr $C$DW$73, DW_AT_low_pc(_zeroPadding)
	.dwattr $C$DW$73, DW_AT_high_pc(0x00)
	.dwattr $C$DW$73, DW_AT_TI_symbol_name("_zeroPadding")
	.dwattr $C$DW$73, DW_AT_external
	.dwattr $C$DW$73, DW_AT_TI_begin_file("../main.c")
	.dwattr $C$DW$73, DW_AT_TI_begin_line(0xa2)
	.dwattr $C$DW$73, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$73, DW_AT_TI_max_frame_size(0x08)
	.dwpsn	file "../main.c",line 162,column 51,is_stmt,address _zeroPadding

	.dwfde $C$DW$CIE, _zeroPadding
$C$DW$74	.dwtag  DW_TAG_formal_parameter, DW_AT_name("inData")
	.dwattr $C$DW$74, DW_AT_TI_symbol_name("_inData")
	.dwattr $C$DW$74, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$74, DW_AT_location[DW_OP_reg17]
$C$DW$75	.dwtag  DW_TAG_formal_parameter, DW_AT_name("outData")
	.dwattr $C$DW$75, DW_AT_TI_symbol_name("_outData")
	.dwattr $C$DW$75, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$75, DW_AT_location[DW_OP_reg19]
;*******************************************************************************
;* FUNCTION NAME: zeroPadding                                                  *
;*                                                                             *
;*   Function Uses Regs : T0,AR0,XAR0,AR1,XAR1,AR2,XAR2,AR3,XAR3,SP,CARRY,TC1, *
;*                        M40,SATA,SATD,RDM,FRCT,SMUL                          *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 8 words                                              *
;*                        (1 return address/alignment)                         *
;*                        (7 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_zeroPadding:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-7, SP
	.dwcfi	cfa_offset, 8
$C$DW$76	.dwtag  DW_TAG_variable, DW_AT_name("inData")
	.dwattr $C$DW$76, DW_AT_TI_symbol_name("_inData")
	.dwattr $C$DW$76, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$76, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$77	.dwtag  DW_TAG_variable, DW_AT_name("outData")
	.dwattr $C$DW$77, DW_AT_TI_symbol_name("_outData")
	.dwattr $C$DW$77, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$77, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$78	.dwtag  DW_TAG_variable, DW_AT_name("i")
	.dwattr $C$DW$78, DW_AT_TI_symbol_name("_i")
	.dwattr $C$DW$78, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$78, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$79	.dwtag  DW_TAG_variable, DW_AT_name("j")
	.dwattr $C$DW$79, DW_AT_TI_symbol_name("_j")
	.dwattr $C$DW$79, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$79, DW_AT_location[DW_OP_bregx 0x24 5]
$C$DW$80	.dwtag  DW_TAG_variable, DW_AT_name("k")
	.dwattr $C$DW$80, DW_AT_TI_symbol_name("_k")
	.dwattr $C$DW$80, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$80, DW_AT_location[DW_OP_bregx 0x24 6]
        MOV XAR1, dbl(*SP(#2))
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "../main.c",line 163,column 10,is_stmt
        MOV #0, *SP(#4) ; |163| 
	.dwpsn	file "../main.c",line 164,column 10,is_stmt
        MOV #0, *SP(#5) ; |164| 
	.dwpsn	file "../main.c",line 165,column 10,is_stmt
        MOV #0, *SP(#6) ; |165| 
	.dwpsn	file "../main.c",line 166,column 8,is_stmt
        MOV #768, AR2 ; |166| 
        MOV *SP(#4), AR1 ; |166| 
        CMP AR1 >= AR2, TC1 ; |166| 
        BCC $C$L16,TC1 ; |166| 
                                        ; branchcc occurs ; |166| 
$C$L13:    
$C$DW$L$_zeroPadding$2$B:
	.dwpsn	file "../main.c",line 167,column 3,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV AR1, T0
        MOV *SP(#5), AR1 ; |167| 
        MOV dbl(*SP(#0)), XAR2
        AADD AR1, AR3 ; |167| 
        MOV *AR2(T0), *AR3 ; |167| 
	.dwpsn	file "../main.c",line 168,column 3,is_stmt
        ADD #1, *SP(#4) ; |168| 
	.dwpsn	file "../main.c",line 169,column 3,is_stmt
        ADD #1, *SP(#5) ; |169| 
	.dwpsn	file "../main.c",line 170,column 7,is_stmt
        MOV #0, *SP(#6) ; |170| 
	.dwpsn	file "../main.c",line 170,column 11,is_stmt

        MOV *SP(#6), AR1 ; |170| 
||      MOV #9, AR2

        CMP AR1 >= AR2, TC1 ; |170| 
        BCC $C$L15,TC1 ; |170| 
                                        ; branchcc occurs ; |170| 
$C$DW$L$_zeroPadding$2$E:
$C$L14:    
$C$DW$L$_zeroPadding$3$B:
	.dwpsn	file "../main.c",line 171,column 4,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *SP(#5), T0 ; |171| 
        MOV #0, *AR3(T0) ; |171| 
	.dwpsn	file "../main.c",line 172,column 4,is_stmt
        ADD #1, *SP(#5) ; |172| 
	.dwpsn	file "../main.c",line 170,column 15,is_stmt
        ADD #1, *SP(#6) ; |170| 
	.dwpsn	file "../main.c",line 170,column 11,is_stmt
        MOV *SP(#6), AR1 ; |170| 
        CMP AR1 < AR2, TC1 ; |170| 
        BCC $C$L14,TC1 ; |170| 
                                        ; branchcc occurs ; |170| 
$C$DW$L$_zeroPadding$3$E:
$C$L15:    
$C$DW$L$_zeroPadding$4$B:
	.dwpsn	file "../main.c",line 166,column 8,is_stmt
        MOV #768, AR2 ; |166| 
        MOV *SP(#4), AR1 ; |166| 
        CMP AR1 < AR2, TC1 ; |166| 
        BCC $C$L13,TC1 ; |166| 
                                        ; branchcc occurs ; |166| 
$C$DW$L$_zeroPadding$4$E:
	.dwpsn	file "../main.c",line 175,column 1,is_stmt
$C$L16:    
        AADD #7, SP
	.dwcfi	cfa_offset, 1
$C$DW$81	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$81, DW_AT_low_pc(0x00)
	.dwattr $C$DW$81, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$82	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$82, DW_AT_name("C:\Users\bacon\OneDrive\workspace_v6_1\PAM_project\Debug\main.asm:$C$L13:1:1717080075")
	.dwattr $C$DW$82, DW_AT_TI_begin_file("../main.c")
	.dwattr $C$DW$82, DW_AT_TI_begin_line(0xa6)
	.dwattr $C$DW$82, DW_AT_TI_end_line(0xae)
$C$DW$83	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$83, DW_AT_low_pc($C$DW$L$_zeroPadding$2$B)
	.dwattr $C$DW$83, DW_AT_high_pc($C$DW$L$_zeroPadding$2$E)
$C$DW$84	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$84, DW_AT_low_pc($C$DW$L$_zeroPadding$4$B)
	.dwattr $C$DW$84, DW_AT_high_pc($C$DW$L$_zeroPadding$4$E)

$C$DW$85	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$85, DW_AT_name("C:\Users\bacon\OneDrive\workspace_v6_1\PAM_project\Debug\main.asm:$C$L14:2:1717080075")
	.dwattr $C$DW$85, DW_AT_TI_begin_file("../main.c")
	.dwattr $C$DW$85, DW_AT_TI_begin_line(0xaa)
	.dwattr $C$DW$85, DW_AT_TI_end_line(0xad)
$C$DW$86	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$86, DW_AT_low_pc($C$DW$L$_zeroPadding$3$B)
	.dwattr $C$DW$86, DW_AT_high_pc($C$DW$L$_zeroPadding$3$E)
	.dwendtag $C$DW$85

	.dwendtag $C$DW$82

	.dwattr $C$DW$73, DW_AT_TI_end_file("../main.c")
	.dwattr $C$DW$73, DW_AT_TI_end_line(0xaf)
	.dwattr $C$DW$73, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$73

	.sect	".text"
	.global	_downSample

$C$DW$87	.dwtag  DW_TAG_subprogram, DW_AT_name("downSample")
	.dwattr $C$DW$87, DW_AT_low_pc(_downSample)
	.dwattr $C$DW$87, DW_AT_high_pc(0x00)
	.dwattr $C$DW$87, DW_AT_TI_symbol_name("_downSample")
	.dwattr $C$DW$87, DW_AT_external
	.dwattr $C$DW$87, DW_AT_TI_begin_file("../main.c")
	.dwattr $C$DW$87, DW_AT_TI_begin_line(0xb1)
	.dwattr $C$DW$87, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$87, DW_AT_TI_max_frame_size(0x08)
	.dwpsn	file "../main.c",line 177,column 50,is_stmt,address _downSample

	.dwfde $C$DW$CIE, _downSample
$C$DW$88	.dwtag  DW_TAG_formal_parameter, DW_AT_name("inData")
	.dwattr $C$DW$88, DW_AT_TI_symbol_name("_inData")
	.dwattr $C$DW$88, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$88, DW_AT_location[DW_OP_reg17]
$C$DW$89	.dwtag  DW_TAG_formal_parameter, DW_AT_name("outData")
	.dwattr $C$DW$89, DW_AT_TI_symbol_name("_outData")
	.dwattr $C$DW$89, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$89, DW_AT_location[DW_OP_reg19]
;*******************************************************************************
;* FUNCTION NAME: downSample                                                   *
;*                                                                             *
;*   Function Uses Regs : T0,AR0,XAR0,AR1,XAR1,AR2,AR3,XAR3,SP,CARRY,TC1,M40,  *
;*                        SATA,SATD,RDM,FRCT,SMUL                              *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 8 words                                              *
;*                        (1 return address/alignment)                         *
;*                        (7 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_downSample:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-7, SP
	.dwcfi	cfa_offset, 8
$C$DW$90	.dwtag  DW_TAG_variable, DW_AT_name("inData")
	.dwattr $C$DW$90, DW_AT_TI_symbol_name("_inData")
	.dwattr $C$DW$90, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$90, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$91	.dwtag  DW_TAG_variable, DW_AT_name("outData")
	.dwattr $C$DW$91, DW_AT_TI_symbol_name("_outData")
	.dwattr $C$DW$91, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$91, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$92	.dwtag  DW_TAG_variable, DW_AT_name("i")
	.dwattr $C$DW$92, DW_AT_TI_symbol_name("_i")
	.dwattr $C$DW$92, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$92, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$93	.dwtag  DW_TAG_variable, DW_AT_name("j")
	.dwattr $C$DW$93, DW_AT_TI_symbol_name("_j")
	.dwattr $C$DW$93, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$93, DW_AT_location[DW_OP_bregx 0x24 5]
$C$DW$94	.dwtag  DW_TAG_variable, DW_AT_name("k")
	.dwattr $C$DW$94, DW_AT_TI_symbol_name("_k")
	.dwattr $C$DW$94, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$94, DW_AT_location[DW_OP_bregx 0x24 6]
        MOV XAR1, dbl(*SP(#2))
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "../main.c",line 178,column 10,is_stmt
        MOV #0, *SP(#4) ; |178| 
	.dwpsn	file "../main.c",line 179,column 10,is_stmt
        MOV #60, *SP(#5) ; |179| 
	.dwpsn	file "../main.c",line 180,column 10,is_stmt
        MOV #0, *SP(#6) ; |180| 
	.dwpsn	file "../main.c",line 181,column 8,is_stmt
        MOV #768, AR2 ; |181| 
        MOV *SP(#4), AR1 ; |181| 
        CMP AR1 >= AR2, TC1 ; |181| 
        BCC $C$L22,TC1 ; |181| 
                                        ; branchcc occurs ; |181| 
$C$L17:    
$C$DW$L$_downSample$2$B:
	.dwpsn	file "../main.c",line 182,column 3,is_stmt
        MOV *SP(#5), T0 ; |182| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(T0), AR1 ; |182| 
        BCC $C$L18,AR1 <= #0 ; |182| 
                                        ; branchcc occurs ; |182| 
$C$DW$L$_downSample$2$E:
$C$DW$L$_downSample$3$B:
	.dwpsn	file "../main.c",line 183,column 4,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *SP(#4), T0 ; |183| 
        MOV #1, *AR3(T0) ; |183| 
	.dwpsn	file "../main.c",line 184,column 3,is_stmt
        B $C$L19  ; |184| 
                                        ; branch occurs ; |184| 
$C$DW$L$_downSample$3$E:
$C$L18:    
$C$DW$L$_downSample$4$B:
	.dwpsn	file "../main.c",line 185,column 4,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *SP(#4), T0 ; |185| 
        MOV #0, *AR3(T0) ; |185| 
$C$DW$L$_downSample$4$E:
$C$L19:    
$C$DW$L$_downSample$5$B:
	.dwpsn	file "../main.c",line 188,column 3,is_stmt
        ADD #1, *SP(#4) ; |188| 
	.dwpsn	file "../main.c",line 189,column 7,is_stmt
        MOV #0, *SP(#6) ; |189| 
	.dwpsn	file "../main.c",line 189,column 11,is_stmt

        MOV *SP(#6), AR1 ; |189| 
||      MOV #10, AR2

        CMP AR1 >= AR2, TC1 ; |189| 
        BCC $C$L21,TC1 ; |189| 
                                        ; branchcc occurs ; |189| 
$C$DW$L$_downSample$5$E:
$C$L20:    
$C$DW$L$_downSample$6$B:
	.dwpsn	file "../main.c",line 190,column 4,is_stmt
        ADD #1, *SP(#5) ; |190| 
	.dwpsn	file "../main.c",line 189,column 16,is_stmt
        ADD #1, *SP(#6) ; |189| 
	.dwpsn	file "../main.c",line 189,column 11,is_stmt
        MOV *SP(#6), AR1 ; |189| 
        CMP AR1 < AR2, TC1 ; |189| 
        BCC $C$L20,TC1 ; |189| 
                                        ; branchcc occurs ; |189| 
$C$DW$L$_downSample$6$E:
$C$L21:    
$C$DW$L$_downSample$7$B:
	.dwpsn	file "../main.c",line 181,column 8,is_stmt
        MOV #768, AR2 ; |181| 
        MOV *SP(#4), AR1 ; |181| 
        CMP AR1 < AR2, TC1 ; |181| 
        BCC $C$L17,TC1 ; |181| 
                                        ; branchcc occurs ; |181| 
$C$DW$L$_downSample$7$E:
	.dwpsn	file "../main.c",line 193,column 1,is_stmt
$C$L22:    
        AADD #7, SP
	.dwcfi	cfa_offset, 1
$C$DW$95	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$95, DW_AT_low_pc(0x00)
	.dwattr $C$DW$95, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$96	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$96, DW_AT_name("C:\Users\bacon\OneDrive\workspace_v6_1\PAM_project\Debug\main.asm:$C$L17:1:1717080075")
	.dwattr $C$DW$96, DW_AT_TI_begin_file("../main.c")
	.dwattr $C$DW$96, DW_AT_TI_begin_line(0xb5)
	.dwattr $C$DW$96, DW_AT_TI_end_line(0xc0)
$C$DW$97	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$97, DW_AT_low_pc($C$DW$L$_downSample$2$B)
	.dwattr $C$DW$97, DW_AT_high_pc($C$DW$L$_downSample$2$E)
$C$DW$98	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$98, DW_AT_low_pc($C$DW$L$_downSample$3$B)
	.dwattr $C$DW$98, DW_AT_high_pc($C$DW$L$_downSample$3$E)
$C$DW$99	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$99, DW_AT_low_pc($C$DW$L$_downSample$4$B)
	.dwattr $C$DW$99, DW_AT_high_pc($C$DW$L$_downSample$4$E)
$C$DW$100	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$100, DW_AT_low_pc($C$DW$L$_downSample$5$B)
	.dwattr $C$DW$100, DW_AT_high_pc($C$DW$L$_downSample$5$E)
$C$DW$101	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$101, DW_AT_low_pc($C$DW$L$_downSample$7$B)
	.dwattr $C$DW$101, DW_AT_high_pc($C$DW$L$_downSample$7$E)

$C$DW$102	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$102, DW_AT_name("C:\Users\bacon\OneDrive\workspace_v6_1\PAM_project\Debug\main.asm:$C$L20:2:1717080075")
	.dwattr $C$DW$102, DW_AT_TI_begin_file("../main.c")
	.dwattr $C$DW$102, DW_AT_TI_begin_line(0xbd)
	.dwattr $C$DW$102, DW_AT_TI_end_line(0xbf)
$C$DW$103	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$103, DW_AT_low_pc($C$DW$L$_downSample$6$B)
	.dwattr $C$DW$103, DW_AT_high_pc($C$DW$L$_downSample$6$E)
	.dwendtag $C$DW$102

	.dwendtag $C$DW$96

	.dwattr $C$DW$87, DW_AT_TI_end_file("../main.c")
	.dwattr $C$DW$87, DW_AT_TI_end_line(0xc1)
	.dwattr $C$DW$87, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$87

	.sect	".text"
	.global	_number_reconstruction

$C$DW$104	.dwtag  DW_TAG_subprogram, DW_AT_name("number_reconstruction")
	.dwattr $C$DW$104, DW_AT_low_pc(_number_reconstruction)
	.dwattr $C$DW$104, DW_AT_high_pc(0x00)
	.dwattr $C$DW$104, DW_AT_TI_symbol_name("_number_reconstruction")
	.dwattr $C$DW$104, DW_AT_external
	.dwattr $C$DW$104, DW_AT_TI_begin_file("../main.c")
	.dwattr $C$DW$104, DW_AT_TI_begin_line(0xc4)
	.dwattr $C$DW$104, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$104, DW_AT_TI_max_frame_size(0x08)
	.dwpsn	file "../main.c",line 196,column 61,is_stmt,address _number_reconstruction

	.dwfde $C$DW$CIE, _number_reconstruction
$C$DW$105	.dwtag  DW_TAG_formal_parameter, DW_AT_name("inData")
	.dwattr $C$DW$105, DW_AT_TI_symbol_name("_inData")
	.dwattr $C$DW$105, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$105, DW_AT_location[DW_OP_reg17]
$C$DW$106	.dwtag  DW_TAG_formal_parameter, DW_AT_name("outData")
	.dwattr $C$DW$106, DW_AT_TI_symbol_name("_outData")
	.dwattr $C$DW$106, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$106, DW_AT_location[DW_OP_reg19]
;*******************************************************************************
;* FUNCTION NAME: number_reconstruction                                        *
;*                                                                             *
;*   Function Uses Regs : AC0,AC1,T0,T1,AR0,XAR0,AR1,XAR1,AR2,AR3,XAR3,SP,     *
;*                        CARRY,TC1,M40,SATA,SATD,RDM,FRCT,SMUL                *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 8 words                                              *
;*                        (1 return address/alignment)                         *
;*                        (7 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_number_reconstruction:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-7, SP
	.dwcfi	cfa_offset, 8
$C$DW$107	.dwtag  DW_TAG_variable, DW_AT_name("inData")
	.dwattr $C$DW$107, DW_AT_TI_symbol_name("_inData")
	.dwattr $C$DW$107, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$107, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$108	.dwtag  DW_TAG_variable, DW_AT_name("outData")
	.dwattr $C$DW$108, DW_AT_TI_symbol_name("_outData")
	.dwattr $C$DW$108, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$108, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$109	.dwtag  DW_TAG_variable, DW_AT_name("i")
	.dwattr $C$DW$109, DW_AT_TI_symbol_name("_i")
	.dwattr $C$DW$109, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$109, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$110	.dwtag  DW_TAG_variable, DW_AT_name("j")
	.dwattr $C$DW$110, DW_AT_TI_symbol_name("_j")
	.dwattr $C$DW$110, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$110, DW_AT_location[DW_OP_bregx 0x24 5]
$C$DW$111	.dwtag  DW_TAG_variable, DW_AT_name("temp")
	.dwattr $C$DW$111, DW_AT_TI_symbol_name("_temp")
	.dwattr $C$DW$111, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$111, DW_AT_location[DW_OP_bregx 0x24 6]
        MOV XAR1, dbl(*SP(#2))
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "../main.c",line 197,column 10,is_stmt
        MOV #0, *SP(#4) ; |197| 
	.dwpsn	file "../main.c",line 198,column 10,is_stmt
        MOV #0, *SP(#5) ; |198| 
	.dwpsn	file "../main.c",line 199,column 10,is_stmt
        MOV #0, *SP(#6) ; |199| 
	.dwpsn	file "../main.c",line 200,column 6,is_stmt
        MOV #0, *SP(#4) ; |200| 
	.dwpsn	file "../main.c",line 200,column 10,is_stmt
        MOV #768, AR2 ; |200| 
        MOV *SP(#4), AR1 ; |200| 
        CMP AR1 >= AR2, TC1 ; |200| 
        BCC $C$L26,TC1 ; |200| 
                                        ; branchcc occurs ; |200| 
$C$L23:    
$C$DW$L$_number_reconstruction$2$B:
	.dwpsn	file "../main.c",line 201,column 3,is_stmt
        MOV #0, *SP(#6) ; |201| 
	.dwpsn	file "../main.c",line 202,column 7,is_stmt
        MOV #0, *SP(#5) ; |202| 
	.dwpsn	file "../main.c",line 202,column 11,is_stmt
        MOV #16, AR2 ; |202| 
        MOV *SP(#5), AR1 ; |202| 
        CMP AR1 >= AR2, TC1 ; |202| 
        BCC $C$L25,TC1 ; |202| 
                                        ; branchcc occurs ; |202| 
$C$DW$L$_number_reconstruction$2$E:
$C$L24:    
$C$DW$L$_number_reconstruction$3$B:
	.dwpsn	file "../main.c",line 203,column 4,is_stmt
        MOV dbl(*SP(#0)), XAR3

        MOV AR1, AC0 ; |203| 
||      MOV *SP(#4), AC1 ; |203| 

        ADD AC1 << #4, AC0 ; |203| 
        MOV AC0, T0 ; |203| 

        MOV *AR3(T0), AC0 ; |203| 
||      MOV AR1, T1 ; |203| 

        SFTS AC0, T1, AC0 ; |203| 
        OR *SP(#6), AC0, AR1 ; |203| 
        MOV AR1, *SP(#6) ; |203| 
	.dwpsn	file "../main.c",line 202,column 16,is_stmt
        ADD #1, *SP(#5) ; |202| 
	.dwpsn	file "../main.c",line 202,column 11,is_stmt
        MOV *SP(#5), AR1 ; |202| 
        CMP AR1 < AR2, TC1 ; |202| 
        BCC $C$L24,TC1 ; |202| 
                                        ; branchcc occurs ; |202| 
$C$DW$L$_number_reconstruction$3$E:
$C$L25:    
$C$DW$L$_number_reconstruction$4$B:
	.dwpsn	file "../main.c",line 205,column 3,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *SP(#4), T0 ; |205| 
        MOV *SP(#6), AR1 ; |205| 
        MOV AR1, *AR3(T0) ; |205| 
	.dwpsn	file "../main.c",line 200,column 19,is_stmt
        ADD #1, *SP(#4) ; |200| 
	.dwpsn	file "../main.c",line 200,column 10,is_stmt
        MOV #768, AR2 ; |200| 
        MOV *SP(#4), AR1 ; |200| 
        CMP AR1 < AR2, TC1 ; |200| 
        BCC $C$L23,TC1 ; |200| 
                                        ; branchcc occurs ; |200| 
$C$DW$L$_number_reconstruction$4$E:
	.dwpsn	file "../main.c",line 207,column 1,is_stmt
$C$L26:    
        AADD #7, SP
	.dwcfi	cfa_offset, 1
$C$DW$112	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$112, DW_AT_low_pc(0x00)
	.dwattr $C$DW$112, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$113	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$113, DW_AT_name("C:\Users\bacon\OneDrive\workspace_v6_1\PAM_project\Debug\main.asm:$C$L23:1:1717080075")
	.dwattr $C$DW$113, DW_AT_TI_begin_file("../main.c")
	.dwattr $C$DW$113, DW_AT_TI_begin_line(0xc8)
	.dwattr $C$DW$113, DW_AT_TI_end_line(0xce)
$C$DW$114	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$114, DW_AT_low_pc($C$DW$L$_number_reconstruction$2$B)
	.dwattr $C$DW$114, DW_AT_high_pc($C$DW$L$_number_reconstruction$2$E)
$C$DW$115	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$115, DW_AT_low_pc($C$DW$L$_number_reconstruction$4$B)
	.dwattr $C$DW$115, DW_AT_high_pc($C$DW$L$_number_reconstruction$4$E)

$C$DW$116	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$116, DW_AT_name("C:\Users\bacon\OneDrive\workspace_v6_1\PAM_project\Debug\main.asm:$C$L24:2:1717080075")
	.dwattr $C$DW$116, DW_AT_TI_begin_file("../main.c")
	.dwattr $C$DW$116, DW_AT_TI_begin_line(0xca)
	.dwattr $C$DW$116, DW_AT_TI_end_line(0xcc)
$C$DW$117	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$117, DW_AT_low_pc($C$DW$L$_number_reconstruction$3$B)
	.dwattr $C$DW$117, DW_AT_high_pc($C$DW$L$_number_reconstruction$3$E)
	.dwendtag $C$DW$116

	.dwendtag $C$DW$113

	.dwattr $C$DW$104, DW_AT_TI_end_file("../main.c")
	.dwattr $C$DW$104, DW_AT_TI_end_line(0xcf)
	.dwattr $C$DW$104, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$104

	.sect	".text"
	.global	_noiser

$C$DW$118	.dwtag  DW_TAG_subprogram, DW_AT_name("noiser")
	.dwattr $C$DW$118, DW_AT_low_pc(_noiser)
	.dwattr $C$DW$118, DW_AT_high_pc(0x00)
	.dwattr $C$DW$118, DW_AT_TI_symbol_name("_noiser")
	.dwattr $C$DW$118, DW_AT_external
	.dwattr $C$DW$118, DW_AT_TI_begin_file("../main.c")
	.dwattr $C$DW$118, DW_AT_TI_begin_line(0xd1)
	.dwattr $C$DW$118, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$118, DW_AT_TI_max_frame_size(0x0e)
	.dwpsn	file "../main.c",line 209,column 59,is_stmt,address _noiser

	.dwfde $C$DW$CIE, _noiser
$C$DW$119	.dwtag  DW_TAG_formal_parameter, DW_AT_name("SNR")
	.dwattr $C$DW$119, DW_AT_TI_symbol_name("_SNR")
	.dwattr $C$DW$119, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$119, DW_AT_location[DW_OP_reg12]
$C$DW$120	.dwtag  DW_TAG_formal_parameter, DW_AT_name("inData")
	.dwattr $C$DW$120, DW_AT_TI_symbol_name("_inData")
	.dwattr $C$DW$120, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$120, DW_AT_location[DW_OP_reg17]
$C$DW$121	.dwtag  DW_TAG_formal_parameter, DW_AT_name("outData")
	.dwattr $C$DW$121, DW_AT_TI_symbol_name("_outData")
	.dwattr $C$DW$121, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$121, DW_AT_location[DW_OP_reg19]
;*******************************************************************************
;* FUNCTION NAME: noiser                                                       *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,T1,AR0,XAR0,AR1,XAR1,AR2,AR3,XAR3,*
;*                        SP,CARRY,TC1,M40,SATA,SATD,RDM,FRCT,SMUL             *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 14 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (12 local values)                                    *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_noiser:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-13, SP
	.dwcfi	cfa_offset, 14
$C$DW$122	.dwtag  DW_TAG_variable, DW_AT_name("SNR")
	.dwattr $C$DW$122, DW_AT_TI_symbol_name("_SNR")
	.dwattr $C$DW$122, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$122, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$123	.dwtag  DW_TAG_variable, DW_AT_name("inData")
	.dwattr $C$DW$123, DW_AT_TI_symbol_name("_inData")
	.dwattr $C$DW$123, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$123, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$124	.dwtag  DW_TAG_variable, DW_AT_name("outData")
	.dwattr $C$DW$124, DW_AT_TI_symbol_name("_outData")
	.dwattr $C$DW$124, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$124, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$125	.dwtag  DW_TAG_variable, DW_AT_name("sigPower")
	.dwattr $C$DW$125, DW_AT_TI_symbol_name("_sigPower")
	.dwattr $C$DW$125, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$125, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$126	.dwtag  DW_TAG_variable, DW_AT_name("noisePower")
	.dwattr $C$DW$126, DW_AT_TI_symbol_name("_noisePower")
	.dwattr $C$DW$126, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$126, DW_AT_location[DW_OP_bregx 0x24 8]
$C$DW$127	.dwtag  DW_TAG_variable, DW_AT_name("noise")
	.dwattr $C$DW$127, DW_AT_TI_symbol_name("_noise")
	.dwattr $C$DW$127, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$127, DW_AT_location[DW_OP_bregx 0x24 9]
$C$DW$128	.dwtag  DW_TAG_variable, DW_AT_name("i")
	.dwattr $C$DW$128, DW_AT_TI_symbol_name("_i")
	.dwattr $C$DW$128, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$128, DW_AT_location[DW_OP_bregx 0x24 10]
$C$DW$129	.dwtag  DW_TAG_variable, DW_AT_name("maxNoise")
	.dwattr $C$DW$129, DW_AT_TI_symbol_name("_maxNoise")
	.dwattr $C$DW$129, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$129, DW_AT_location[DW_OP_bregx 0x24 11]
        MOV XAR1, dbl(*SP(#4))
        MOV XAR0, dbl(*SP(#2))
        MOV T0, *SP(#0) ; |209| 
	.dwpsn	file "../main.c",line 211,column 10,is_stmt
        MOV #0, AC0 ; |211| 
        MOV AC0, dbl(*SP(#6)) ; |211| 
	.dwpsn	file "../main.c",line 212,column 10,is_stmt
        MOV #0, *SP(#8) ; |212| 
	.dwpsn	file "../main.c",line 213,column 10,is_stmt
        MOV #0, *SP(#9) ; |213| 
	.dwpsn	file "../main.c",line 214,column 10,is_stmt
        MOV #0, *SP(#10) ; |214| 
	.dwpsn	file "../main.c",line 216,column 6,is_stmt
        MOV #0, *SP(#10) ; |216| 
	.dwpsn	file "../main.c",line 216,column 10,is_stmt
        MOV #8448, AR2 ; |216| 
        MOV *SP(#10), AR1 ; |216| 
        CMP AR1 >= AR2, TC1 ; |216| 
        BCC $C$L28,TC1 ; |216| 
                                        ; branchcc occurs ; |216| 
$C$L27:    
$C$DW$L$_noiser$2$B:
	.dwpsn	file "../main.c",line 217,column 3,is_stmt
        MOV AR1, T0
        MOV dbl(*SP(#2)), XAR3
        BSET ST1_SATD

        MOV dbl(*SP(#6)), AC0 ; |217| 
||      BSET ST1_FRCT

        SQAM *AR3(T0), AC0, AC0 ; |217| 
        MOV AC0, dbl(*SP(#6)) ; |217| 
	.dwpsn	file "../main.c",line 216,column 22,is_stmt
        BCLR ST1_SATD
        ADD #1, *SP(#10) ; |216| 
	.dwpsn	file "../main.c",line 216,column 10,is_stmt
        MOV *SP(#10), AR1 ; |216| 
        CMP AR1 < AR2, TC1 ; |216| 
        BCC $C$L27,TC1 ; |216| 
                                        ; branchcc occurs ; |216| 
$C$DW$L$_noiser$2$E:
$C$L28:    
	.dwpsn	file "../main.c",line 219,column 2,is_stmt
        MOV dbl(*SP(#6)), AC0 ; |219| 

        MOV #8448, AC1 ; |219| 
||      BCLR ST1_FRCT

$C$DW$130	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$130, DW_AT_low_pc(0x00)
	.dwattr $C$DW$130, DW_AT_name("__divli")
	.dwattr $C$DW$130, DW_AT_TI_call
        CALL #__divli ; |219| 
                                        ; call occurs [#__divli] ; |219| 
        MOV AC0, dbl(*SP(#6)) ; |219| 
	.dwpsn	file "../main.c",line 221,column 10,is_stmt
        MOV #0, *SP(#11) ; |221| 
	.dwpsn	file "../main.c",line 223,column 2,is_stmt
        MOV dbl(*SP(#6)), AC0 ; |223| 
        MOV *SP(#0), AC1 ; |223| 
$C$DW$131	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$131, DW_AT_low_pc(0x00)
	.dwattr $C$DW$131, DW_AT_name("__divli")
	.dwattr $C$DW$131, DW_AT_TI_call
        CALL #__divli ; |223| 
                                        ; call occurs [#__divli] ; |223| 
        MOV AC0, *SP(#8) ; |223| 
	.dwpsn	file "../main.c",line 225,column 2,is_stmt
        MOV AC0, T0
$C$DW$132	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$132, DW_AT_low_pc(0x00)
	.dwattr $C$DW$132, DW_AT_name("__fltid")
	.dwattr $C$DW$132, DW_AT_TI_call

        CALL #__fltid ; |225| 
||      SFTL T0, #1 ; |225| 

                                        ; call occurs [#__fltid] ; |225| 
$C$DW$133	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$133, DW_AT_low_pc(0x00)
	.dwattr $C$DW$133, DW_AT_name("_sqrt")
	.dwattr $C$DW$133, DW_AT_TI_call
        CALL #_sqrt ; |225| 
                                        ; call occurs [#_sqrt] ; |225| 
$C$DW$134	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$134, DW_AT_low_pc(0x00)
	.dwattr $C$DW$134, DW_AT_name("__fixdi")
	.dwattr $C$DW$134, DW_AT_TI_call
        CALL #__fixdi ; |225| 
                                        ; call occurs [#__fixdi] ; |225| 
        MOV T0, *SP(#11) ; |225| 
	.dwpsn	file "../main.c",line 226,column 2,is_stmt
        MOV T0, AR1
        SFTL AR1, #1 ; |226| 
        MOV AR1, *SP(#11) ; |226| 
	.dwpsn	file "../main.c",line 228,column 6,is_stmt
        MOV #0, *SP(#10) ; |228| 
	.dwpsn	file "../main.c",line 228,column 10,is_stmt
        MOV #8448, AR2 ; |228| 
        MOV *SP(#10), AR1 ; |228| 
        CMP AR1 >= AR2, TC1 ; |228| 
        BCC $C$L30,TC1 ; |228| 
                                        ; branchcc occurs ; |228| 
$C$L29:    
$C$DW$L$_noiser$4$B:
	.dwpsn	file "../main.c",line 229,column 3,is_stmt
$C$DW$135	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$135, DW_AT_low_pc(0x00)
	.dwattr $C$DW$135, DW_AT_name("_rand")
	.dwattr $C$DW$135, DW_AT_TI_call
        CALL #_rand ; |229| 
                                        ; call occurs [#_rand] ; |229| 
        MOV *SP(#11), AR1 ; |229| 
        ADD #1, AR1, T1 ; |229| 
$C$DW$136	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$136, DW_AT_low_pc(0x00)
	.dwattr $C$DW$136, DW_AT_name("__remi")
	.dwattr $C$DW$136, DW_AT_TI_call
        CALL #__remi ; |229| 
                                        ; call occurs [#__remi] ; |229| 
        MOV T0, *SP(#9) ; |229| 
	.dwpsn	file "../main.c",line 230,column 3,is_stmt
        MOV *SP(#11), AR1 ; |230| 
        SUB AR1, *SP(#9), AR1 ; |230| 
        MOV AR1, *SP(#9) ; |230| 
	.dwpsn	file "../main.c",line 232,column 3,is_stmt
        MOV *SP(#10), T0 ; |232| 
        MOV dbl(*SP(#2)), XAR3
        ADD *AR3(T0), AR1, AR1 ; |232| 
        MOV dbl(*SP(#4)), XAR3
        MOV AR1, *AR3(T0) ; |232| 
	.dwpsn	file "../main.c",line 228,column 22,is_stmt
        ADD #1, *SP(#10) ; |228| 
	.dwpsn	file "../main.c",line 228,column 10,is_stmt
        MOV #8448, AR2 ; |228| 
        MOV *SP(#10), AR1 ; |228| 
        CMP AR1 < AR2, TC1 ; |228| 
        BCC $C$L29,TC1 ; |228| 
                                        ; branchcc occurs ; |228| 
$C$DW$L$_noiser$4$E:
	.dwpsn	file "../main.c",line 235,column 1,is_stmt
$C$L30:    
        AADD #13, SP
	.dwcfi	cfa_offset, 1
$C$DW$137	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$137, DW_AT_low_pc(0x00)
	.dwattr $C$DW$137, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$138	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$138, DW_AT_name("C:\Users\bacon\OneDrive\workspace_v6_1\PAM_project\Debug\main.asm:$C$L29:1:1717080075")
	.dwattr $C$DW$138, DW_AT_TI_begin_file("../main.c")
	.dwattr $C$DW$138, DW_AT_TI_begin_line(0xe4)
	.dwattr $C$DW$138, DW_AT_TI_end_line(0xe9)
$C$DW$139	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$139, DW_AT_low_pc($C$DW$L$_noiser$4$B)
	.dwattr $C$DW$139, DW_AT_high_pc($C$DW$L$_noiser$4$E)
	.dwendtag $C$DW$138


$C$DW$140	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$140, DW_AT_name("C:\Users\bacon\OneDrive\workspace_v6_1\PAM_project\Debug\main.asm:$C$L27:1:1717080075")
	.dwattr $C$DW$140, DW_AT_TI_begin_file("../main.c")
	.dwattr $C$DW$140, DW_AT_TI_begin_line(0xd8)
	.dwattr $C$DW$140, DW_AT_TI_end_line(0xda)
$C$DW$141	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$141, DW_AT_low_pc($C$DW$L$_noiser$2$B)
	.dwattr $C$DW$141, DW_AT_high_pc($C$DW$L$_noiser$2$E)
	.dwendtag $C$DW$140

	.dwattr $C$DW$118, DW_AT_TI_end_file("../main.c")
	.dwattr $C$DW$118, DW_AT_TI_end_line(0xeb)
	.dwattr $C$DW$118, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$118

	.sect	".text"
	.global	_error_detection

$C$DW$142	.dwtag  DW_TAG_subprogram, DW_AT_name("error_detection")
	.dwattr $C$DW$142, DW_AT_low_pc(_error_detection)
	.dwattr $C$DW$142, DW_AT_high_pc(0x00)
	.dwattr $C$DW$142, DW_AT_TI_symbol_name("_error_detection")
	.dwattr $C$DW$142, DW_AT_external
	.dwattr $C$DW$142, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$142, DW_AT_TI_begin_file("../main.c")
	.dwattr $C$DW$142, DW_AT_TI_begin_line(0xed)
	.dwattr $C$DW$142, DW_AT_TI_begin_column(0x09)
	.dwattr $C$DW$142, DW_AT_TI_max_frame_size(0x08)
	.dwpsn	file "../main.c",line 237,column 55,is_stmt,address _error_detection

	.dwfde $C$DW$CIE, _error_detection
$C$DW$143	.dwtag  DW_TAG_formal_parameter, DW_AT_name("TXSig")
	.dwattr $C$DW$143, DW_AT_TI_symbol_name("_TXSig")
	.dwattr $C$DW$143, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$143, DW_AT_location[DW_OP_reg17]
$C$DW$144	.dwtag  DW_TAG_formal_parameter, DW_AT_name("RXSig")
	.dwattr $C$DW$144, DW_AT_TI_symbol_name("_RXSig")
	.dwattr $C$DW$144, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$144, DW_AT_location[DW_OP_reg19]
;*******************************************************************************
;* FUNCTION NAME: error_detection                                              *
;*                                                                             *
;*   Function Uses Regs : T0,AR0,XAR0,AR1,XAR1,AR2,AR3,XAR3,SP,CARRY,TC1,M40,  *
;*                        SATA,SATD,RDM,FRCT,SMUL                              *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 8 words                                              *
;*                        (2 return address/alignment)                         *
;*                        (6 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_error_detection:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-7, SP
	.dwcfi	cfa_offset, 8
$C$DW$145	.dwtag  DW_TAG_variable, DW_AT_name("TXSig")
	.dwattr $C$DW$145, DW_AT_TI_symbol_name("_TXSig")
	.dwattr $C$DW$145, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$145, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$146	.dwtag  DW_TAG_variable, DW_AT_name("RXSig")
	.dwattr $C$DW$146, DW_AT_TI_symbol_name("_RXSig")
	.dwattr $C$DW$146, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$146, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$147	.dwtag  DW_TAG_variable, DW_AT_name("i")
	.dwattr $C$DW$147, DW_AT_TI_symbol_name("_i")
	.dwattr $C$DW$147, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$147, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$148	.dwtag  DW_TAG_variable, DW_AT_name("errors")
	.dwattr $C$DW$148, DW_AT_TI_symbol_name("_errors")
	.dwattr $C$DW$148, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$148, DW_AT_location[DW_OP_bregx 0x24 5]
        MOV XAR1, dbl(*SP(#2))
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "../main.c",line 238,column 10,is_stmt
        MOV #0, *SP(#4) ; |238| 
	.dwpsn	file "../main.c",line 239,column 10,is_stmt
        MOV #0, *SP(#5) ; |239| 
	.dwpsn	file "../main.c",line 240,column 6,is_stmt
        MOV #0, *SP(#4) ; |240| 
	.dwpsn	file "../main.c",line 240,column 10,is_stmt
        MOV #768, AR2 ; |240| 
        MOV *SP(#4), AR1 ; |240| 
        CMP AR1 >= AR2, TC1 ; |240| 
        BCC $C$L33,TC1 ; |240| 
                                        ; branchcc occurs ; |240| 
$C$L31:    
$C$DW$L$_error_detection$2$B:
	.dwpsn	file "../main.c",line 241,column 3,is_stmt
        MOV AR1, T0
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3(T0), AR1 ; |241| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(T0), AR2 ; |241| 
        CMP AR2 == AR1, TC1 ; |241| 
        BCC $C$L32,TC1 ; |241| 
                                        ; branchcc occurs ; |241| 
$C$DW$L$_error_detection$2$E:
$C$DW$L$_error_detection$3$B:
	.dwpsn	file "../main.c",line 242,column 4,is_stmt
        ADD #1, *SP(#5) ; |242| 
$C$DW$L$_error_detection$3$E:
$C$L32:    
$C$DW$L$_error_detection$4$B:
	.dwpsn	file "../main.c",line 240,column 19,is_stmt
        ADD #1, *SP(#4) ; |240| 
	.dwpsn	file "../main.c",line 240,column 10,is_stmt
        MOV #768, AR2 ; |240| 
        MOV *SP(#4), AR1 ; |240| 
        CMP AR1 < AR2, TC1 ; |240| 
        BCC $C$L31,TC1 ; |240| 
                                        ; branchcc occurs ; |240| 
$C$DW$L$_error_detection$4$E:
$C$L33:    
	.dwpsn	file "../main.c",line 245,column 2,is_stmt
        MOV *SP(#5), T0 ; |245| 
	.dwpsn	file "../main.c",line 246,column 1,is_stmt
        AADD #7, SP
	.dwcfi	cfa_offset, 1
$C$DW$149	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$149, DW_AT_low_pc(0x00)
	.dwattr $C$DW$149, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$150	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$150, DW_AT_name("C:\Users\bacon\OneDrive\workspace_v6_1\PAM_project\Debug\main.asm:$C$L31:1:1717080075")
	.dwattr $C$DW$150, DW_AT_TI_begin_file("../main.c")
	.dwattr $C$DW$150, DW_AT_TI_begin_line(0xf0)
	.dwattr $C$DW$150, DW_AT_TI_end_line(0xf4)
$C$DW$151	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$151, DW_AT_low_pc($C$DW$L$_error_detection$2$B)
	.dwattr $C$DW$151, DW_AT_high_pc($C$DW$L$_error_detection$2$E)
$C$DW$152	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$152, DW_AT_low_pc($C$DW$L$_error_detection$3$B)
	.dwattr $C$DW$152, DW_AT_high_pc($C$DW$L$_error_detection$3$E)
$C$DW$153	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$153, DW_AT_low_pc($C$DW$L$_error_detection$4$B)
	.dwattr $C$DW$153, DW_AT_high_pc($C$DW$L$_error_detection$4$E)
	.dwendtag $C$DW$150

	.dwattr $C$DW$142, DW_AT_TI_end_file("../main.c")
	.dwattr $C$DW$142, DW_AT_TI_end_line(0xf6)
	.dwattr $C$DW$142, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$142

;*******************************************************************************
;* FLOATING-POINT CONSTANTS                                                    *
;*******************************************************************************
	.sect	".const"
	.align	2
$C$FL1:	.xlong	0x44400000
	.align	2
$C$FL2:	.xlong	0x42c80000
;******************************************************************************
;* UNDEFINED EXTERNAL REFERENCES                                              *
;******************************************************************************
	.global	_myFir
	.global	_sqrt
	.global	_rand
	.global	__fltid
	.global	__divd
	.global	__mpyd
	.global	__divli
	.global	__fixdi
	.global	__remi

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
$C$DW$T$9	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$9, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$9, DW_AT_name("unsigned short")
	.dwattr $C$DW$T$9, DW_AT_byte_size(0x01)
$C$DW$T$10	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$10, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$10, DW_AT_name("int")
	.dwattr $C$DW$T$10, DW_AT_byte_size(0x01)
$C$DW$T$19	.dwtag  DW_TAG_typedef, DW_AT_name("int16_t")
	.dwattr $C$DW$T$19, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$19, DW_AT_language(DW_LANG_C)
$C$DW$T$20	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$20, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$20, DW_AT_address_class(0x17)
$C$DW$154	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$154, DW_AT_type(*$C$DW$T$20)
$C$DW$T$21	.dwtag  DW_TAG_TI_restrict_type
	.dwattr $C$DW$T$21, DW_AT_type(*$C$DW$154)

$C$DW$T$35	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$35, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$35, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$35, DW_AT_byte_size(0x3d)
$C$DW$155	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$155, DW_AT_upper_bound(0x3c)
	.dwendtag $C$DW$T$35


$C$DW$T$36	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$36, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$36, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$36, DW_AT_byte_size(0x30)
$C$DW$156	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$156, DW_AT_upper_bound(0x2f)
	.dwendtag $C$DW$T$36


$C$DW$T$37	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$37, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$37, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$37, DW_AT_byte_size(0x300)
$C$DW$157	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$157, DW_AT_upper_bound(0x2ff)
	.dwendtag $C$DW$T$37


$C$DW$T$38	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$38, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$38, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$38, DW_AT_byte_size(0x2100)
$C$DW$158	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$158, DW_AT_upper_bound(0x20ff)
	.dwendtag $C$DW$T$38

$C$DW$T$11	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$11, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$11, DW_AT_name("unsigned int")
	.dwattr $C$DW$T$11, DW_AT_byte_size(0x01)
$C$DW$T$12	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$12, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$12, DW_AT_name("long")
	.dwattr $C$DW$T$12, DW_AT_byte_size(0x02)
$C$DW$T$22	.dwtag  DW_TAG_typedef, DW_AT_name("int32_t")
	.dwattr $C$DW$T$22, DW_AT_type(*$C$DW$T$12)
	.dwattr $C$DW$T$22, DW_AT_language(DW_LANG_C)
$C$DW$T$13	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$13, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$13, DW_AT_name("unsigned long")
	.dwattr $C$DW$T$13, DW_AT_byte_size(0x02)
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
$C$DW$159	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$159, DW_AT_type(*$C$DW$T$16)
$C$DW$T$40	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$40, DW_AT_type(*$C$DW$159)
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

$C$DW$160	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC0")
	.dwattr $C$DW$160, DW_AT_location[DW_OP_reg0]
$C$DW$161	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC0")
	.dwattr $C$DW$161, DW_AT_location[DW_OP_reg1]
$C$DW$162	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC0_G")
	.dwattr $C$DW$162, DW_AT_location[DW_OP_reg2]
$C$DW$163	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC1")
	.dwattr $C$DW$163, DW_AT_location[DW_OP_reg3]
$C$DW$164	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC1")
	.dwattr $C$DW$164, DW_AT_location[DW_OP_reg4]
$C$DW$165	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC1_G")
	.dwattr $C$DW$165, DW_AT_location[DW_OP_reg5]
$C$DW$166	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC2")
	.dwattr $C$DW$166, DW_AT_location[DW_OP_reg6]
$C$DW$167	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC2")
	.dwattr $C$DW$167, DW_AT_location[DW_OP_reg7]
$C$DW$168	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC2_G")
	.dwattr $C$DW$168, DW_AT_location[DW_OP_reg8]
$C$DW$169	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC3")
	.dwattr $C$DW$169, DW_AT_location[DW_OP_reg9]
$C$DW$170	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC3")
	.dwattr $C$DW$170, DW_AT_location[DW_OP_reg10]
$C$DW$171	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC3_G")
	.dwattr $C$DW$171, DW_AT_location[DW_OP_reg11]
$C$DW$172	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T0")
	.dwattr $C$DW$172, DW_AT_location[DW_OP_reg12]
$C$DW$173	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T1")
	.dwattr $C$DW$173, DW_AT_location[DW_OP_reg13]
$C$DW$174	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T2")
	.dwattr $C$DW$174, DW_AT_location[DW_OP_reg14]
$C$DW$175	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T3")
	.dwattr $C$DW$175, DW_AT_location[DW_OP_reg15]
$C$DW$176	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR0")
	.dwattr $C$DW$176, DW_AT_location[DW_OP_reg16]
$C$DW$177	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR0")
	.dwattr $C$DW$177, DW_AT_location[DW_OP_reg17]
$C$DW$178	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR1")
	.dwattr $C$DW$178, DW_AT_location[DW_OP_reg18]
$C$DW$179	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR1")
	.dwattr $C$DW$179, DW_AT_location[DW_OP_reg19]
$C$DW$180	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR2")
	.dwattr $C$DW$180, DW_AT_location[DW_OP_reg20]
$C$DW$181	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR2")
	.dwattr $C$DW$181, DW_AT_location[DW_OP_reg21]
$C$DW$182	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR3")
	.dwattr $C$DW$182, DW_AT_location[DW_OP_reg22]
$C$DW$183	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR3")
	.dwattr $C$DW$183, DW_AT_location[DW_OP_reg23]
$C$DW$184	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR4")
	.dwattr $C$DW$184, DW_AT_location[DW_OP_reg24]
$C$DW$185	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR4")
	.dwattr $C$DW$185, DW_AT_location[DW_OP_reg25]
$C$DW$186	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR5")
	.dwattr $C$DW$186, DW_AT_location[DW_OP_reg26]
$C$DW$187	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR5")
	.dwattr $C$DW$187, DW_AT_location[DW_OP_reg27]
$C$DW$188	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR6")
	.dwattr $C$DW$188, DW_AT_location[DW_OP_reg28]
$C$DW$189	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR6")
	.dwattr $C$DW$189, DW_AT_location[DW_OP_reg29]
$C$DW$190	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR7")
	.dwattr $C$DW$190, DW_AT_location[DW_OP_reg30]
$C$DW$191	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR7")
	.dwattr $C$DW$191, DW_AT_location[DW_OP_reg31]
$C$DW$192	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("FP")
	.dwattr $C$DW$192, DW_AT_location[DW_OP_regx 0x20]
$C$DW$193	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XFP")
	.dwattr $C$DW$193, DW_AT_location[DW_OP_regx 0x21]
$C$DW$194	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("PC")
	.dwattr $C$DW$194, DW_AT_location[DW_OP_regx 0x22]
$C$DW$195	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SP")
	.dwattr $C$DW$195, DW_AT_location[DW_OP_regx 0x23]
$C$DW$196	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XSP")
	.dwattr $C$DW$196, DW_AT_location[DW_OP_regx 0x24]
$C$DW$197	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BKC")
	.dwattr $C$DW$197, DW_AT_location[DW_OP_regx 0x25]
$C$DW$198	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BK03")
	.dwattr $C$DW$198, DW_AT_location[DW_OP_regx 0x26]
$C$DW$199	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BK47")
	.dwattr $C$DW$199, DW_AT_location[DW_OP_regx 0x27]
$C$DW$200	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST0")
	.dwattr $C$DW$200, DW_AT_location[DW_OP_regx 0x28]
$C$DW$201	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST1")
	.dwattr $C$DW$201, DW_AT_location[DW_OP_regx 0x29]
$C$DW$202	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST2")
	.dwattr $C$DW$202, DW_AT_location[DW_OP_regx 0x2a]
$C$DW$203	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST3")
	.dwattr $C$DW$203, DW_AT_location[DW_OP_regx 0x2b]
$C$DW$204	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("MDP")
	.dwattr $C$DW$204, DW_AT_location[DW_OP_regx 0x2c]
$C$DW$205	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("MDP05")
	.dwattr $C$DW$205, DW_AT_location[DW_OP_regx 0x2d]
$C$DW$206	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("MDP67")
	.dwattr $C$DW$206, DW_AT_location[DW_OP_regx 0x2e]
$C$DW$207	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BRC0")
	.dwattr $C$DW$207, DW_AT_location[DW_OP_regx 0x2f]
$C$DW$208	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA0")
	.dwattr $C$DW$208, DW_AT_location[DW_OP_regx 0x30]
$C$DW$209	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA0_H")
	.dwattr $C$DW$209, DW_AT_location[DW_OP_regx 0x31]
$C$DW$210	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA0")
	.dwattr $C$DW$210, DW_AT_location[DW_OP_regx 0x32]
$C$DW$211	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA0_H")
	.dwattr $C$DW$211, DW_AT_location[DW_OP_regx 0x33]
$C$DW$212	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BRS1")
	.dwattr $C$DW$212, DW_AT_location[DW_OP_regx 0x34]
$C$DW$213	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BRC1")
	.dwattr $C$DW$213, DW_AT_location[DW_OP_regx 0x35]
$C$DW$214	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA1")
	.dwattr $C$DW$214, DW_AT_location[DW_OP_regx 0x36]
$C$DW$215	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA1_H")
	.dwattr $C$DW$215, DW_AT_location[DW_OP_regx 0x37]
$C$DW$216	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA1")
	.dwattr $C$DW$216, DW_AT_location[DW_OP_regx 0x38]
$C$DW$217	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA1_H")
	.dwattr $C$DW$217, DW_AT_location[DW_OP_regx 0x39]
$C$DW$218	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CSR")
	.dwattr $C$DW$218, DW_AT_location[DW_OP_regx 0x3a]
$C$DW$219	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RPTC")
	.dwattr $C$DW$219, DW_AT_location[DW_OP_regx 0x3b]
$C$DW$220	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CDP")
	.dwattr $C$DW$220, DW_AT_location[DW_OP_regx 0x3c]
$C$DW$221	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XCDP")
	.dwattr $C$DW$221, DW_AT_location[DW_OP_regx 0x3d]
$C$DW$222	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TRN0")
	.dwattr $C$DW$222, DW_AT_location[DW_OP_regx 0x3e]
$C$DW$223	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TRN1")
	.dwattr $C$DW$223, DW_AT_location[DW_OP_regx 0x3f]
$C$DW$224	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA01")
	.dwattr $C$DW$224, DW_AT_location[DW_OP_regx 0x40]
$C$DW$225	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA23")
	.dwattr $C$DW$225, DW_AT_location[DW_OP_regx 0x41]
$C$DW$226	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA45")
	.dwattr $C$DW$226, DW_AT_location[DW_OP_regx 0x42]
$C$DW$227	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA67")
	.dwattr $C$DW$227, DW_AT_location[DW_OP_regx 0x43]
$C$DW$228	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSAC")
	.dwattr $C$DW$228, DW_AT_location[DW_OP_regx 0x44]
$C$DW$229	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CARRY")
	.dwattr $C$DW$229, DW_AT_location[DW_OP_regx 0x45]
$C$DW$230	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TC1")
	.dwattr $C$DW$230, DW_AT_location[DW_OP_regx 0x46]
$C$DW$231	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TC2")
	.dwattr $C$DW$231, DW_AT_location[DW_OP_regx 0x47]
$C$DW$232	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("M40")
	.dwattr $C$DW$232, DW_AT_location[DW_OP_regx 0x48]
$C$DW$233	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SXMD")
	.dwattr $C$DW$233, DW_AT_location[DW_OP_regx 0x49]
$C$DW$234	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ARMS")
	.dwattr $C$DW$234, DW_AT_location[DW_OP_regx 0x4a]
$C$DW$235	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("C54CM")
	.dwattr $C$DW$235, DW_AT_location[DW_OP_regx 0x4b]
$C$DW$236	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SATA")
	.dwattr $C$DW$236, DW_AT_location[DW_OP_regx 0x4c]
$C$DW$237	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SATD")
	.dwattr $C$DW$237, DW_AT_location[DW_OP_regx 0x4d]
$C$DW$238	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RDM")
	.dwattr $C$DW$238, DW_AT_location[DW_OP_regx 0x4e]
$C$DW$239	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("FRCT")
	.dwattr $C$DW$239, DW_AT_location[DW_OP_regx 0x4f]
$C$DW$240	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SMUL")
	.dwattr $C$DW$240, DW_AT_location[DW_OP_regx 0x50]
$C$DW$241	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("INTM")
	.dwattr $C$DW$241, DW_AT_location[DW_OP_regx 0x51]
$C$DW$242	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR0LC")
	.dwattr $C$DW$242, DW_AT_location[DW_OP_regx 0x52]
$C$DW$243	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR1LC")
	.dwattr $C$DW$243, DW_AT_location[DW_OP_regx 0x53]
$C$DW$244	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR2LC")
	.dwattr $C$DW$244, DW_AT_location[DW_OP_regx 0x54]
$C$DW$245	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR3LC")
	.dwattr $C$DW$245, DW_AT_location[DW_OP_regx 0x55]
$C$DW$246	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR4LC")
	.dwattr $C$DW$246, DW_AT_location[DW_OP_regx 0x56]
$C$DW$247	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR5LC")
	.dwattr $C$DW$247, DW_AT_location[DW_OP_regx 0x57]
$C$DW$248	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR6LC")
	.dwattr $C$DW$248, DW_AT_location[DW_OP_regx 0x58]
$C$DW$249	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR7LC")
	.dwattr $C$DW$249, DW_AT_location[DW_OP_regx 0x59]
$C$DW$250	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CDPLC")
	.dwattr $C$DW$250, DW_AT_location[DW_OP_regx 0x5a]
$C$DW$251	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CIE_RETA")
	.dwattr $C$DW$251, DW_AT_location[DW_OP_regx 0x5b]
	.dwendtag $C$DW$CU

