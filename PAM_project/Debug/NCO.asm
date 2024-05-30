;*******************************************************************************
;* TMS320C55x C/C++ Codegen                                          PC v4.4.1 *
;* Date/Time created: Sun May 12 12:37:32 2024                                 *
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
	.dwattr $C$DW$CU, DW_AT_name("../NCO.c")
	.dwattr $C$DW$CU, DW_AT_producer("TMS320C55x C/C++ Codegen PC v4.4.1 Copyright (c) 1996-2012 Texas Instruments Incorporated")
	.dwattr $C$DW$CU, DW_AT_TI_version(0x01)
	.dwattr $C$DW$CU, DW_AT_comp_dir("C:\Users\golan\Downloads\ezdsp5535_v1_spring2024\projects\pam\Debug")
;******************************************************************************
;* CINIT RECORDS                                                              *
;******************************************************************************
	.sect	".cinit"
	.align	1
	.field  	$C$IR_1,16
	.field  	_data+0,24
	.field  	0,8
	.field	0,16			; _data[0] @ 0
	.field	804,16			; _data[1] @ 16
	.field	1608,16			; _data[2] @ 32
	.field	2410,16			; _data[3] @ 48
	.field	3212,16			; _data[4] @ 64
	.field	4011,16			; _data[5] @ 80
	.field	4808,16			; _data[6] @ 96
	.field	5602,16			; _data[7] @ 112
	.field	6393,16			; _data[8] @ 128
	.field	7179,16			; _data[9] @ 144
	.field	7962,16			; _data[10] @ 160
	.field	8739,16			; _data[11] @ 176
	.field	9512,16			; _data[12] @ 192
	.field	10278,16			; _data[13] @ 208
	.field	11039,16			; _data[14] @ 224
	.field	11793,16			; _data[15] @ 240
	.field	12539,16			; _data[16] @ 256
	.field	13279,16			; _data[17] @ 272
	.field	14010,16			; _data[18] @ 288
	.field	14732,16			; _data[19] @ 304
	.field	15446,16			; _data[20] @ 320
	.field	16151,16			; _data[21] @ 336
	.field	16846,16			; _data[22] @ 352
	.field	17530,16			; _data[23] @ 368
	.field	18204,16			; _data[24] @ 384
	.field	18868,16			; _data[25] @ 400
	.field	19519,16			; _data[26] @ 416
	.field	20159,16			; _data[27] @ 432
	.field	20787,16			; _data[28] @ 448
	.field	21403,16			; _data[29] @ 464
	.field	22005,16			; _data[30] @ 480
	.field	22594,16			; _data[31] @ 496
	.field	23170,16			; _data[32] @ 512
	.field	23731,16			; _data[33] @ 528
	.field	24279,16			; _data[34] @ 544
	.field	24811,16			; _data[35] @ 560
	.field	25329,16			; _data[36] @ 576
	.field	25832,16			; _data[37] @ 592
	.field	26319,16			; _data[38] @ 608
	.field	26790,16			; _data[39] @ 624
	.field	27245,16			; _data[40] @ 640
	.field	27683,16			; _data[41] @ 656
	.field	28105,16			; _data[42] @ 672
	.field	28510,16			; _data[43] @ 688
	.field	28898,16			; _data[44] @ 704
	.field	29268,16			; _data[45] @ 720
	.field	29621,16			; _data[46] @ 736
	.field	29956,16			; _data[47] @ 752
	.field	30273,16			; _data[48] @ 768
	.field	30571,16			; _data[49] @ 784
	.field	30852,16			; _data[50] @ 800
	.field	31113,16			; _data[51] @ 816
	.field	31356,16			; _data[52] @ 832
	.field	31580,16			; _data[53] @ 848
	.field	31785,16			; _data[54] @ 864
	.field	31971,16			; _data[55] @ 880
	.field	32137,16			; _data[56] @ 896
	.field	32285,16			; _data[57] @ 912
	.field	32412,16			; _data[58] @ 928
	.field	32521,16			; _data[59] @ 944
	.field	32609,16			; _data[60] @ 960
	.field	32678,16			; _data[61] @ 976
	.field	32728,16			; _data[62] @ 992
	.field	32757,16			; _data[63] @ 1008
	.field	32767,16			; _data[64] @ 1024
	.field	32757,16			; _data[65] @ 1040
	.field	32728,16			; _data[66] @ 1056
	.field	32678,16			; _data[67] @ 1072
	.field	32609,16			; _data[68] @ 1088
	.field	32521,16			; _data[69] @ 1104
	.field	32412,16			; _data[70] @ 1120
	.field	32285,16			; _data[71] @ 1136
	.field	32137,16			; _data[72] @ 1152
	.field	31971,16			; _data[73] @ 1168
	.field	31785,16			; _data[74] @ 1184
	.field	31580,16			; _data[75] @ 1200
	.field	31356,16			; _data[76] @ 1216
	.field	31113,16			; _data[77] @ 1232
	.field	30852,16			; _data[78] @ 1248
	.field	30571,16			; _data[79] @ 1264
	.field	30273,16			; _data[80] @ 1280
	.field	29956,16			; _data[81] @ 1296
	.field	29621,16			; _data[82] @ 1312
	.field	29268,16			; _data[83] @ 1328
	.field	28898,16			; _data[84] @ 1344
	.field	28510,16			; _data[85] @ 1360
	.field	28105,16			; _data[86] @ 1376
	.field	27683,16			; _data[87] @ 1392
	.field	27245,16			; _data[88] @ 1408
	.field	26790,16			; _data[89] @ 1424
	.field	26319,16			; _data[90] @ 1440
	.field	25832,16			; _data[91] @ 1456
	.field	25329,16			; _data[92] @ 1472
	.field	24811,16			; _data[93] @ 1488
	.field	24279,16			; _data[94] @ 1504
	.field	23731,16			; _data[95] @ 1520
	.field	23170,16			; _data[96] @ 1536
	.field	22594,16			; _data[97] @ 1552
	.field	22005,16			; _data[98] @ 1568
	.field	21403,16			; _data[99] @ 1584
	.field	20787,16			; _data[100] @ 1600
	.field	20159,16			; _data[101] @ 1616
	.field	19519,16			; _data[102] @ 1632
	.field	18868,16			; _data[103] @ 1648
	.field	18204,16			; _data[104] @ 1664
	.field	17530,16			; _data[105] @ 1680
	.field	16846,16			; _data[106] @ 1696
	.field	16151,16			; _data[107] @ 1712
	.field	15446,16			; _data[108] @ 1728
	.field	14732,16			; _data[109] @ 1744
	.field	14010,16			; _data[110] @ 1760
	.field	13279,16			; _data[111] @ 1776
	.field	12539,16			; _data[112] @ 1792
	.field	11793,16			; _data[113] @ 1808
	.field	11039,16			; _data[114] @ 1824
	.field	10278,16			; _data[115] @ 1840
	.field	9512,16			; _data[116] @ 1856
	.field	8739,16			; _data[117] @ 1872
	.field	7962,16			; _data[118] @ 1888
	.field	7179,16			; _data[119] @ 1904
	.field	6393,16			; _data[120] @ 1920
	.field	5602,16			; _data[121] @ 1936
	.field	4808,16			; _data[122] @ 1952
	.field	4011,16			; _data[123] @ 1968
	.field	3212,16			; _data[124] @ 1984
	.field	2410,16			; _data[125] @ 2000
	.field	1608,16			; _data[126] @ 2016
	.field	804,16			; _data[127] @ 2032
	.field	0,16			; _data[128] @ 2048
	.field	-804,16			; _data[129] @ 2064
	.field	-1608,16			; _data[130] @ 2080
	.field	-2410,16			; _data[131] @ 2096
	.field	-3212,16			; _data[132] @ 2112
	.field	-4011,16			; _data[133] @ 2128
	.field	-4808,16			; _data[134] @ 2144
	.field	-5602,16			; _data[135] @ 2160
	.field	-6393,16			; _data[136] @ 2176
	.field	-7179,16			; _data[137] @ 2192
	.field	-7962,16			; _data[138] @ 2208
	.field	-8739,16			; _data[139] @ 2224
	.field	-9512,16			; _data[140] @ 2240
	.field	-10278,16			; _data[141] @ 2256
	.field	-11039,16			; _data[142] @ 2272
	.field	-11793,16			; _data[143] @ 2288
	.field	-12539,16			; _data[144] @ 2304
	.field	-13279,16			; _data[145] @ 2320
	.field	-14010,16			; _data[146] @ 2336
	.field	-14732,16			; _data[147] @ 2352
	.field	-15446,16			; _data[148] @ 2368
	.field	-16151,16			; _data[149] @ 2384
	.field	-16846,16			; _data[150] @ 2400
	.field	-17530,16			; _data[151] @ 2416
	.field	-18204,16			; _data[152] @ 2432
	.field	-18868,16			; _data[153] @ 2448
	.field	-19519,16			; _data[154] @ 2464
	.field	-20159,16			; _data[155] @ 2480
	.field	-20787,16			; _data[156] @ 2496
	.field	-21403,16			; _data[157] @ 2512
	.field	-22005,16			; _data[158] @ 2528
	.field	-22594,16			; _data[159] @ 2544
	.field	-23170,16			; _data[160] @ 2560
	.field	-23731,16			; _data[161] @ 2576
	.field	-24279,16			; _data[162] @ 2592
	.field	-24811,16			; _data[163] @ 2608
	.field	-25329,16			; _data[164] @ 2624
	.field	-25832,16			; _data[165] @ 2640
	.field	-26319,16			; _data[166] @ 2656
	.field	-26790,16			; _data[167] @ 2672
	.field	-27245,16			; _data[168] @ 2688
	.field	-27683,16			; _data[169] @ 2704
	.field	-28105,16			; _data[170] @ 2720
	.field	-28510,16			; _data[171] @ 2736
	.field	-28898,16			; _data[172] @ 2752
	.field	-29268,16			; _data[173] @ 2768
	.field	-29621,16			; _data[174] @ 2784
	.field	-29956,16			; _data[175] @ 2800
	.field	-30273,16			; _data[176] @ 2816
	.field	-30571,16			; _data[177] @ 2832
	.field	-30852,16			; _data[178] @ 2848
	.field	-31113,16			; _data[179] @ 2864
	.field	-31356,16			; _data[180] @ 2880
	.field	-31580,16			; _data[181] @ 2896
	.field	-31785,16			; _data[182] @ 2912
	.field	-31971,16			; _data[183] @ 2928
	.field	-32137,16			; _data[184] @ 2944
	.field	-32285,16			; _data[185] @ 2960
	.field	-32412,16			; _data[186] @ 2976
	.field	-32521,16			; _data[187] @ 2992
	.field	-32609,16			; _data[188] @ 3008
	.field	-32678,16			; _data[189] @ 3024
	.field	-32728,16			; _data[190] @ 3040
	.field	-32757,16			; _data[191] @ 3056
	.field	-32767,16			; _data[192] @ 3072
	.field	-32757,16			; _data[193] @ 3088
	.field	-32728,16			; _data[194] @ 3104
	.field	-32678,16			; _data[195] @ 3120
	.field	-32609,16			; _data[196] @ 3136
	.field	-32521,16			; _data[197] @ 3152
	.field	-32412,16			; _data[198] @ 3168
	.field	-32285,16			; _data[199] @ 3184
	.field	-32137,16			; _data[200] @ 3200
	.field	-31971,16			; _data[201] @ 3216
	.field	-31785,16			; _data[202] @ 3232
	.field	-31580,16			; _data[203] @ 3248
	.field	-31356,16			; _data[204] @ 3264
	.field	-31113,16			; _data[205] @ 3280
	.field	-30852,16			; _data[206] @ 3296
	.field	-30571,16			; _data[207] @ 3312
	.field	-30273,16			; _data[208] @ 3328
	.field	-29956,16			; _data[209] @ 3344
	.field	-29621,16			; _data[210] @ 3360
	.field	-29268,16			; _data[211] @ 3376
	.field	-28898,16			; _data[212] @ 3392
	.field	-28510,16			; _data[213] @ 3408
	.field	-28105,16			; _data[214] @ 3424
	.field	-27683,16			; _data[215] @ 3440
	.field	-27245,16			; _data[216] @ 3456
	.field	-26790,16			; _data[217] @ 3472
	.field	-26319,16			; _data[218] @ 3488
	.field	-25832,16			; _data[219] @ 3504
	.field	-25329,16			; _data[220] @ 3520
	.field	-24811,16			; _data[221] @ 3536
	.field	-24279,16			; _data[222] @ 3552
	.field	-23731,16			; _data[223] @ 3568
	.field	-23170,16			; _data[224] @ 3584
	.field	-22594,16			; _data[225] @ 3600
	.field	-22005,16			; _data[226] @ 3616
	.field	-21403,16			; _data[227] @ 3632
	.field	-20787,16			; _data[228] @ 3648
	.field	-20159,16			; _data[229] @ 3664
	.field	-19519,16			; _data[230] @ 3680
	.field	-18868,16			; _data[231] @ 3696
	.field	-18204,16			; _data[232] @ 3712
	.field	-17530,16			; _data[233] @ 3728
	.field	-16846,16			; _data[234] @ 3744
	.field	-16151,16			; _data[235] @ 3760
	.field	-15446,16			; _data[236] @ 3776
	.field	-14732,16			; _data[237] @ 3792
	.field	-14010,16			; _data[238] @ 3808
	.field	-13279,16			; _data[239] @ 3824
	.field	-12539,16			; _data[240] @ 3840
	.field	-11793,16			; _data[241] @ 3856
	.field	-11039,16			; _data[242] @ 3872
	.field	-10278,16			; _data[243] @ 3888
	.field	-9512,16			; _data[244] @ 3904
	.field	-8739,16			; _data[245] @ 3920
	.field	-7962,16			; _data[246] @ 3936
	.field	-7179,16			; _data[247] @ 3952
	.field	-6393,16			; _data[248] @ 3968
	.field	-5602,16			; _data[249] @ 3984
	.field	-4808,16			; _data[250] @ 4000
	.field	-4011,16			; _data[251] @ 4016
	.field	-3212,16			; _data[252] @ 4032
	.field	-2410,16			; _data[253] @ 4048
	.field	-1608,16			; _data[254] @ 4064
	.field	-804,16			; _data[255] @ 4080
$C$IR_1:	.set	256

	.sect	".cinit"
	.align	1
	.field  	2,16
	.field  	_delta+0,24
	.field  	0,8
	.field	4473900,32			; _delta @ 0


$C$DW$1	.dwtag  DW_TAG_subprogram, DW_AT_name("AIC3204_output")
	.dwattr $C$DW$1, DW_AT_TI_symbol_name("_AIC3204_output")
	.dwattr $C$DW$1, DW_AT_declaration
	.dwattr $C$DW$1, DW_AT_external
$C$DW$2	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$2, DW_AT_type(*$C$DW$T$19)
	.dwendtag $C$DW$1

	.global	_data
	.bss	_data,256,0,0
$C$DW$3	.dwtag  DW_TAG_variable, DW_AT_name("data")
	.dwattr $C$DW$3, DW_AT_TI_symbol_name("_data")
	.dwattr $C$DW$3, DW_AT_location[DW_OP_addr _data]
	.dwattr $C$DW$3, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$3, DW_AT_external
	.global	_delta
	.bss	_delta,2,0,2
$C$DW$4	.dwtag  DW_TAG_variable, DW_AT_name("delta")
	.dwattr $C$DW$4, DW_AT_TI_symbol_name("_delta")
	.dwattr $C$DW$4, DW_AT_location[DW_OP_addr _delta]
	.dwattr $C$DW$4, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$4, DW_AT_external
;	C:\ti\ccsv6\tools\compiler\c5500_4.4.1\bin\acp55.exe -@C:\\Users\\golan\\AppData\\Local\\Temp\\7167212 
	.sect	".text"
	.global	_outputSample

$C$DW$5	.dwtag  DW_TAG_subprogram, DW_AT_name("outputSample")
	.dwattr $C$DW$5, DW_AT_low_pc(_outputSample)
	.dwattr $C$DW$5, DW_AT_high_pc(0x00)
	.dwattr $C$DW$5, DW_AT_TI_symbol_name("_outputSample")
	.dwattr $C$DW$5, DW_AT_external
	.dwattr $C$DW$5, DW_AT_TI_begin_file("../NCO.c")
	.dwattr $C$DW$5, DW_AT_TI_begin_line(0x1e)
	.dwattr $C$DW$5, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$5, DW_AT_TI_max_frame_size(0x06)
	.dwpsn	file "../NCO.c",line 30,column 49,is_stmt,address _outputSample

	.dwfde $C$DW$CIE, _outputSample
$C$DW$6	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pa")
	.dwattr $C$DW$6, DW_AT_TI_symbol_name("_pa")
	.dwattr $C$DW$6, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$6, DW_AT_location[DW_OP_reg17]
$C$DW$7	.dwtag  DW_TAG_formal_parameter, DW_AT_name("attenuation")
	.dwattr $C$DW$7, DW_AT_TI_symbol_name("_attenuation")
	.dwattr $C$DW$7, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$7, DW_AT_location[DW_OP_reg12]
;*******************************************************************************
;* FUNCTION NAME: outputSample                                                 *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,T0,T1,AR0,XAR0,AR1,AR2,AR3,XAR3,SP,CARRY,TC1,*
;*                        M40,SATA,SATD,RDM,FRCT,SMUL                          *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 6 words                                              *
;*                        (2 return address/alignment)                         *
;*                        (4 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_outputSample:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-5, SP
	.dwcfi	cfa_offset, 6
$C$DW$8	.dwtag  DW_TAG_variable, DW_AT_name("pa")
	.dwattr $C$DW$8, DW_AT_TI_symbol_name("_pa")
	.dwattr $C$DW$8, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$8, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$9	.dwtag  DW_TAG_variable, DW_AT_name("attenuation")
	.dwattr $C$DW$9, DW_AT_TI_symbol_name("_attenuation")
	.dwattr $C$DW$9, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$9, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$10	.dwtag  DW_TAG_variable, DW_AT_name("F")
	.dwattr $C$DW$10, DW_AT_TI_symbol_name("_F")
	.dwattr $C$DW$10, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$10, DW_AT_location[DW_OP_bregx 0x24 3]
        MOV T0, *SP(#2) ; |30| 
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "../NCO.c",line 32,column 2,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*(#_delta)), AC0 ; |32| 
        ADD dbl(*AR3), AC0, AC0 ; |32| 
        MOV AC0, dbl(*AR3) ; |32| 
	.dwpsn	file "../NCO.c",line 33,column 2,is_stmt

        MOV *SP(#2), AR1 ; |33| 
||      MOV #7, AR2

        CMPU AR1 <= AR2, TC1 ; |33| 
        BCC $C$L1,TC1 ; |33| 
                                        ; branchcc occurs ; |33| 
	.dwpsn	file "../NCO.c",line 34,column 3,is_stmt
        MOV #8, *SP(#2) ; |34| 
$C$L1:    
	.dwpsn	file "../NCO.c",line 36,column 2,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3), AC0 ; |36| 
        SFTL AC0, #-24, AC0 ; |36| 
        MOV AC0, T0 ; |36| 
        MOV *SP(#2), AR1 ; |36| 
        AMOV #_data, XAR3 ; |36| 

        MOV *AR3(T0), AC0 ; |36| 
||      NEG AR1, T1 ; |36| 

        SFTS AC0, T1, AC0 ; |36| 
        MOV AC0, *SP(#3) ; |36| 
	.dwpsn	file "../NCO.c",line 37,column 2,is_stmt
        MOV *SP(#3), T0 ; |37| 
$C$DW$11	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$11, DW_AT_low_pc(0x00)
	.dwattr $C$DW$11, DW_AT_name("_AIC3204_output")
	.dwattr $C$DW$11, DW_AT_TI_call
        CALL #_AIC3204_output ; |37| 
                                        ; call occurs [#_AIC3204_output] ; |37| 
	.dwpsn	file "../NCO.c",line 38,column 1,is_stmt
        AADD #5, SP
	.dwcfi	cfa_offset, 1
$C$DW$12	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$12, DW_AT_low_pc(0x00)
	.dwattr $C$DW$12, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$5, DW_AT_TI_end_file("../NCO.c")
	.dwattr $C$DW$5, DW_AT_TI_end_line(0x26)
	.dwattr $C$DW$5, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$5

;******************************************************************************
;* UNDEFINED EXTERNAL REFERENCES                                              *
;******************************************************************************
	.global	_AIC3204_output

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

$C$DW$T$26	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$26, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$26, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$26, DW_AT_byte_size(0x100)
$C$DW$13	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$13, DW_AT_upper_bound(0xff)
	.dwendtag $C$DW$T$26

$C$DW$T$9	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$9, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$9, DW_AT_name("unsigned short")
	.dwattr $C$DW$T$9, DW_AT_byte_size(0x01)
$C$DW$T$24	.dwtag  DW_TAG_typedef, DW_AT_name("Uint16")
	.dwattr $C$DW$T$24, DW_AT_type(*$C$DW$T$9)
	.dwattr $C$DW$T$24, DW_AT_language(DW_LANG_C)
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
$C$DW$T$13	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$13, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$13, DW_AT_name("unsigned long")
	.dwattr $C$DW$T$13, DW_AT_byte_size(0x02)
$C$DW$T$22	.dwtag  DW_TAG_typedef, DW_AT_name("Uint32")
	.dwattr $C$DW$T$22, DW_AT_type(*$C$DW$T$13)
	.dwattr $C$DW$T$22, DW_AT_language(DW_LANG_C)
$C$DW$T$23	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$23, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$T$23, DW_AT_address_class(0x17)
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

$C$DW$14	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC0")
	.dwattr $C$DW$14, DW_AT_location[DW_OP_reg0]
$C$DW$15	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC0")
	.dwattr $C$DW$15, DW_AT_location[DW_OP_reg1]
$C$DW$16	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC0_G")
	.dwattr $C$DW$16, DW_AT_location[DW_OP_reg2]
$C$DW$17	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC1")
	.dwattr $C$DW$17, DW_AT_location[DW_OP_reg3]
$C$DW$18	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC1")
	.dwattr $C$DW$18, DW_AT_location[DW_OP_reg4]
$C$DW$19	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC1_G")
	.dwattr $C$DW$19, DW_AT_location[DW_OP_reg5]
$C$DW$20	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC2")
	.dwattr $C$DW$20, DW_AT_location[DW_OP_reg6]
$C$DW$21	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC2")
	.dwattr $C$DW$21, DW_AT_location[DW_OP_reg7]
$C$DW$22	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC2_G")
	.dwattr $C$DW$22, DW_AT_location[DW_OP_reg8]
$C$DW$23	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC3")
	.dwattr $C$DW$23, DW_AT_location[DW_OP_reg9]
$C$DW$24	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC3")
	.dwattr $C$DW$24, DW_AT_location[DW_OP_reg10]
$C$DW$25	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC3_G")
	.dwattr $C$DW$25, DW_AT_location[DW_OP_reg11]
$C$DW$26	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T0")
	.dwattr $C$DW$26, DW_AT_location[DW_OP_reg12]
$C$DW$27	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T1")
	.dwattr $C$DW$27, DW_AT_location[DW_OP_reg13]
$C$DW$28	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T2")
	.dwattr $C$DW$28, DW_AT_location[DW_OP_reg14]
$C$DW$29	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T3")
	.dwattr $C$DW$29, DW_AT_location[DW_OP_reg15]
$C$DW$30	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR0")
	.dwattr $C$DW$30, DW_AT_location[DW_OP_reg16]
$C$DW$31	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR0")
	.dwattr $C$DW$31, DW_AT_location[DW_OP_reg17]
$C$DW$32	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR1")
	.dwattr $C$DW$32, DW_AT_location[DW_OP_reg18]
$C$DW$33	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR1")
	.dwattr $C$DW$33, DW_AT_location[DW_OP_reg19]
$C$DW$34	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR2")
	.dwattr $C$DW$34, DW_AT_location[DW_OP_reg20]
$C$DW$35	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR2")
	.dwattr $C$DW$35, DW_AT_location[DW_OP_reg21]
$C$DW$36	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR3")
	.dwattr $C$DW$36, DW_AT_location[DW_OP_reg22]
$C$DW$37	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR3")
	.dwattr $C$DW$37, DW_AT_location[DW_OP_reg23]
$C$DW$38	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR4")
	.dwattr $C$DW$38, DW_AT_location[DW_OP_reg24]
$C$DW$39	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR4")
	.dwattr $C$DW$39, DW_AT_location[DW_OP_reg25]
$C$DW$40	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR5")
	.dwattr $C$DW$40, DW_AT_location[DW_OP_reg26]
$C$DW$41	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR5")
	.dwattr $C$DW$41, DW_AT_location[DW_OP_reg27]
$C$DW$42	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR6")
	.dwattr $C$DW$42, DW_AT_location[DW_OP_reg28]
$C$DW$43	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR6")
	.dwattr $C$DW$43, DW_AT_location[DW_OP_reg29]
$C$DW$44	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR7")
	.dwattr $C$DW$44, DW_AT_location[DW_OP_reg30]
$C$DW$45	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR7")
	.dwattr $C$DW$45, DW_AT_location[DW_OP_reg31]
$C$DW$46	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("FP")
	.dwattr $C$DW$46, DW_AT_location[DW_OP_regx 0x20]
$C$DW$47	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XFP")
	.dwattr $C$DW$47, DW_AT_location[DW_OP_regx 0x21]
$C$DW$48	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("PC")
	.dwattr $C$DW$48, DW_AT_location[DW_OP_regx 0x22]
$C$DW$49	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SP")
	.dwattr $C$DW$49, DW_AT_location[DW_OP_regx 0x23]
$C$DW$50	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XSP")
	.dwattr $C$DW$50, DW_AT_location[DW_OP_regx 0x24]
$C$DW$51	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BKC")
	.dwattr $C$DW$51, DW_AT_location[DW_OP_regx 0x25]
$C$DW$52	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BK03")
	.dwattr $C$DW$52, DW_AT_location[DW_OP_regx 0x26]
$C$DW$53	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BK47")
	.dwattr $C$DW$53, DW_AT_location[DW_OP_regx 0x27]
$C$DW$54	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST0")
	.dwattr $C$DW$54, DW_AT_location[DW_OP_regx 0x28]
$C$DW$55	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST1")
	.dwattr $C$DW$55, DW_AT_location[DW_OP_regx 0x29]
$C$DW$56	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST2")
	.dwattr $C$DW$56, DW_AT_location[DW_OP_regx 0x2a]
$C$DW$57	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST3")
	.dwattr $C$DW$57, DW_AT_location[DW_OP_regx 0x2b]
$C$DW$58	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("MDP")
	.dwattr $C$DW$58, DW_AT_location[DW_OP_regx 0x2c]
$C$DW$59	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("MDP05")
	.dwattr $C$DW$59, DW_AT_location[DW_OP_regx 0x2d]
$C$DW$60	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("MDP67")
	.dwattr $C$DW$60, DW_AT_location[DW_OP_regx 0x2e]
$C$DW$61	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BRC0")
	.dwattr $C$DW$61, DW_AT_location[DW_OP_regx 0x2f]
$C$DW$62	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA0")
	.dwattr $C$DW$62, DW_AT_location[DW_OP_regx 0x30]
$C$DW$63	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA0_H")
	.dwattr $C$DW$63, DW_AT_location[DW_OP_regx 0x31]
$C$DW$64	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA0")
	.dwattr $C$DW$64, DW_AT_location[DW_OP_regx 0x32]
$C$DW$65	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA0_H")
	.dwattr $C$DW$65, DW_AT_location[DW_OP_regx 0x33]
$C$DW$66	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BRS1")
	.dwattr $C$DW$66, DW_AT_location[DW_OP_regx 0x34]
$C$DW$67	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BRC1")
	.dwattr $C$DW$67, DW_AT_location[DW_OP_regx 0x35]
$C$DW$68	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA1")
	.dwattr $C$DW$68, DW_AT_location[DW_OP_regx 0x36]
$C$DW$69	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA1_H")
	.dwattr $C$DW$69, DW_AT_location[DW_OP_regx 0x37]
$C$DW$70	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA1")
	.dwattr $C$DW$70, DW_AT_location[DW_OP_regx 0x38]
$C$DW$71	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA1_H")
	.dwattr $C$DW$71, DW_AT_location[DW_OP_regx 0x39]
$C$DW$72	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CSR")
	.dwattr $C$DW$72, DW_AT_location[DW_OP_regx 0x3a]
$C$DW$73	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RPTC")
	.dwattr $C$DW$73, DW_AT_location[DW_OP_regx 0x3b]
$C$DW$74	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CDP")
	.dwattr $C$DW$74, DW_AT_location[DW_OP_regx 0x3c]
$C$DW$75	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XCDP")
	.dwattr $C$DW$75, DW_AT_location[DW_OP_regx 0x3d]
$C$DW$76	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TRN0")
	.dwattr $C$DW$76, DW_AT_location[DW_OP_regx 0x3e]
$C$DW$77	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TRN1")
	.dwattr $C$DW$77, DW_AT_location[DW_OP_regx 0x3f]
$C$DW$78	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA01")
	.dwattr $C$DW$78, DW_AT_location[DW_OP_regx 0x40]
$C$DW$79	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA23")
	.dwattr $C$DW$79, DW_AT_location[DW_OP_regx 0x41]
$C$DW$80	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA45")
	.dwattr $C$DW$80, DW_AT_location[DW_OP_regx 0x42]
$C$DW$81	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA67")
	.dwattr $C$DW$81, DW_AT_location[DW_OP_regx 0x43]
$C$DW$82	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSAC")
	.dwattr $C$DW$82, DW_AT_location[DW_OP_regx 0x44]
$C$DW$83	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CARRY")
	.dwattr $C$DW$83, DW_AT_location[DW_OP_regx 0x45]
$C$DW$84	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TC1")
	.dwattr $C$DW$84, DW_AT_location[DW_OP_regx 0x46]
$C$DW$85	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TC2")
	.dwattr $C$DW$85, DW_AT_location[DW_OP_regx 0x47]
$C$DW$86	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("M40")
	.dwattr $C$DW$86, DW_AT_location[DW_OP_regx 0x48]
$C$DW$87	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SXMD")
	.dwattr $C$DW$87, DW_AT_location[DW_OP_regx 0x49]
$C$DW$88	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ARMS")
	.dwattr $C$DW$88, DW_AT_location[DW_OP_regx 0x4a]
$C$DW$89	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("C54CM")
	.dwattr $C$DW$89, DW_AT_location[DW_OP_regx 0x4b]
$C$DW$90	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SATA")
	.dwattr $C$DW$90, DW_AT_location[DW_OP_regx 0x4c]
$C$DW$91	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SATD")
	.dwattr $C$DW$91, DW_AT_location[DW_OP_regx 0x4d]
$C$DW$92	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RDM")
	.dwattr $C$DW$92, DW_AT_location[DW_OP_regx 0x4e]
$C$DW$93	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("FRCT")
	.dwattr $C$DW$93, DW_AT_location[DW_OP_regx 0x4f]
$C$DW$94	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SMUL")
	.dwattr $C$DW$94, DW_AT_location[DW_OP_regx 0x50]
$C$DW$95	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("INTM")
	.dwattr $C$DW$95, DW_AT_location[DW_OP_regx 0x51]
$C$DW$96	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR0LC")
	.dwattr $C$DW$96, DW_AT_location[DW_OP_regx 0x52]
$C$DW$97	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR1LC")
	.dwattr $C$DW$97, DW_AT_location[DW_OP_regx 0x53]
$C$DW$98	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR2LC")
	.dwattr $C$DW$98, DW_AT_location[DW_OP_regx 0x54]
$C$DW$99	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR3LC")
	.dwattr $C$DW$99, DW_AT_location[DW_OP_regx 0x55]
$C$DW$100	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR4LC")
	.dwattr $C$DW$100, DW_AT_location[DW_OP_regx 0x56]
$C$DW$101	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR5LC")
	.dwattr $C$DW$101, DW_AT_location[DW_OP_regx 0x57]
$C$DW$102	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR6LC")
	.dwattr $C$DW$102, DW_AT_location[DW_OP_regx 0x58]
$C$DW$103	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR7LC")
	.dwattr $C$DW$103, DW_AT_location[DW_OP_regx 0x59]
$C$DW$104	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CDPLC")
	.dwattr $C$DW$104, DW_AT_location[DW_OP_regx 0x5a]
$C$DW$105	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CIE_RETA")
	.dwattr $C$DW$105, DW_AT_location[DW_OP_regx 0x5b]
	.dwendtag $C$DW$CU

