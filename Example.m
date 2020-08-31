X = linspace(0, 1, 1024);

target = 2.*X;

P = ones(size(X));

PrM2 = 2 .* X .* log((X+1) ./ X);
PrM3 = 3 .* X .* ((X + 2) .* log(X + 2) + (-2 .* X - 2) .* log(X + 1) + X .* log(X));

plot(X, target, 'k--');
hold on;
plot(X, P);
hold on;
plot(X, PrM2);
hold on;
plot(X, PrM3);
hold off;

legend('target', 'M = 1', 'M = 2', 'M = 3');