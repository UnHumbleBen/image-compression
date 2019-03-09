%% Intialization
clear; close all; clc

%% Find Close Centroids
fprintf('Finding closest centroids. \n\n');

% Load an example dataset  X
load('ex7data2.mat');

% Select an intial set of centroids
K = 3; % 3 Centroids
initial_centroids = [3 3; 6 2; 8 5;]

% Find the closest centroids for the examples using the
% initial_centroids
idx = findClosestCentroids(X, initial_centroids);
