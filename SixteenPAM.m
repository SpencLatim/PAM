clear all;
clc;
%testVector = randi([0, 2^16 - 1], 1, 300, 'uint16');
%test_vector = audioread('Song1.wav');


%________________________________________________________________________%
%Creating the test vector
Fs = 4800; % Hz
duration = .05; 
freq1 = 100; 
freq2 = 1000;
freq3 = 2200;
freq4 = 550;

t = linspace(0, duration, duration * Fs);

%trying to simulate an audio signal somewhat
sinu = sin(2 * pi * freq1 * t) + sin(2*pi*freq2 * t) + sin(2*pi*freq3 * t) + sin(2*pi*freq4 * t);

sin_n = int16((sinu/max(sinu)) * (2^15));



%variable initialization
[coeff,N] = CosineFilter();

Myerror = 0;
MATLABerror = 0;
test_vector = zeros(1, numel(sin_n) * 4 );
test_vector2 = zeros(1, numel(sin_n) * 4 );
binary = zeros(1, numel(test_vector2) * 4);
deModulate = zeros(1, numel(test_vector)-N);
deModulate1 = zeros(1, numel(deModulate));
%________________________________________________________________________%

%converting int16 to binary and setting equal to either 1 or -1
for i = 1:numel(sin_n)

    binary_r = int16(dec2bin(sin_n(i), 16));

for j = 1:16
    binary(16*(i-1) + j) = binary_r(j)-48;
end
end


for i = 1:numel(binary)/4
    dec_num = binary((i - 1) * 4 + 1 : i * 4);
    test_vector(i) = bi2de(dec_num, 'left-msb');
end

for i = 1:numel(test_vector)
    if(test_vector(i) <= 7)
        test_vector2(i) = 4*(test_vector(i) + 1);
    else
        test_vector2(i) = -4*(test_vector(i) - 7);
    end
end

max(test_vector2)
min(test_vector2)


%_______________________________________________________________________%
%Upsampling the test vector 10x and performing the Filtering

Carrier = zeros(1, numel(test_vector) * 10);

for i = 1:numel(test_vector2)
    Carrier((i-1)*10 + 1) = 20  * test_vector2(i);
end
%1, 11, 21, 31, 41, 51...

T_OUT = filter(coeff, 1, Carrier);
T_OUT = T_OUT(N/2 + 1:end);

%______________________________________________________________________%
%adding of channel noise


%channelSig = awgn(T_OUT, 2);
channelSig = additiveNoise(T_OUT, 10, 1, numel(T_OUT));

%______________________________________________________________________%
%Recieving the filtered data, refiltering, and then setting back to 1/0's

R_IN = filter(coeff, 1, channelSig);
R_IN = 32*R_IN(N/2 + 1:end)/max(R_IN);


for i = 1:numel(test_vector)-N
    deModulate(i) = R_IN((i-1)*10 + 1);

    if(0 <= deModulate(i) && deModulate(i) < 4.5)
        deModulate1(i) = 0;
    elseif(4.5 <= deModulate(i) && deModulate(i)< 10)
        deModulate1(i) = 1;
    elseif(10 <= deModulate(i) && deModulate(i)< 14)
        deModulate1(i) = 2;
    elseif(14 <= deModulate(i) && deModulate(i)< 18)
        deModulate1(i) = 3;
    elseif(18 <= deModulate(i) && deModulate(i)< 22)
        deModulate1(i) = 4;
    elseif(22 <= deModulate(i) && deModulate(i)< 26)
        deModulate1(i) = 5;
    elseif(26 <= deModulate(i) && deModulate(i)< 30)
        deModulate1(i) = 6;
    elseif(30 <= deModulate(i) && deModulate(i)< 32)
        deModulate1(i) = 7;
    elseif(-4.5 <= deModulate(i) && deModulate(i)< 0)
        deModulate1(i) = 8;
    elseif(-10 <= deModulate(i) && deModulate(i)<= -4.5)
        deModulate1(i) = 9;
    elseif(-14 <= deModulate(i) && deModulate(i)<= -10)
        deModulate1(i) = 10;
    elseif(-18 <= deModulate(i) && deModulate(i)<= -14)
        deModulate1(i) = 11;
    elseif(-22 <= deModulate(i) && deModulate(i)<= -18)
        deModulate1(i) = 12;
    elseif(-26 <= deModulate(i) && deModulate(i)<= -22)
        deModulate1(i) = 13;
    elseif(-30 <= deModulate(i) && deModulate(i)<= -26)
        deModulate1(i) = 14;
    else
        deModulate1(i) = 15;
    end
end




%___________________________________________________________________%
%Detecting how many wrong bits

o = pammod(binary, 16, 0, 'bin');
o1 = pamdemod(o, 16, 0, 'bin');


for i = 1:numel(test_vector(N + 1:end))
    if (test_vector(i) ~= deModulate1(i))
       Myerror = Myerror + 1;
    end
    if (test_vector(i) ~= o1(i))
        MATLABerror = MATLABerror + 1;
    end
end

subplot(2,1,1)
%plot(1:1000,T_OUT(1:1000))
stairs(test_vector2(1:200))
%plot(1:200, deModulate1(1:200))
title('Quantized Signal')
subplot(2,1,2)
plot(T_OUT(1:2000))
%plot(1:200, test_vector(1:200),'r')
title('Transmitted Modulated Signal')

%scatterplot(T_OUT,16)   %Constellation Diagram


plot of impulse response and magnitude for filter
 [H, F] = freqz(coeff, 1, 4096, 48000); 
 plot(F, 20*log10(abs(H)), F, -60)
 figure;
 impz(coeff)




function[y] = additiveNoise(x, snr, m, n) %input sig, snr, dimensions of input sig

p = sum((x(:)).^ 2) / length(x(:));
p = 10 * log10(p);
np = p - snr;
y = x + (sqrt(np))*randn(m,n);

end



function[b,N] = CosineFilter()
Fs = 48000;  % Sampling Frequency

N    = 60;         % Order
Fc   = 5700;       % Cutoff Frequency
TM   = 'Rolloff';  % Transition Mode
R    = 0.5;       % Rolloff
DT   = 'Normal';   % Design Type
Beta = 0.5;        % Window Parameter

% Create the window vector for the design algorithm.
win = kaiser(N+1, Beta);

% Calculate the coefficients using the FIR1 function.
b  = firrcos(N, Fc/(Fs/2), R, 2, TM, DT, [], win);
end