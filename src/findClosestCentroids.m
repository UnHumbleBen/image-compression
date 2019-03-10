function idx = findClosestCentroids(X, centroids)
%FINDCLOSESTCENTOIDS computes the centroid memberships for every example
%   idx = FINDCLOSESTCENTROIDS (X, centroids) returns the closest centroids
%   in idx for a dataset X where each row is a single example. idx = m x 1
%   vector of centroid assignments (i.e. each entry in range [1..K])

% Set K
K = size(centroids, 1);

% Set m (number of training examples)
m = size(X,1);

% Initializing idx
idx = zeros(m, 1);

% Looping over the examples
for i = 1:m
    % get the ith example
    x = X(i,:);
    % findClosest centroid and store it into idx
    idx(i) = findClosestCentroid(x, centroids);
endfor


end
