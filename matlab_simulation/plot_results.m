
% plot_results.m
[y_orig, ~] = audioread('test_audio.wav');
[y_enh, ~] = audioread('../output/enhanced_output.wav');
subplot(2,1,1); plot(y_orig); title('Original Speech');
subplot(2,1,2); plot(y_enh); title('Enhanced Speech');
