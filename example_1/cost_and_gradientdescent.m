function [weights, J_history] = cost_and_gradientdescent(X, y,  weights, alpha, num_iters)

%weights = zeros(1,size(X_train,2));
m = length(y);
J_history = zeros(num_iters, 1);

for i = 1:num_iters
    
    if i >=1400
        alpha = 0.25;
    end
    hypo = X*weights';
    diff = hypo - y;
    
    for j = 1:size(X,2)
        weights(j) = weights(j) - alpha*((1/m)*sum(diff.*X(:,j)));
    end
    
    J_history(i) = Compute_cost(X, y, weights);
    
end
J_history(i)
    
end
    