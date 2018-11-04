 Y = fft(a);

plot(abs(Y));

figure(1);

N =length(a);  %Do dai

transform = fft(a)/N;

magTransform = abs(transform);

faxis = linspace(-N/2,N/2,N);

figure(2);

plot(faxis,fftshift(magTransform)); 

title('FFT');

xlabel('Frequency (Hz)');