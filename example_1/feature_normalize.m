function [norm_o] = feature_normalize(X)

mu = sum(X,2)/size(X,2);
%num = (gsubtract(X,mu));
%sigma = (sum(num.^2,2)/size(X,2)).^1/2;
%norm_o = gdivide(num,sigma);

n = size(X,1);

max_X = max(X,[],2);
min_X = min(X,[],2);

%num = zeros(size(X));

for i = 1:n
    num(i,:) = max_X(i) - X(i,:);
end

den = max_X-min_X;

for i = 1:n
    norm_o(i,:) = 0.8*(num(i,:)/den(i))+0.1;
end