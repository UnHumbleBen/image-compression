addpath("../src")

%% Initialization
clear ; close all; clc

%%K-Means Clustering
fprintf('\nRunning K-Means clustering on example dataset.\n\n');

%Load an example dataset
load('../data/exampleData.mat');

% Settings for running K-Means
K = 3;
max_iters = 10;

% For consistency, initializing centroids to specific values
initial_centroids = [3 3; 6 2; 8 5];

% Run K-means algorithm
[centroids, idk] = runkMeans(X, initial_centroids, max_iters, true);
fprintf('\nK-Means Done.\n\n');

fprintf('Program paused. Press enter to continue.\n');
pause; 
