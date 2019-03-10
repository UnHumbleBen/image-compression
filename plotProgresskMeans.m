function plotProgresskMeans(X, centroids, previous, idx, K, i)
%PLOTPROGRESSKMEANS is a helper function that dipslays the progress of
%k-MEans as it is running. It is intended for use only with 2D data.
%   PLOTPROGRESSKMEANS(X, centroids, previous, idx, K, i) plots the data
%   points with colors assigned to each centroid. With the previous
%   centroids, it also plots a line between the previous locations and
%   current locations of the centroids.
%

% Plot the examples
plotDataPoints(X, idx, K);

% Plot the centroids as black x's
% plot the centroid x-coord (centroids(:,1) on x-axis
% plot the centroid y-coord (centroids(:,2) on y-axis
% 'x' specifies the cross marker
% 'MarkerEdgeColor' specifies the edge color of the market
% 'k' specifies black
% 'MarkerSize' specifies the size of the marker
% 10 specifies size of market to 10
% 'LineWidth specifies the width of the stem
% 3 specifies the LineWidth
plot(centroids(:,1), centroids(:,2), 'x', ...
     'MarkerEdgeColor', 'k', ...
     'MarkerSize', 10, 'LineWidth', 3);

% Plot the history of the centroids with lines
% looping over 1 to K
for j=1:size(centroids,1)
    % Draws a line from the current centroid  centroids(j, :)
    % to previous centroid  previous(j, :)
    drawLine(centroids(j, :), previous(j, :));
end

% Title
title(sprintf('Iteration number %d', i))

end
