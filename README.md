###2-PAM

Pulse Amplitude Modulation (PAM) is a way of communicating data and is commonly used in wired communication modes like ethernet, PCIE, and RAM. As such, methods of modulating the data quickly and with low bit-rate errors is required, which is the focus of this project. This project shows the implementation of 2-PAM both on a DSP board and in MATLAB, and an implementation of 16-PAM in MATLAB. It can be marked as complete due to the lack of the DSP board.

###Getting Started

The MATLAB programs can simply be imported into MATLAB and run. The code uses a test vector of random sinusoids added together to simulate an audio signal with a sampling rate of 4800, but additional ways of inputting data such as through actual music or entirely random data can be shown in the commented code. Keep in mind that the data has to upsampled correctly according to the Nyquist frequency. 

The C program requires the TMDX5535ezdsp board to run, although the most of the code is transferrable to most processsors. It was coded using C in the Code Composer Studio 6.1.1 IDE. All that has to be done is to import the project into the IDE and run it to get the results.







