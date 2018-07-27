fs = 128;
N = 2560;
n = 0: N-1;
t = n / fs;

x = (0 <= t & t < 5) .* (cos(10 * pi * t) + 2 * sin(30 * pi * t)) + (5 <= t & t < 10) .* cos(40 * pi * t) + (10 <= t & t < 15) .* (cos(60 * pi * t) + 0.6 * sin(90 * pi * t)) + (15 <= t & t <= 20) .* sin(100 * pi * t);

for i = 1 : N
    y(1, i) = x(i) * exp(-0.5 * x(i)^2) * cos(2 * pi * x(i));
    y(2, i) = x(i) * exp(-0.5 * x(i)^2) * cos(2 * pi * x(i) / 2);
    y(3, i) = x(i) * exp(-0.5 * x(i)^2) * cos(2 * pi * x(i) / 5);
end

mag = abs(y);

plot(t, mag);