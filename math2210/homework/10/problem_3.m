clc; clear; close all;

% Define range for y
y = linspace(0, 2, 50);

% Define x and z bounds based on y
[X, Y] = meshgrid(linspace(0, 4 - y.^2, 50), y);
Z1 = zeros(size(X));  % Bottom surface at z = 0
Z2 = 2 - Y;           % Top surface at z = 2 - y

figure;
hold on;

% Bottom surface
surf(X, Y, Z1, 'FaceAlpha', 0.5, 'EdgeColor', 'none');

% Top surface
surf(X, Y, Z2, 'FaceAlpha', 0.5, 'EdgeColor', 'none');

% Side surfaces
Y_side = linspace(0, 2, 50);
X_side1 = zeros(size(Y_side));
X_side2 = 4 - Y_side.^2;
Z_side = linspace(0, 2 - Y_side, 50);

[Xs, Zs] = meshgrid(X_side1, Z_side);
surf(Xs, repmat(Y_side, size(Zs, 1), 1), Zs, 'FaceAlpha', 0.5, 'EdgeColor', 'none');

[Xs, Zs] = meshgrid(X_side2, Z_side);
surf(Xs, repmat(Y_side, size(Zs, 1), 1), Zs, 'FaceAlpha', 0.5, 'EdgeColor', 'none');

xlabel('X'); ylabel('Y'); zlabel('Z');
title('Surface plot of the region');
grid on; view(3);
hold off;
