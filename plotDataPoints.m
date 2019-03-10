function plotDataPoints(X, idx, K)
%PLOTDATAPOINTS plots data points in X, coloring them so that those with
%the same index assignments in idx has the same color
%   PLOTDATAPOINTS(X, idx, K) plots the data points in X, coloring them
%   so that those with the same index assignments in idx have the same
%   color

% Create palette
palette = hsv(K + 1);     % creates a color map
colors = palette(idx, :); % color [m x 3] is color assignments to data

end
