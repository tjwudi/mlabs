function cost = computeCost(X, y, theta)

m = size(X, 1);
temp = X * theta - y;
cost = (1/(2*m))*(temp'*temp);

end
