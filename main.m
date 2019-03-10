%% Initialization
clear; close all; clc

%% Find Close Centroids
fprintf('Finding closest centroids. \n\n');

% Load an example dataset  X
load('exampleData.mat');

% Select an intial set of centroids
K = 3; % 3 Centroids
initial_centroids = [3 3; 6 2; 8 5;];

% Find the closest centroids for the examples using the
% initial_centroids
idx = findClosestCentroids(X, initial_centroids);

fprintf('Closest centroids for the first 3 examples: \n')
fprintf(' %d', idx(1:3));
fprintf('\n(the closest centroids should be in 1, 3, 2 respectively\n');

fprintf('Program paused. Press enter to continue.\n');
pause;

%% Compute Means
fprintf('\nComputing centroids means.\n\n');
% Compute means based on closest centroids found previously
centroids = computeCentroids(X, idx, K);

fprintf('Centroids computed after initial findings of closest centroids: \n')
fprintf(' %f %f \n', centroids');
fprintf('\n(the centroids should be\n');
fprintf('   [ 2.428301 3.157924 ]\n');
fprintf('   [ 5.813503 2.633656 ]\n');
fprintf('   [ 7.119387 3.616684 ]\n\n');

fprintf('Program paused. Press enter to continue.\n');
pause;

