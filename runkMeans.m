function [centroids, idx] = runkMeans(X, initial_centroids, ...
                                      max_iters, plot_progess)

%RUNKMEANS runs the K-Means algorithm on data matrix X, where each row of X
%is a single example
%   [centroids, idx] = RUNKMEANS(X, initial_centroics, max_iters, ...
%   plot_progress) runs the K-Means algorithm on data matrix X, where each
%   row of X is a single example. It uses the initial centroids used as the
%   initial centroids. max_iters specifies the total number of interactions
%   of K-Means to execute. plot_progress is a true/false flat that
%   indicates if the function should also plot its progress as the
%   the learning happens. This is set to false by default. runKMeans returns
%   centroids, a K x n matrix of the computed centroids and idx, a m x 1
%   vector of the centroid assignments (i.e. each entry in range [1..K])

end
