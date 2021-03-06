function plotDataPoints(X, idx, K)
%PLOTDATAPOINTS plots data points in X, coloring them so that those with
%the same index assignments in idx has the same color
%   PLOTDATAPOINTS(X, idx, K) plots the data points in X, coloring them
%   so that those with the same index assignments in idx have the same
%   color

% Create palette
palette = hsv(K + 1);     % creates a color map
colors = palette(idx, :); % color [m x 3] is color assignments to data

% Plot the data
scatter(X(:,1), X(:,2), 15, colors); %plots x1 = X(:,1) on the x axis
                                     %plots x2 = X(:,2) on the y axis
                                     %15 is size of the market
                                     %colors is m x 3 matrix defining
                                     %the RGB color of each market
                                     %individually

end
