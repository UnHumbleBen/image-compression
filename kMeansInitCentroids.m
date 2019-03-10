function centroids = kMeansInitCentroids(X, K)
%KMEANSINITCENTROIDS This function initializes K centroids that are to be
%used in K-Means on the dataset X
%   centroids = KMEANSINITCENTROIDS(X, K) returns K initial centroids
%   to be used with the K-Means on the dataset X

%Initialize the values
centroids = zeros(K, size(X, 2)); %size(X, 2) is n, the number of features

%Randomly reorders the indinces of the examples
randidx = randperm(size(X, 1));

%Take the first K examples as centroids
centroids = randidx(1:K, :);

end
