function centroid = meanCentroid(X, idx, k)
%MEANCENTROID returns the a new centroid by computing the means of the
%data points assigned to the centroid.
%   centroid = MEANCENTROID (X, idx, k) returns a new centroid by
%   computing the mean of the data points assigned to the kth centroid.
%   It is given a dataset X where each row is a single data point, a vector
%   idx of centroid assignments (i.e. each entry in range [1..K] for each
%   example, and k, the index of the centroid being calculated.
%   Returns a centroid of size 1 x n.

%boolean vector of indices that are assigned k
isK = (idx == k);

%number of Xs assigned K
numIsK = nnz(isK);

%filter training examples assigned k
XisK = isK .* X;

%sum up the relevant Xs
centroid = sum(XisK, 1);

%take the average
centroid /= numIsK;

end
