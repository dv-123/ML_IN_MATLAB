function J = Compute_cost(X, y, weights)

m = length(y);

J = 0;

predictions = X*weights';
sqrErrors = (predictions-y).^2;
J = 1/(2*m) * sum(sqrErrors);


end
