function dist = findDistance(x, centroid)
%FINDDISTANCE computes the squared distance between centroid and example
%   dist = FINDDISTANCE (x, centroid) returns the squared distance
%   between training example x and centroid. x and centroid are both
%   1 x n, where n is the number of features

% compute the difference vector
diff = x - centroid;

% compute the distance squared
dist = diff' * diff;

end
