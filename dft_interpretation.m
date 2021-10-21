fc=10;
fs=32*fc;
t=0:1/fs:2-1/fs; %2 Seconds Duration
g=cos(2*pi*fc*t);
subplot(4,1,1);
plot(t,g);
title('Input Cosine Signal')
ylim([-1.2 1.2]);
xlabel('Time');
ylabel('Amplitude');
subplot(4,1,2);
stem(t,g);
ylim([-1.2 1.2]);
xlabel('Time');
ylabel('Amplitude');

subplot(4,1,3);
N=256;
sf1=fft(g,N);
sf1=sf1(1:N/2);
msf1=abs(sf1)
f=(0:N/2-1)*fs/N;
plot(f,msf1);
xlabel('Frequency');
ylabel('Magnitude');
title('FFT of Input Signal');

subplot(4,1,4);
stem(f,msf1);
xlabel('Frequency');
ylabel('Magnitude');
title('FFT of Input Signal');