function P = SourcePDF(X)
    P = ones(size(X));
    P(X < 0 | X > 1) = 0;
end

