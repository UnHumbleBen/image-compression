%Initialization
clear ; close all; clc
addpath('../src');

fprintf('\nRunning K-Means clustering on pixels from an image.\n\n');

%   Load an image of a bird
%   imread loads the image as a h x w x 3 matrix
%       where h is the image height (in pixels)
%       where w is the image width  (in pixels)
%       and the last index represents red, green, or blue
%   double converts the numbers to double precision type
A = double(imread('../images/bird_small.png'));

% Divide by 255 so that all the values are in the range 0 - 1
A = A / 255;

% Size of the image [h w 3]
[h w ~] = size(A);

% Reshape the image into an Nx3 matrix where N = number of pixels.
% Each row will contain the Red, Green and Blue pixel values
% This gives the dataset matrix X that we will use K-Means on.
% X gets a (h * w) by 3 matrix with elements taken from A
X = reshape(A, h * w, 3);

% Run K-Means algorithm on this data
K = 16;
max_iters = 10;

% Randomly initialize the centroids
initial_centroids = kMeansInitCentroids(X, K);

% Run K-Means
[centroids, idx] = runkMeans(X, initial_centroids, max_iters);

fprintf('Program paused. Press enter to continue.\n');
pause;

%% Image Compression
fprintf('\nApplying K-Means to compress an image.\n\n');

% Find closest cluster members
idx = findClosestCentroids(X, centroids);


