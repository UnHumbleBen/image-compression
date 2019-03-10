function k = findClosestCentroid(x, centroids)
%FINDCLOSESTCENTROID computes the centroid membership for an example
%   k = FINDCLOSESTCENTROID (x, centroids) returns the closest centroid
%   in centroids to data example x. k is in the range [1..K], where K
%   is the number of classes.

% Set K
K = size(centroids, 1);
k = 0;
min_distance = Inf;

% Loop over the centroids
for k_index = 1:K
    centroid = centroids(k_index, :);
    dist = findDistance(x, centroid);

    if (dist < min_distance)
        k = k_index;
        min_distance = dist;
    endif
endfor

end
