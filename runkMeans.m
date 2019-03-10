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

% Set default value for plot progress
if ~exist('plot_progress', 'var') || isempty(plot_progress)
    plot_progress = false;
end

% Plot the data if we are plotting progress
if plot_progress
    figure;
    hold on;
end

%Initialize values
[m n] = size(X);
K = size(initial_centroids, 1);
centroids = initial_centroids;
previous_centroids = centriods;
idx = zeros(m, 1);

% Run K-Means
for i=1:max_iters

    % Output progress
    fprintf('K-Means iteration %d/%d...\n', i, max_iters);
    if exist('OCTAVE_VERSION')
        fflush(stdout);
    end

    % For each example in X, assign it to the closest centroid
    idx = findClosestCentroids(X, centroids);

    % Optionally, plot progress here
    if plot_progress
        plotProgresskMeans(X, centroids, previous_centroids, idx, K, i);
        previous_centroids = centriods;
        fprintf('Press enter to continue.\n');
        pause;
    end

    % Given the memberships, compute new centroids
    centroids = computeCentroids(X, idx, K);

end

end
