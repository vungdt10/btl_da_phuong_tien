fs = 44100; 

r = audiorecorder(fs, 16, 1); 

record(r)

stop(r)

g = getaudiodata(r);

sound(g,fs);

audiowrite('orig_input.wav', g, fs);

[x, fs] = audioread('orig_input.wav');          

t = 0 : 1/fs : 0.8;                       

f1 = 420;                                  

f2 = 2 * f1;

f3 = 3 * f1;

f4 = 4 * f1;

f5 = 5 * f1;

f6 = 6 * f1;

f7 = 7 * f1;

A1 = .3; A2 = A1/2; A3 = A1/3; A4 = A1/4; A5 = A1/5; A6 = A1/6; A7 = A1/7;

w = 0;



y1 = A1 * sin( 2 * pi * f1 * t + w );

y2 = A2 * sin( 2 * pi * f2 * t + w );

y3 = A3 * sin( 2 * pi * f3 * t + w );

y4 = A4 * sin( 2 * pi * f4 * t + w );

y5 = A5 * sin( 2 * pi * f5 * t + w );

y6 = A6 * sin( 2 * pi * f6 * t + w );

y7 = A7 * sin( 2 * pi * f7 * t + w );



y = [y1 y5 y7 y1 y2 y3 y4 y7 y6 y2 y4 y3 y5 y1 y2 y3];

size(x)

z=x+y(1:length(456704));

for i = 1:1

      for j = 1:309248

            z(j,i) = x(j,i) + y(i+j);

    end

   end

sound(z,fs);

audiowrite('melody.wav', z, fs);