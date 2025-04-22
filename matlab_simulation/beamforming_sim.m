
% beamforming_sim.m
[x1, fs] = audioread('test_audio.wav');
x2 = circshift(x1, 10); % simulate second mic with delay
array_input = [x1'; x2'];

% Simple delay-and-sum
aligned = [x1'; circshift(x2', -10)];
beamformed = mean(aligned, 1);
audiowrite('../output/enhanced_output.wav', beamformed', fs);
