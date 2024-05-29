#ifndef FIR_H_
#define FIR_H_
#include "ezdsp5535.h"

#define NUM_TAPS 30
#define INPUT_SIZE 1

//30 Taps (500 cf)
static Int16 lpfTaps[] =
{
       910,    450,    549,    655,    763,    873,    981,   1085,   1183,   1273,   1351,   1416,   1467,   1502,   1519,   1519,
      1502,   1467,   1416,   1351,   1273,   1183,   1085,    981,    873,    763,    655,    549,    450,    910,
};

//30 taps anti-alasiang filter for downsampling (8k cf)
static Int16 aaLpfTaps[] =
{
        28,   -178,   -141,    182,    380,    -67,   -697,   -351,    926,   1206,   -761,  -2703,   -525,   6319,  12680,  12680,
      6319,   -525,  -2703,   -761,   1206,    926,   -351,   -697,    -67,    380,    182,   -141,   -178,     28,
};



//static Int16 hpfTaps[] =
//{
//      -872,   -128,    -13,    188,    454,    751,   1025,   1210,   1234,   1019,    477,   -517,  -2241,  -5723, -20438,  20438,
//      5723,   2241,    517,   -477,  -1019,  -1234,  -1210,  -1025,   -751,   -454,   -188,     13,    128,    872,
//};

static Int16 cosineFilter[] =
{
     	0, 	-6, 	-9, 	-7, 	-3,  	0, 	-3,	-12,	-19,	-16,  	0, 	22, 	36, 	32, 	13,  	0,
    	20, 	77,	139,	137,  	0,   -288,   -640,   -865,   -716,  	0,   1314,   3035,   4776,   6073,   6554,   6073,
  	4776,   3035,   1314,  	0,   -716,   -865,   -640,   -288,  	0,	137,	139, 	77, 	20,  	0, 	13, 	32,
    	36, 	22,  	0,	-16,	-19,	-12, 	-3,  	0, 	-3, 	-7, 	-9, 	-6,  	0,
};


extern void myFir(Int16 * restrict x, //input samples
		 Int16 * restrict h, //taps
		 Int16 * restrict delayLine,
		 Uint32 nx, //# of input samples
		 Uint32 nh //# of taps
		 );

void myFir2(Int16 * restrict x, //input samples
		 Int16 * restrict h, //taps
		 Int16 * restrict delayLine,
		 Uint32 nx, //# of input samples
		 const Uint32 nh //# of taps
		 );

extern void maintainDL(Int16 *sampleArray, Int16 *restrict delayLine, Uint32 arraySize);

#endif /* FIR_H_ */
