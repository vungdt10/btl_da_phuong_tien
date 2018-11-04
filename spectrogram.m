win = 128;    %Do dai

hop = win/2;   

figure(3);

nfft = win;

spectrogram(a,win,hop,nfft,fs,'yaxis');

yt = get(gca,'YTick'); 

set(gca,'YTickLabel', sprintf('%.0f|',yt));

title('Spectrogram');