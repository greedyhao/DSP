close all;
M = 50;
n = [0:1:M-1];
hd = ideal_lp(0.2*pi,M);

% rectangular
w_rect = (rectwin(M))';
[db_rec,mag_rec,pha_rec,grd_rec,w_rec] = freqz_m_2pi(w_rect,[1]);
h = hd .* w_rect;
[db_h,mag_h,pha_h,grd_h,w_h] = freqz_m_2pi(h,[1]);

subplot(2,2,1);
stem(n,w_rect);axis([-5 M+4 0 1.1]);
xlabel('n');ylabel('w(n)');
title('Rectangular Window');

subplot(2,2,2);
plot(w_rec/pi,fftshift(db_rec));
axis([0.5 1.5 -40 1]);
xlabel('frequency in pi units');ylabel('decibels');
title('Amplitude Response in dB');

subplot(2,2,3);
plot(w_rec/pi,fftshift(mag_rec));
axis([0.5 1.5 0 55]);
xlabel('frequency in pi units');ylabel('Wr');
title('Amplitude Response');

subplot(2,2,4);
plot(w_h/pi,fftshift(db_h));
axis([0 2 -50 10]);
xlabel('frequency in pi units');ylabel('decibels');
title('Integrated Amplitude Response');

% triangular
figure;
w_triang = (triang(M))';
[db_tri,mag_tri,pha_tri,grd_tri,w_tri] = freqz_m_2pi(w_triang,[1]);
h = hd .* w_triang;
[db_h,mag_h,pha_h,grd_h,w_h] = freqz_m_2pi(h,[1]);

subplot(2,2,1);
stem(n,w_triang);axis([-5 M+4 0 1.1]);
xlabel('n');ylabel('w(n)');
title('Triangle Window');

subplot(2,2,2);
plot(w_tri/pi,fftshift(db_tri));
axis([0.5 1.5 -200 1]);
xlabel('frequency in pi units');ylabel('decibels');
title('Amplitude Response in dB');

subplot(2,2,3);
plot(w_tri/pi,fftshift(mag_tri));
axis([0.5 1.5 0 30]);
xlabel('frequency in pi units');ylabel('Wr');
title('Amplitude Response');

subplot(2,2,4);
plot(w_h/pi,fftshift(db_h));
axis([0 2 -100 0]);
xlabel('frequency in pi units');ylabel('decibels');
title('Integrated Amplitude Response');

% hanning
figure;
w_hann = (hann(M))';
[db_han,mag_han,pha_han,grd_han,w_han] = freqz_m_2pi(w_hann,[1]);
h = hd .* w_hann;
[db_h,mag_h,pha_h,grd_h,w_h] = freqz_m_2pi(h,[1]);

subplot(2,2,1);
stem(n,w_hann);axis([-5 M+4 0 1.1]);
xlabel('n');ylabel('w(n)');
title('Hanning Window');

subplot(2,2,2);
plot(w_han/pi,fftshift(db_han));
axis([0.5 1.5 -150 0]);
xlabel('frequency in pi units');ylabel('decibels');
title('Amplitude Response in dB');

subplot(2,2,3);
plot(w_han/pi,fftshift(mag_han));
axis([0.5 1.5 0 30]);
xlabel('frequency in pi units');ylabel('Wr');
title('Amplitude Response');

subplot(2,2,4);
plot(w_h/pi,fftshift(db_h));
axis([0 2 -150 0]);
xlabel('frequency in pi units');ylabel('decibels');
title('Integrated Amplitude Response');

% hamming
figure;
w_hamm = (hamming(M))';
[db_ham,mag_ham,pha_ham,grd_ham,w_ham] = freqz_m_2pi(w_hamm,[1]);
h = hd .* w_hamm;
[db_h,mag_h,pha_h,grd_h,w_h] = freqz_m_2pi(h,[1]);

subplot(2,2,1);
stem(n,w_hamm);axis([-5 M+4 0 1.1]);
xlabel('n');ylabel('w(n)');
title('Hamming Window');

subplot(2,2,2);
plot(w_ham/pi,fftshift(db_ham));
axis([0.5 1.5 -150 0]);
xlabel('frequency in pi units');ylabel('decibels');
title('Amplitude Response in dB');

subplot(2,2,3);
plot(w_ham/pi,fftshift(mag_ham));
axis([0.5 1.5 0 30]);
xlabel('frequency in pi units');ylabel('Wr');
title('Amplitude Response');

subplot(2,2,4);
plot(w_h/pi,fftshift(db_h));
axis([0 2 -150 0]);
xlabel('frequency in pi units');ylabel('decibels');
title('Integrated Amplitude Response');

% black
figure;
w_black = (blackman(M))';
[db_bla,mag_bla,pha_bla,grd_bla,w_bla] = freqz_m_2pi(w_black,[1]);
h = hd .* w_black;
[db_h,mag_h,pha_h,grd_h,w_h] = freqz_m_2pi(h,[1]);

subplot(2,2,1);
stem(n,w_black);axis([-5 M+4 0 1.1]);
xlabel('n');ylabel('w(n)');
title('Blackman Window');

subplot(2,2,2);
plot(w_bla/pi,fftshift(db_bla));
axis([0.5 1.5 -200 0]);
xlabel('frequency in pi units');ylabel('decibels');
title('Amplitude Response in dB');

subplot(2,2,3);
plot(w_bla/pi,fftshift(mag_bla));
axis([0.5 1.5 0 25]);
xlabel('frequency in pi units');ylabel('Wr');
title('Amplitude Response');

subplot(2,2,4);
plot(w_h/pi,fftshift(db_h));
axis([0 2 -200 0]);
xlabel('frequency in pi units');ylabel('decibels');
title('Integrated Amplitude Response');

% kaiser
figure;
w_kaiser = (kaiser(M,8.5))';
[db_kai,mag_kai,pha_kai,grd_kai,w_kai] = freqz_m_2pi(w_kaiser,[1]);
h = hd .* w_kaiser;
[db_h,mag_h,pha_h,grd_h,w_h] = freqz_m_2pi(h,[1]);

subplot(2,2,1);
stem(n,w_kaiser);axis([-5 M+4 0 1.1]);
xlabel('n');ylabel('w(n)');
title('Kaiser Window \beta = 8.5');

subplot(2,2,2);
plot(w_kai/pi,fftshift(db_bla));
axis([0.5 1.5 -200 0]);
xlabel('frequency in pi units');ylabel('decibels');
title('Amplitude Response in dB');

subplot(2,2,3);
plot(w_kai/pi,fftshift(mag_bla));
axis([0.5 1.5 0 25]);
xlabel('frequency in pi units');ylabel('Wr');
title('Amplitude Response');

subplot(2,2,4);
plot(w_h/pi,fftshift(db_h));
axis([0 2 -200 0]);
xlabel('frequency in pi units');ylabel('decibels');
title('Integrated Amplitude Response');
