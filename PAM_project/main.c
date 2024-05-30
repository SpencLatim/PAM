
#include "stdio.h"
#include "stdint.h"
#include "FIR.h"
#include "math.h"
#include <stdlib.h>


#define NUMTAPS 61
#define BITNUM 768 //768 because of 48 samps * 16 bits each
//#define BITNUM 160
#define TOTBITNUM (BITNUM*11)//+NUMTAPS


void bit_extraction(int16_t* inData,int16_t* outData);
void symbol_extraction(int16_t* inData,int16_t* outData);
void zeroPadding(int16_t* inData,int16_t* outData);
void downSample(int16_t* inData,int16_t* outData);
void number_reconstruction(int16_t* inData,int16_t* outData);
void noiser(int16_t SNR, int16_t* inData,int16_t* outData);
int16_t error_detection(int16_t* TXSig,int16_t* RXSig);


void StopTest()
{
    //SW_BREAKPOINT;
    return;
}

static int16_t testVector[] =
{
     	0,  17908,  11961,   9042,  -7387,  12175,  -1662,   8617, -13304,  15627,  15057,  32767,   5135,   3330,  -2446,   8828,
  	6859,  -2158,   7836,  10843,  27705,   -775,  -1847, -22486,   5571,  -6328,   5564, -12427,   7030,   3398,	947, -19888,
	-26943, -11396,  -5746,   5123, -15136,	838,  -9682,   6228, -25059, -15650, -21412,  10997,   5550,   6073,  -5750,  	0
};

//static int16_t testVector[] =
//{
//     	1,1,1,1,1,1,1,1,1,1
//};


int16_t bitCollection[BITNUM];

int16_t symbolsCollection[BITNUM];

int16_t Reconstruction[48];

int16_t delayLine[61];

int16_t padBitCollection[TOTBITNUM];

int16_t RXBits[TOTBITNUM];

int16_t bitCollection2[BITNUM];
int16_t boop=BITNUM;

/*
 *
 *  main( )
 *
 */
void main( void )
{



    //clear delayline
    int16_t i=0;
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
    int16_t errors=error_detection(bitCollection,bitCollection2);

    volatile float error_percent=errors;

    error_percent=error_percent/BITNUM;

    error_percent=error_percent*100;



}









void bit_extraction(int16_t* inData,int16_t* outData){
	int16_t i=0;
	int16_t j=0;
	int16_t temp=0;
	for(i=0;i<BITNUM;i++){//for every sample get its bits
		for(j=0;j<16;j++){//16 bits per sample
			temp=inData[i] & (1<<j);
			temp=temp>>j;
			outData[(i*16)+(j)]=temp;
		}
	}

}

void symbol_extraction(int16_t* inData,int16_t* outData){
	int16_t i=0;
	for(i=0;i<BITNUM;i++){
		if(inData[i]==0){
			outData[i]=-1000;
		}else{
			outData[i]=1000;
		}
	}
}

void zeroPadding(int16_t* inData,int16_t* outData){
	int16_t i=0;
	int16_t j=0;
	int16_t k=0;
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

void downSample(int16_t* inData,int16_t* outData){
	int16_t i=0;
	int16_t j=NUMTAPS-1;
	int16_t k=0;
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


void number_reconstruction(int16_t* inData,int16_t* outData){
	int16_t i=0;
	int16_t j=0;
	int16_t temp=0;
	for(i=0;i<BITNUM;i++){//for every sample get its bits
		temp=0;
		for(j=0;j<16;j++){//16 bits per sample
			temp=temp | (inData[(i*16)+(j)]<<j);
		}
		outData[i]=temp;
	}
}

void noiser(int16_t SNR, int16_t* inData,int16_t* outData){
	//get power of incoming signal
	int32_t sigPower=0;
	int16_t noisePower=0;
	int16_t noise=0;
	int16_t i=0;

	for(i=0;i<TOTBITNUM;i++){
		sigPower=_smac(sigPower,inData[i],inData[i]);
	}
	sigPower=sigPower/TOTBITNUM;

	int16_t maxNoise=0;

	noisePower=sigPower/SNR;

	maxNoise = sqrt(2*noisePower);
	maxNoise =maxNoise*2;

	for(i=0;i<TOTBITNUM;i++){
		noise=rand() % (maxNoise + 1);
		noise=noise-maxNoise;

		outData[i]=inData[i]+noise;
	}

}

int16_t error_detection(int16_t* TXSig,int16_t* RXSig){
	int16_t i=0;
	int16_t errors=0;
	for(i=0;i<BITNUM;i++){
		if(TXSig[i]!=RXSig[i]){
			errors=errors+1;
		}
	}
	return errors;
}
