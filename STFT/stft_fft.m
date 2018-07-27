fs = 128;
N = 2560;
n = 0: N-1;
t = n / fs;
x = (0 <= t & t < 5) .* (cos(10 * pi * t) + 2 * sin(30 * pi * t)) + (5 <= t & t < 10) .* cos(40 * pi * t) + (10 <= t & t < 15) .* (cos(60 * pi * t) + 0.6 * sin(90 * pi * t)) + (15 <= t & t <= 20) .* sin(100 * pi * t);

for i = 1 : 20
    y(i, :) = fft(x((i - 1) * N / 20 + 1 : i * N / 20), N);
end

z = zeros(2560, 2560);
for i = 1 : N
    z(i, :) = y(ceil(i / fs), :);
end

mag = abs(z);
f = n * fs / N;
mesh(t, f, mag);
view(0, 90);