fs = 128;
N = 2560;
n = 0: N-1;
t = n / fs;
x = (0 <= t & t < 5) .* (cos(10 * pi * t) + 2 * sin(30 * pi * t)) + (5 <= t & t < 10) .* cos(40 * pi * t) + (10 <= t & t < 15) .* (cos(60 * pi * t) + 0.6 * sin(90 * pi * t)) + (15 <= t & t <= 20) .* sin(100 * pi * t);
y = fft(x, N);
mag = abs(y);
f = n * fs / N;
plot(f, mag);

window=gausswin(128);
spectrogram(x,window);