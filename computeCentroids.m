function centroids = computeCentroids(X, idx, K)
%COMPUTECENTROIDS returns the new centroids by computing the means of the
%data points assigned to each centroid.
%   centriods = COMPUTECENTROIDS(X, idx, K) returns the new centroids by
%   computing the means of the data points assigned to each centroid. It is
%   given a dataset X where each row is a single data point, a vector
%   idx of centroid assignment (i.e. each entry in range [1..K])
%   for each example, and K, the number of centroids. 
%   returns a matrix centroids, where each row of centroids is the mean of
%   the data points assigned to it.

% Useful variables
[m n] = size(X);

% Initialize return value
centroids = zeros(K, n);

% Loop over the centroids
for k = 1:K
    centroids(k) = meanCentroid(X, idx, k);
endfor

end
