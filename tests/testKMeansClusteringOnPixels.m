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
