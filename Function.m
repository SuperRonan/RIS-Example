function Y = Function(X)
    global  RIS_FUNCTION;
    if RIS_FUNCTION == 0
        Y = (6 .* X + normpdf(X, 0.3, 0.1) + 0.5 .* normpdf(X, 0.7, 0.05) + 0.15 .* normpdf(X, 0.1, 0.025) + 0.1 .* cos(40.*X) - 2.* (X - 0.5) .^ 2) .* 0.25;
    elseif RIS_FUNCTION == 1
        Y = ones(size(X));
        Y(X > 0.1 & X < 0.2) = 3;
        Y(X > 0.5 & X < 0.7) = 2;
        Y(Y == 1) = 0;
    else
        Y = 2 .* X;
    end
    Y(Y < 0) = 0;
end

