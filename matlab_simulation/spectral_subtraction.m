
% spectral_subtraction.m
[y, fs] = audioread('test_audio.wav');
n = length(y);
Y = fft(y);
mag = abs(Y);
phase = angle(Y);
noise_est = mean(mag(1:200));
mag_clean = max(mag - noise_est, 0);
Y_clean = mag_clean .* exp(1j * phase);
y_clean = real(ifft(Y_clean));
audiowrite('../output/enhanced_output.wav', y_clean, fs);
