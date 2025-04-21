a = [0,0];
b = [1,2];
c = [2,7];

x = linspace(-1,3);
y = 7/2 * x - .5;

figure;
plot(x, y, 'k-', 'LineWidth', 2); hold on;
plot(a(1), a(2), 'ro', 'MarkerSize', 8,'MarkerFaceColor', 'r', 'DisplayName', 'Point a');
plot(b(1), b(2), 'go', 'MarkerSize', 8,'MarkerFaceColor', 'g', 'DisplayName', 'Point b');
plot(c(1), c(2), 'mo', 'MarkerSize', 8,'MarkerFaceColor', 'm', 'DisplayName', 'Point c');
grid on;
hold on;

saveas(gcf, "best_line.png")
