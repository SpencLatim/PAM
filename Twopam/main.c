
#include "stdio.h"
#include "ezdsp5535.h"
#include "stdint.h"
#include "aic3204.h"
#include "NCO.h"
#include "ezdsp5535_i2c.h"
#include "FIR.h"
#include "math.h"
#include <stdlib.h>
#include "ezdsp5535_led.h"
#include "ezdsp5535_gpio.h"

#define NUMTAPS 61
#define BITNUM 768 //768 because of 48 samps * 16 bits each
//#define BITNUM 160
#define TOTBITNUM (BITNUM*11)//+NUMTAPS


void bit_extraction(Int16* inData,Int16* outData);
void symbol_extraction(Int16* inData,Int16* outData);
void zeroPadding(Int16* inData,Int16* outData);
void downSample(Int16* inData,Int16* outData);
void number_reconstruction(Int16* inData,Int16* outData);
void noiser(Uint16 SNR, Int16* inData,Int16* outData);
Uint16 error_detection(Int16* TXSig,Int16* RXSig);


void StopTest()
{
    //SW_BREAKPOINT;
    return;
}

static Int16 testVector[] =
{
     	0,  17908,  11961,   9042,  -7387,  12175,  -1662,   8617, -13304,  15627,  15057,  32767,   5135,   3330,  -2446,   8828,
  	6859,  -2158,   7836,  10843,  27705,   -775,  -1847, -22486,   5571,  -6328,   5564, -12427,   7030,   3398,	947, -19888,
	-26943, -11396,  -5746,   5123, -15136,	838,  -9682,   6228, -25059, -15650, -21412,  10997,   5550,   6073,  -5750,  	0
};

//static Int16 testVector[] =
//{
//     	1,1,1,1,1,1,1,1,1,1
//};


Int16 bitCollection[BITNUM];

Int16 symbolsCollection[BITNUM];

Int16 Reconstruction[48];

Int16 delayLine[61];

Int16 padBitCollection[TOTBITNUM];

Int16 RXBits[TOTBITNUM];

Int16 bitCollection2[BITNUM];
Uint16 boop=BITNUM;

/*
 *
 *  main( )
 *
 */
void main( void )
{

    // prolog
	/* Initialize BSL */
    EZDSP5535_init( );
    /* Initialize I2C */
    EZDSP5535_I2C_init( );

    AIC3204_Init();

    EZDSP5535_LED_init( );



    //clear delayline
    Uint16 i=0;
    for(i=0;i<NUM_TAPS;i++){
    	delayLine[i]=0;
    }







    /*
     * Modulation
     */
    bit_extraction(testVector,bitCollection);

    symbol_extraction(bitCollection,symbolsCollection);

    zeroPadding(symbolsCollection,padBitCollection);

    myFir(padBitCollection,cosineFilter,delayLine,TOTBITNUM,NUMTAPS);



    /*
     * Add Noise and Clear Delayline
     */
    noiser(1,padBitCollection,RXBits);

    for(i=0;i<NUM_TAPS;i++){
        	delayLine[i]=0;
        }


    /*
     * Demodulation
     */
    myFir(RXBits,cosineFilter,delayLine,TOTBITNUM,NUMTAPS);

    downSample(RXBits,bitCollection2);

    number_reconstruction(bitCollection2,Reconstruction);



    /*
     * Error detection
     */
    Uint16 errors=error_detection(bitCollection,bitCollection2);

    volatile float error_percent=errors;

    error_percent=error_percent/BITNUM;

    error_percent=error_percent*100;



}









void bit_extraction(Int16* inData,Int16* outData){
	Uint8 i=0;
	Uint8 j=0;
	Uint16 temp=0;
	for(i=0;i<BITNUM;i++){//for every sample get its bits
		for(j=0;j<16;j++){//16 bits per sample
			temp=inData[i] & (1<<j);
			temp=temp>>j;
			outData[(i*16)+(j)]=temp;
		}
	}

}

void symbol_extraction(Int16* inData,Int16* outData){
	Uint16 i=0;
	for(i=0;i<BITNUM;i++){
		if(inData[i]==0){
			outData[i]=-1000;
		}else{
			outData[i]=1000;
		}
	}
}

void zeroPadding(Int16* inData,Int16* outData){
	Uint16 i=0;
	Uint16 j=0;
	Uint16 k=0;
	while(i<BITNUM){
		outData[j]=inData[i];
		i++;
		j++;
		for(k=0;k<9;k++){
			outData[j]=0;
			j++;
		}
	}
}

void downSample(Int16* inData,Int16* outData){
	Uint16 i=0;
	Uint16 j=NUMTAPS-1;
	Uint16 k=0;
	while(i<BITNUM){
		if(inData[j]>0){
			outData[i]=1;
		}else{
			outData[i]=0;
		}
		//outData[i]=inData[j];
		i++;
		for(k=0;k<10;k++){
			j++;
		}
	}
}


void number_reconstruction(Int16* inData,Int16* outData){
	Uint16 i=0;
	Uint8 j=0;
	Uint16 temp=0;
	for(i=0;i<BITNUM;i++){//for every sample get its bits
		temp=0;
		for(j=0;j<16;j++){//16 bits per sample
			temp=temp | (inData[(i*16)+(j)]<<j);
		}
		outData[i]=temp;
	}
}

void noiser(Uint16 SNR, Int16* inData,Int16* outData){
	//get power of incoming signal
	Uint32 sigPower=0;
	Uint16 noisePower=0;
	Int16 noise=0;
	Uint16 i=0;

	for(i=0;i<TOTBITNUM;i++){
		sigPower=_smac(sigPower,inData[i],inData[i]);
	}
	sigPower=sigPower/TOTBITNUM;

	Int16 maxNoise=0;

	noisePower=sigPower/SNR;

	maxNoise = sqrt(2*noisePower);
	maxNoise =maxNoise*2;

	for(i=0;i<TOTBITNUM;i++){
		noise=rand() % (maxNoise + 1);
		noise=noise-maxNoise;

		outData[i]=inData[i]+noise;
	}

}

Uint16 error_detection(Int16* TXSig,Int16* RXSig){
	Uint16 i=0;
	Uint16 errors=0;
	for(i=0;i<BITNUM;i++){
		if(TXSig[i]!=RXSig[i]){
			errors=errors+1;
		}
	}
	return errors;
}
