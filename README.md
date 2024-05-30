### 2-PAM

Pulse Amplitude Modulation (PAM) is a way of communicating data and is commonly used in wired communication modes like ethernet, PCIE, and RAM. As such, methods of modulating the data quickly and with low bit-rate errors is required, which is the focus of this project. This project shows the implementation of 2-PAM both on a DSP board and in MATLAB, and an implementation of 16-PAM in MATLAB. It can be marked as complete due to the lack of the DSP board. A QAM implementation through an FPGA may be pursued in the future.

### Getting Started

The MATLAB programs can simply be imported into MATLAB and run. The code uses a test vector of random sinusoids added together to simulate an audio signal with a sampling rate of 4800, but additional ways of inputting data such as through actual music, live audio or entirely random data can be shown in the commented code. Keep in mind that the data has to upsampled correctly according to the Nyquist frequency, and that the live audio is absolutely not in real-time. 

The C program requires the TMDX5535ezdsp board to run, although the most of the code is transferrable to most processsors. It was coded using C in the Code Composer Studio 6.1.1 IDE. All that has to be done is to import the project into the IDE and run it to get the results. It uses the test vector created in MATLAB for it's implementation.

### Short PAM Theory

PAM is a modulation method used to convert analog data over to a digital format. This is done by first quantizing the data into distinct amplitudes, upsampling the data to model a carrier waveform at a higher frequency, and then applying a matching filter. Recieving the PAM is the complete opposite order as transmitting it. Quantizing the data allows for higher data rates by condencing the bits transmitted so that more bits can be represented in a distinct time frame. This requires a larger channel bandwidth to operate. Upsampling the data changes the signal to a higher frequency without changing the actual data, allowing for more channel bandwidth and less noise interference. The matching filter, which for this project is a raised cosine filter, gets rid of the higher frequencies and also gives the signal a distinct analog representation while still being digital in it's orientation.







