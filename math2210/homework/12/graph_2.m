% Defining coordinate system (covenant) and graph range
rangeDense = -5:0.5:5;
[covX2D, covY2D] = meshgrid(rangeDense, rangeDense);

function _ = graphVectorField2D_Contour(covX, covY, f, X, Y, filepath)
    contour(covX, covY, f, -4:2:8, 'LineColor', 'r');
    hold on;
    quiver(covX, covY, X, Y);

    % Draw reference axis
    line([-6,6], [0,0], 'Color', 'k', 'LineStyle', '--');
    line([0,0], [-6,6], 'Color', 'k', 'LineStyle', '--');
    saveas(gcf, filepath); hold off;
end

% f(x,y) = x^2 - y
f = covX2D.^2 - covY2D;

% F(x, y) = 2xi - yj
X = 2 * covX2D;
Y = - ones(size(covY2D));
graphVectorField2D_Contour(
    covX2D, covY2D,
    f, X, Y, 'field_3.png'
    );
