
#include "stdio.h"
#include "stdint.h"
#include "FIR.h"


void myFir(int16_t * restrict x, //input samples
		 int16_t * restrict h, //taps
		 int16_t * restrict delayLine,
		 int32_t nx, //# of input samples
		 const int32_t nh //# of taps
		 )
{
	int16_t i = 0;
	int16_t j = 0;
	int16_t k = 0;

	#pragma MUST_ITERATE(1,,)
	for(i = 0; i < nx; i++){

		int32_t result = 32768; // 2^15 for rounding
		//Int32 result = 0;
		delayLine[0] = x[i];

		#pragma MUST_ITERATE(1,,2)
		for(j = 0; j < nh; j++){

			result = _smac(result, delayLine[j], h[j]);
		}

	    for ( k = nh - 1; k > 0; k--) {
	        delayLine[k] = delayLine[k - 1];  // Shift the elements
	    }

	    delayLine[0] = 0;  // Place zero at the first index
	    //x[i]=result;
	    x[i] = (int16_t) _lshrs(result, 16);
	}

}

void myFir2(int16_t * restrict x, //input samples
		 int16_t * restrict h, //taps
		 int16_t * restrict delayLine,
		 int32_t nx, //# of input samples
		 const int32_t nh //# of taps
		 )
{
	int16_t i = 0;
	int16_t j = 0;
	int16_t k = 0;

	#pragma MUST_ITERATE(1,,)
	for(i = 0; i < nx; i+=2){

		int32_t result = 32768; // 2^15 for rounding
		delayLine[0] = x[i];
		delayLine[1] = x[i+1];

		#pragma MUST_ITERATE(1,,2)
		for(j = 0; j < nh; j++){

			result = _smac(result, delayLine[j], h[j]);
		}

	    for ( k = nh - 1; k > 0; k--) {
	        delayLine[k] = delayLine[k - 1];  // Shift the elements
	    }

	    delayLine[0] = 0;  // Place zero at the first index
	    x[i] = (int16_t) _lshrs(result, 16);
	}

}


void maintainDL(int16_t *restrict sampleArray, int16_t *restrict delayLine, int32_t arraySize) {
    int32_t i, j;
    for (i = 0; i < arraySize; i++) {
        delayLine[0] = sampleArray[i];  // Update the first element with the new sample
        // Shift the elements
        for (j = NUM_TAPS - 1; j > 0; j--) {
            delayLine[j] = delayLine[j - 1];
        }
        delayLine[0] = 0;  // Place zero at the first index
    }
}
