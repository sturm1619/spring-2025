% Defining coordinate system (covenant) and graph range
rangeDense = -5:0.5:5;
rangeSparse = -5:2:5;

[covX2D, covY2D] = meshgrid(rangeDense, rangeDense);
[covX3D, covY3D, covZ3D] = meshgrid(rangeSparse, rangeSparse, rangeSparse);

function _ = graphVectorField2D(covX, covY, X, Y, filepath)
    quiver(covX, covY, X, Y);
    hold on;

    % Draw reference axis
    line([-6,6], [0,0], 'Color', 'k', 'LineStyle', '--');
    line([0,0], [-6,6], 'Color', 'k', 'LineStyle', '--');
    saveas(gcf, filepath);
    hold off;
end

function _ = graphVectorField3D(covX, covY, covZ, X, Y, Z, filepath)
    quiver3(covX, covY, covZ, X, Y, Z);
    hold on;

    % Draw reference axis
    line([-6,6], [0,0], [0,0], 'Color', 'k', 'LineStyle', '--', 'LineWidth', 2);
    line([0,0], [-6,6], [0,0], 'Color', 'k', 'LineStyle', '--', 'LineWidth', 2);
    line([0,0], [0,0], [-6,6], 'Color', 'k', 'LineStyle', '--', 'LineWidth', 2);
    saveas(gcf, filepath);
    hold off;
end

% F(x, y) = yi + (x+y)j
X = covY2D;
Y = covX2D + covY2D;
graphVectorField2D(
    covX2D, covY2D,
    X, Y, 'field_1.png'
    );

%F(x, y, z) = i + k
X = ones(size(covX3D));
Y = zeros(size(covY3D));
Z = ones(size(covZ3D));
graphVectorField3D(covX3D, covY3D, covZ3D, X,Y,Z, 'field_2.png');
