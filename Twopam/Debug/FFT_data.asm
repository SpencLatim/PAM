;*******************************************************************************
;* TMS320C55x C/C++ Codegen                                          PC v4.4.1 *
;* Date/Time created: Tue May 14 15:42:47 2024                                 *
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
	.dwattr $C$DW$CU, DW_AT_name("../FFT/FFT_data.c")
	.dwattr $C$DW$CU, DW_AT_producer("TMS320C55x C/C++ Codegen PC v4.4.1 Copyright (c) 1996-2012 Texas Instruments Incorporated")
	.dwattr $C$DW$CU, DW_AT_TI_version(0x01)
	.dwattr $C$DW$CU, DW_AT_comp_dir("C:\Users\golan\Downloads\ezdsp5535_v1_spring2024\projects\pam\Debug")
	.global	_FFT_ConstP
	.sect	".const:_FFT_ConstP"
	.clink
	.align	2
_FFT_ConstP:
	.xlong	0x3f800000		; _FFT_ConstP._FFT_TwiddleTable[0] @ 0
	.xlong	0x3f7fb10f		; _FFT_ConstP._FFT_TwiddleTable[1] @ 32
	.xlong	0x3f7ec46d		; _FFT_ConstP._FFT_TwiddleTable[2] @ 64
	.xlong	0x3f7d3aac		; _FFT_ConstP._FFT_TwiddleTable[3] @ 96
	.xlong	0x3f7b14be		; _FFT_ConstP._FFT_TwiddleTable[4] @ 128
	.xlong	0x3f7853f8		; _FFT_ConstP._FFT_TwiddleTable[5] @ 160
	.xlong	0x3f74fa0b		; _FFT_ConstP._FFT_TwiddleTable[6] @ 192
	.xlong	0x3f710908		; _FFT_ConstP._FFT_TwiddleTable[7] @ 224
	.xlong	0x3f6c835e		; _FFT_ConstP._FFT_TwiddleTable[8] @ 256
	.xlong	0x3f676bd8		; _FFT_ConstP._FFT_TwiddleTable[9] @ 288
	.xlong	0x3f61c598		; _FFT_ConstP._FFT_TwiddleTable[10] @ 320
	.xlong	0x3f5b941a		; _FFT_ConstP._FFT_TwiddleTable[11] @ 352
	.xlong	0x3f54db31		; _FFT_ConstP._FFT_TwiddleTable[12] @ 384
	.xlong	0x3f4d9f02		; _FFT_ConstP._FFT_TwiddleTable[13] @ 416
	.xlong	0x3f45e403		; _FFT_ConstP._FFT_TwiddleTable[14] @ 448
	.xlong	0x3f3daef9		; _FFT_ConstP._FFT_TwiddleTable[15] @ 480
	.xlong	0x3f3504f3		; _FFT_ConstP._FFT_TwiddleTable[16] @ 512
	.xlong	0x3f2beb4a		; _FFT_ConstP._FFT_TwiddleTable[17] @ 544
	.xlong	0x3f226799		; _FFT_ConstP._FFT_TwiddleTable[18] @ 576
	.xlong	0x3f187fc0		; _FFT_ConstP._FFT_TwiddleTable[19] @ 608
	.xlong	0x3f0e39da		; _FFT_ConstP._FFT_TwiddleTable[20] @ 640
	.xlong	0x3f039c3d		; _FFT_ConstP._FFT_TwiddleTable[21] @ 672
	.xlong	0x3ef15aea		; _FFT_ConstP._FFT_TwiddleTable[22] @ 704
	.xlong	0x3edae880		; _FFT_ConstP._FFT_TwiddleTable[23] @ 736
	.xlong	0x3ec3ef15		; _FFT_ConstP._FFT_TwiddleTable[24] @ 768
	.xlong	0x3eac7cd4		; _FFT_ConstP._FFT_TwiddleTable[25] @ 800
	.xlong	0x3e94a031		; _FFT_ConstP._FFT_TwiddleTable[26] @ 832
	.xlong	0x3e78cfcc		; _FFT_ConstP._FFT_TwiddleTable[27] @ 864
	.xlong	0x3e47c5c2		; _FFT_ConstP._FFT_TwiddleTable[28] @ 896
	.xlong	0x3e164083		; _FFT_ConstP._FFT_TwiddleTable[29] @ 928
	.xlong	0x3dc8bd36		; _FFT_ConstP._FFT_TwiddleTable[30] @ 960
	.xlong	0x3d48fb30		; _FFT_ConstP._FFT_TwiddleTable[31] @ 992
	.xlong	0x248d3132		; _FFT_ConstP._FFT_TwiddleTable[32] @ 1024
	.xlong	0xbd48fb30		; _FFT_ConstP._FFT_TwiddleTable[33] @ 1056
	.xlong	0xbdc8bd36		; _FFT_ConstP._FFT_TwiddleTable[34] @ 1088
	.xlong	0xbe164083		; _FFT_ConstP._FFT_TwiddleTable[35] @ 1120
	.xlong	0xbe47c5c2		; _FFT_ConstP._FFT_TwiddleTable[36] @ 1152
	.xlong	0xbe78cfcc		; _FFT_ConstP._FFT_TwiddleTable[37] @ 1184
	.xlong	0xbe94a031		; _FFT_ConstP._FFT_TwiddleTable[38] @ 1216
	.xlong	0xbeac7cd4		; _FFT_ConstP._FFT_TwiddleTable[39] @ 1248
	.xlong	0xbec3ef15		; _FFT_ConstP._FFT_TwiddleTable[40] @ 1280
	.xlong	0xbedae880		; _FFT_ConstP._FFT_TwiddleTable[41] @ 1312
	.xlong	0xbef15aea		; _FFT_ConstP._FFT_TwiddleTable[42] @ 1344
	.xlong	0xbf039c3d		; _FFT_ConstP._FFT_TwiddleTable[43] @ 1376
	.xlong	0xbf0e39da		; _FFT_ConstP._FFT_TwiddleTable[44] @ 1408
	.xlong	0xbf187fc0		; _FFT_ConstP._FFT_TwiddleTable[45] @ 1440
	.xlong	0xbf226799		; _FFT_ConstP._FFT_TwiddleTable[46] @ 1472
	.xlong	0xbf2beb4a		; _FFT_ConstP._FFT_TwiddleTable[47] @ 1504
	.xlong	0xbf3504f3		; _FFT_ConstP._FFT_TwiddleTable[48] @ 1536
	.xlong	0xbf3daef9		; _FFT_ConstP._FFT_TwiddleTable[49] @ 1568
	.xlong	0xbf45e403		; _FFT_ConstP._FFT_TwiddleTable[50] @ 1600
	.xlong	0xbf4d9f02		; _FFT_ConstP._FFT_TwiddleTable[51] @ 1632
	.xlong	0xbf54db31		; _FFT_ConstP._FFT_TwiddleTable[52] @ 1664
	.xlong	0xbf5b941a		; _FFT_ConstP._FFT_TwiddleTable[53] @ 1696
	.xlong	0xbf61c598		; _FFT_ConstP._FFT_TwiddleTable[54] @ 1728
	.xlong	0xbf676bd8		; _FFT_ConstP._FFT_TwiddleTable[55] @ 1760
	.xlong	0xbf6c835e		; _FFT_ConstP._FFT_TwiddleTable[56] @ 1792
	.xlong	0xbf710908		; _FFT_ConstP._FFT_TwiddleTable[57] @ 1824
	.xlong	0xbf74fa0b		; _FFT_ConstP._FFT_TwiddleTable[58] @ 1856
	.xlong	0xbf7853f8		; _FFT_ConstP._FFT_TwiddleTable[59] @ 1888
	.xlong	0xbf7b14be		; _FFT_ConstP._FFT_TwiddleTable[60] @ 1920
	.xlong	0xbf7d3aac		; _FFT_ConstP._FFT_TwiddleTable[61] @ 1952
	.xlong	0xbf7ec46d		; _FFT_ConstP._FFT_TwiddleTable[62] @ 1984
	.xlong	0xbf7fb10f		; _FFT_ConstP._FFT_TwiddleTable[63] @ 2016
	.xlong	0xbf800000		; _FFT_ConstP._FFT_TwiddleTable[64] @ 2048
	.xlong	0xbf7fb10f		; _FFT_ConstP._FFT_TwiddleTable[65] @ 2080
	.xlong	0xbf7ec46d		; _FFT_ConstP._FFT_TwiddleTable[66] @ 2112
	.xlong	0xbf7d3aac		; _FFT_ConstP._FFT_TwiddleTable[67] @ 2144
	.xlong	0xbf7b14be		; _FFT_ConstP._FFT_TwiddleTable[68] @ 2176
	.xlong	0xbf7853f8		; _FFT_ConstP._FFT_TwiddleTable[69] @ 2208
	.xlong	0xbf74fa0b		; _FFT_ConstP._FFT_TwiddleTable[70] @ 2240
	.xlong	0xbf710908		; _FFT_ConstP._FFT_TwiddleTable[71] @ 2272
	.xlong	0xbf6c835e		; _FFT_ConstP._FFT_TwiddleTable[72] @ 2304
	.xlong	0xbf676bd8		; _FFT_ConstP._FFT_TwiddleTable[73] @ 2336
	.xlong	0xbf61c598		; _FFT_ConstP._FFT_TwiddleTable[74] @ 2368
	.xlong	0xbf5b941a		; _FFT_ConstP._FFT_TwiddleTable[75] @ 2400
	.xlong	0xbf54db31		; _FFT_ConstP._FFT_TwiddleTable[76] @ 2432
	.xlong	0xbf4d9f02		; _FFT_ConstP._FFT_TwiddleTable[77] @ 2464
	.xlong	0xbf45e403		; _FFT_ConstP._FFT_TwiddleTable[78] @ 2496
	.xlong	0xbf3daef9		; _FFT_ConstP._FFT_TwiddleTable[79] @ 2528
	.xlong	0xbf3504f3		; _FFT_ConstP._FFT_TwiddleTable[80] @ 2560
	.xlong	0xbf2beb4a		; _FFT_ConstP._FFT_TwiddleTable[81] @ 2592
	.xlong	0xbf226799		; _FFT_ConstP._FFT_TwiddleTable[82] @ 2624
	.xlong	0xbf187fc0		; _FFT_ConstP._FFT_TwiddleTable[83] @ 2656
	.xlong	0xbf0e39da		; _FFT_ConstP._FFT_TwiddleTable[84] @ 2688
	.xlong	0xbf039c3d		; _FFT_ConstP._FFT_TwiddleTable[85] @ 2720
	.xlong	0xbef15aea		; _FFT_ConstP._FFT_TwiddleTable[86] @ 2752
	.xlong	0xbedae880		; _FFT_ConstP._FFT_TwiddleTable[87] @ 2784
	.xlong	0xbec3ef15		; _FFT_ConstP._FFT_TwiddleTable[88] @ 2816
	.xlong	0xbeac7cd4		; _FFT_ConstP._FFT_TwiddleTable[89] @ 2848
	.xlong	0xbe94a031		; _FFT_ConstP._FFT_TwiddleTable[90] @ 2880
	.xlong	0xbe78cfcc		; _FFT_ConstP._FFT_TwiddleTable[91] @ 2912
	.xlong	0xbe47c5c2		; _FFT_ConstP._FFT_TwiddleTable[92] @ 2944
	.xlong	0xbe164083		; _FFT_ConstP._FFT_TwiddleTable[93] @ 2976
	.xlong	0xbdc8bd36		; _FFT_ConstP._FFT_TwiddleTable[94] @ 3008
	.xlong	0xbd48fb30		; _FFT_ConstP._FFT_TwiddleTable[95] @ 3040

$C$DW$1	.dwtag  DW_TAG_variable, DW_AT_name("FFT_ConstP")
	.dwattr $C$DW$1, DW_AT_TI_symbol_name("_FFT_ConstP")
	.dwattr $C$DW$1, DW_AT_location[DW_OP_addr _FFT_ConstP]
	.dwattr $C$DW$1, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$1, DW_AT_external
;	C:\ti\ccsv6\tools\compiler\c5500_4.4.1\bin\acp55.exe -@C:\\Users\\golan\\AppData\\Local\\Temp\\2193212 

;*******************************************************************************
;* TYPE INFORMATION                                                            *
;*******************************************************************************

$C$DW$T$21	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$21, DW_AT_byte_size(0xc0)
$C$DW$2	.dwtag  DW_TAG_member
	.dwattr $C$DW$2, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$2, DW_AT_name("FFT_TwiddleTable")
	.dwattr $C$DW$2, DW_AT_TI_symbol_name("_FFT_TwiddleTable")
	.dwattr $C$DW$2, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$2, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$21

$C$DW$T$22	.dwtag  DW_TAG_typedef, DW_AT_name("ConstP_FFT_T")
	.dwattr $C$DW$T$22, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$T$22, DW_AT_language(DW_LANG_C)
$C$DW$3	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$3, DW_AT_type(*$C$DW$T$22)
$C$DW$T$23	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$23, DW_AT_type(*$C$DW$3)
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
$C$DW$T$12	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$12, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$12, DW_AT_name("long")
	.dwattr $C$DW$T$12, DW_AT_byte_size(0x02)
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
$C$DW$T$19	.dwtag  DW_TAG_typedef, DW_AT_name("real32_T")
	.dwattr $C$DW$T$19, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$T$19, DW_AT_language(DW_LANG_C)

$C$DW$T$20	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$20, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$20, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$20, DW_AT_byte_size(0xc0)
$C$DW$4	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$4, DW_AT_upper_bound(0x5f)
	.dwendtag $C$DW$T$20

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
	.dwcfi	undefined, 14
	.dwcfi	undefined, 15
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
	.dwcfi	undefined, 26
	.dwcfi	undefined, 27
	.dwcfi	undefined, 28
	.dwcfi	undefined, 29
	.dwcfi	undefined, 30
	.dwcfi	undefined, 31
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

$C$DW$5	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC0")
	.dwattr $C$DW$5, DW_AT_location[DW_OP_reg0]
$C$DW$6	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC0")
	.dwattr $C$DW$6, DW_AT_location[DW_OP_reg1]
$C$DW$7	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC0_G")
	.dwattr $C$DW$7, DW_AT_location[DW_OP_reg2]
$C$DW$8	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC1")
	.dwattr $C$DW$8, DW_AT_location[DW_OP_reg3]
$C$DW$9	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC1")
	.dwattr $C$DW$9, DW_AT_location[DW_OP_reg4]
$C$DW$10	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC1_G")
	.dwattr $C$DW$10, DW_AT_location[DW_OP_reg5]
$C$DW$11	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC2")
	.dwattr $C$DW$11, DW_AT_location[DW_OP_reg6]
$C$DW$12	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC2")
	.dwattr $C$DW$12, DW_AT_location[DW_OP_reg7]
$C$DW$13	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC2_G")
	.dwattr $C$DW$13, DW_AT_location[DW_OP_reg8]
$C$DW$14	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC3")
	.dwattr $C$DW$14, DW_AT_location[DW_OP_reg9]
$C$DW$15	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC3")
	.dwattr $C$DW$15, DW_AT_location[DW_OP_reg10]
$C$DW$16	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC3_G")
	.dwattr $C$DW$16, DW_AT_location[DW_OP_reg11]
$C$DW$17	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T0")
	.dwattr $C$DW$17, DW_AT_location[DW_OP_reg12]
$C$DW$18	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T1")
	.dwattr $C$DW$18, DW_AT_location[DW_OP_reg13]
$C$DW$19	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T2")
	.dwattr $C$DW$19, DW_AT_location[DW_OP_reg14]
$C$DW$20	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T3")
	.dwattr $C$DW$20, DW_AT_location[DW_OP_reg15]
$C$DW$21	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR0")
	.dwattr $C$DW$21, DW_AT_location[DW_OP_reg16]
$C$DW$22	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR0")
	.dwattr $C$DW$22, DW_AT_location[DW_OP_reg17]
$C$DW$23	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR1")
	.dwattr $C$DW$23, DW_AT_location[DW_OP_reg18]
$C$DW$24	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR1")
	.dwattr $C$DW$24, DW_AT_location[DW_OP_reg19]
$C$DW$25	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR2")
	.dwattr $C$DW$25, DW_AT_location[DW_OP_reg20]
$C$DW$26	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR2")
	.dwattr $C$DW$26, DW_AT_location[DW_OP_reg21]
$C$DW$27	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR3")
	.dwattr $C$DW$27, DW_AT_location[DW_OP_reg22]
$C$DW$28	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR3")
	.dwattr $C$DW$28, DW_AT_location[DW_OP_reg23]
$C$DW$29	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR4")
	.dwattr $C$DW$29, DW_AT_location[DW_OP_reg24]
$C$DW$30	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR4")
	.dwattr $C$DW$30, DW_AT_location[DW_OP_reg25]
$C$DW$31	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR5")
	.dwattr $C$DW$31, DW_AT_location[DW_OP_reg26]
$C$DW$32	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR5")
	.dwattr $C$DW$32, DW_AT_location[DW_OP_reg27]
$C$DW$33	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR6")
	.dwattr $C$DW$33, DW_AT_location[DW_OP_reg28]
$C$DW$34	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR6")
	.dwattr $C$DW$34, DW_AT_location[DW_OP_reg29]
$C$DW$35	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR7")
	.dwattr $C$DW$35, DW_AT_location[DW_OP_reg30]
$C$DW$36	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR7")
	.dwattr $C$DW$36, DW_AT_location[DW_OP_reg31]
$C$DW$37	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("FP")
	.dwattr $C$DW$37, DW_AT_location[DW_OP_regx 0x20]
$C$DW$38	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XFP")
	.dwattr $C$DW$38, DW_AT_location[DW_OP_regx 0x21]
$C$DW$39	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("PC")
	.dwattr $C$DW$39, DW_AT_location[DW_OP_regx 0x22]
$C$DW$40	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SP")
	.dwattr $C$DW$40, DW_AT_location[DW_OP_regx 0x23]
$C$DW$41	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XSP")
	.dwattr $C$DW$41, DW_AT_location[DW_OP_regx 0x24]
$C$DW$42	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BKC")
	.dwattr $C$DW$42, DW_AT_location[DW_OP_regx 0x25]
$C$DW$43	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BK03")
	.dwattr $C$DW$43, DW_AT_location[DW_OP_regx 0x26]
$C$DW$44	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BK47")
	.dwattr $C$DW$44, DW_AT_location[DW_OP_regx 0x27]
$C$DW$45	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST0")
	.dwattr $C$DW$45, DW_AT_location[DW_OP_regx 0x28]
$C$DW$46	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST1")
	.dwattr $C$DW$46, DW_AT_location[DW_OP_regx 0x29]
$C$DW$47	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST2")
	.dwattr $C$DW$47, DW_AT_location[DW_OP_regx 0x2a]
$C$DW$48	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST3")
	.dwattr $C$DW$48, DW_AT_location[DW_OP_regx 0x2b]
$C$DW$49	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("MDP")
	.dwattr $C$DW$49, DW_AT_location[DW_OP_regx 0x2c]
$C$DW$50	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("MDP05")
	.dwattr $C$DW$50, DW_AT_location[DW_OP_regx 0x2d]
$C$DW$51	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("MDP67")
	.dwattr $C$DW$51, DW_AT_location[DW_OP_regx 0x2e]
$C$DW$52	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BRC0")
	.dwattr $C$DW$52, DW_AT_location[DW_OP_regx 0x2f]
$C$DW$53	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA0")
	.dwattr $C$DW$53, DW_AT_location[DW_OP_regx 0x30]
$C$DW$54	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA0_H")
	.dwattr $C$DW$54, DW_AT_location[DW_OP_regx 0x31]
$C$DW$55	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA0")
	.dwattr $C$DW$55, DW_AT_location[DW_OP_regx 0x32]
$C$DW$56	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA0_H")
	.dwattr $C$DW$56, DW_AT_location[DW_OP_regx 0x33]
$C$DW$57	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BRS1")
	.dwattr $C$DW$57, DW_AT_location[DW_OP_regx 0x34]
$C$DW$58	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BRC1")
	.dwattr $C$DW$58, DW_AT_location[DW_OP_regx 0x35]
$C$DW$59	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA1")
	.dwattr $C$DW$59, DW_AT_location[DW_OP_regx 0x36]
$C$DW$60	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA1_H")
	.dwattr $C$DW$60, DW_AT_location[DW_OP_regx 0x37]
$C$DW$61	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA1")
	.dwattr $C$DW$61, DW_AT_location[DW_OP_regx 0x38]
$C$DW$62	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA1_H")
	.dwattr $C$DW$62, DW_AT_location[DW_OP_regx 0x39]
$C$DW$63	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CSR")
	.dwattr $C$DW$63, DW_AT_location[DW_OP_regx 0x3a]
$C$DW$64	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RPTC")
	.dwattr $C$DW$64, DW_AT_location[DW_OP_regx 0x3b]
$C$DW$65	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CDP")
	.dwattr $C$DW$65, DW_AT_location[DW_OP_regx 0x3c]
$C$DW$66	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XCDP")
	.dwattr $C$DW$66, DW_AT_location[DW_OP_regx 0x3d]
$C$DW$67	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TRN0")
	.dwattr $C$DW$67, DW_AT_location[DW_OP_regx 0x3e]
$C$DW$68	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TRN1")
	.dwattr $C$DW$68, DW_AT_location[DW_OP_regx 0x3f]
$C$DW$69	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA01")
	.dwattr $C$DW$69, DW_AT_location[DW_OP_regx 0x40]
$C$DW$70	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA23")
	.dwattr $C$DW$70, DW_AT_location[DW_OP_regx 0x41]
$C$DW$71	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA45")
	.dwattr $C$DW$71, DW_AT_location[DW_OP_regx 0x42]
$C$DW$72	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA67")
	.dwattr $C$DW$72, DW_AT_location[DW_OP_regx 0x43]
$C$DW$73	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSAC")
	.dwattr $C$DW$73, DW_AT_location[DW_OP_regx 0x44]
$C$DW$74	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CARRY")
	.dwattr $C$DW$74, DW_AT_location[DW_OP_regx 0x45]
$C$DW$75	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TC1")
	.dwattr $C$DW$75, DW_AT_location[DW_OP_regx 0x46]
$C$DW$76	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TC2")
	.dwattr $C$DW$76, DW_AT_location[DW_OP_regx 0x47]
$C$DW$77	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("M40")
	.dwattr $C$DW$77, DW_AT_location[DW_OP_regx 0x48]
$C$DW$78	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SXMD")
	.dwattr $C$DW$78, DW_AT_location[DW_OP_regx 0x49]
$C$DW$79	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ARMS")
	.dwattr $C$DW$79, DW_AT_location[DW_OP_regx 0x4a]
$C$DW$80	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("C54CM")
	.dwattr $C$DW$80, DW_AT_location[DW_OP_regx 0x4b]
$C$DW$81	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SATA")
	.dwattr $C$DW$81, DW_AT_location[DW_OP_regx 0x4c]
$C$DW$82	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SATD")
	.dwattr $C$DW$82, DW_AT_location[DW_OP_regx 0x4d]
$C$DW$83	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RDM")
	.dwattr $C$DW$83, DW_AT_location[DW_OP_regx 0x4e]
$C$DW$84	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("FRCT")
	.dwattr $C$DW$84, DW_AT_location[DW_OP_regx 0x4f]
$C$DW$85	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SMUL")
	.dwattr $C$DW$85, DW_AT_location[DW_OP_regx 0x50]
$C$DW$86	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("INTM")
	.dwattr $C$DW$86, DW_AT_location[DW_OP_regx 0x51]
$C$DW$87	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR0LC")
	.dwattr $C$DW$87, DW_AT_location[DW_OP_regx 0x52]
$C$DW$88	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR1LC")
	.dwattr $C$DW$88, DW_AT_location[DW_OP_regx 0x53]
$C$DW$89	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR2LC")
	.dwattr $C$DW$89, DW_AT_location[DW_OP_regx 0x54]
$C$DW$90	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR3LC")
	.dwattr $C$DW$90, DW_AT_location[DW_OP_regx 0x55]
$C$DW$91	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR4LC")
	.dwattr $C$DW$91, DW_AT_location[DW_OP_regx 0x56]
$C$DW$92	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR5LC")
	.dwattr $C$DW$92, DW_AT_location[DW_OP_regx 0x57]
$C$DW$93	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR6LC")
	.dwattr $C$DW$93, DW_AT_location[DW_OP_regx 0x58]
$C$DW$94	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR7LC")
	.dwattr $C$DW$94, DW_AT_location[DW_OP_regx 0x59]
$C$DW$95	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CDPLC")
	.dwattr $C$DW$95, DW_AT_location[DW_OP_regx 0x5a]
$C$DW$96	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CIE_RETA")
	.dwattr $C$DW$96, DW_AT_location[DW_OP_regx 0x5b]
	.dwendtag $C$DW$CU

