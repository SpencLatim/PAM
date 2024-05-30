#ifndef FIR_H_
#define FIR_H_

#define NUM_TAPS 30
#define INPUT_SIZE 1

//30 Taps (500 cf)
static int16_t lpfTaps[] =
{
       910,    450,    549,    655,    763,    873,    981,   1085,   1183,   1273,   1351,   1416,   1467,   1502,   1519,   1519,
      1502,   1467,   1416,   1351,   1273,   1183,   1085,    981,    873,    763,    655,    549,    450,    910,
};

//30 taps anti-alasiang filter for downsampling (8k cf)
static int16_t aaLpfTaps[] =
{
        28,   -178,   -141,    182,    380,    -67,   -697,   -351,    926,   1206,   -761,  -2703,   -525,   6319,  12680,  12680,
      6319,   -525,  -2703,   -761,   1206,    926,   -351,   -697,    -67,    380,    182,   -141,   -178,     28,
};



static int16_t cosineFilter[] =
{
     	0, 	-6, 	-9, 	-7, 	-3,  	0, 	-3,	-12,	-19,	-16,  	0, 	22, 	36, 	32, 	13,  	0,
    	20, 	77,	139,	137,  	0,   -288,   -640,   -865,   -716,  	0,   1314,   3035,   4776,   6073,   6554,   6073,
  	4776,   3035,   1314,  	0,   -716,   -865,   -640,   -288,  	0,	137,	139, 	77, 	20,  	0, 	13, 	32,
    	36, 	22,  	0,	-16,	-19,	-12, 	-3,  	0, 	-3, 	-7, 	-9, 	-6,  	0,
};


extern void myFir(int16_t * restrict x, //input samples
		 int16_t * restrict h, //taps
		 int16_t * restrict delayLine,
		 int32_t nx, //# of input samples
		 int32_t nh //# of taps
		 );

void myFir2(int16_t * restrict x, //input samples
		 int16_t * restrict h, //taps
		 int16_t * restrict delayLine,
		 int32_t nx, //# of input samples
		 const int32_t nh //# of taps
		 );

extern void maintainDL(int16_t *sampleArray, int16_t *restrict delayLine, int32_t arraySize);

#endif /* FIR_H_ */
