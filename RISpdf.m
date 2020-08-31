function P = RISpdf(X, M, N)
    if M == 1
        P = SourcePDF(X);
    else
        if nargin == 2
            N = 1;
        end
        X_source = SourcePDF(X);
        X_target = Target(X);
        X_W = X_target ./ X_source;
        P = zeros(size(X));
        for i = 1 : N
            other_candidates = rand(M-1, size(X, 2));
            
            oc_source = SourcePDF(other_candidates);
            oc_target  = Target(other_candidates);
            oc_weight = oc_target ./ oc_source;
            oc_sum = sum(oc_weight, 1);
            total_sum = oc_sum + X_W;
            
            RISPDF = (M .* X_target) ./ total_sum;
            RISPDF(total_sum == 0) = 1 / M;
            P = P + RISPDF;
        end
        P = P ./ N;
    end
end

