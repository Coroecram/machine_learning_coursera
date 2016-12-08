function [X_norm, mu, sigma] = featureNormalize(X)
%FEATURENORMALIZE Normalizes the features in X 
%   FEATURENORMALIZE(X) returns a normalized version of X where
%   the mean value of each feature is 0 and the standard deviation
%   is 1. This is often a good preprocessing step to do when
%   working with learning algorithms.

% You need to set these values correctly
X_norm = X;
mu = zeros(1, size(X, 2));
sigma = zeros(1, size(X, 2));

% ====================== YOUR CODE HERE ======================
% Instructions: First, for each feature dimension, compute the mean
%               of the feature and subtract it from the dataset,
%               storing the mean value in mu. Next, compute the 
%               standard deviation of each feature and divide
%               each feature by it's standard deviation, storing
%               the standard deviation in sigma. 
%
%               Note that X is a matrix where each column is a 
%               feature and each row is an example. You need 
%               to perform the normalization separately for 
%               each feature. 
%
% Hint: You might find the 'mean' and 'std' functions useful.
%       


avg_size = mean(X(:, 1));
sd_size = std(X(:, 1));
avg_bedrooms = mean(X(:, 2));
sd_bedrooms = std(X(:, 2));

for iter = 1:length(X)
  
  X(iter, 1) = (X(iter, 1) - avg_size)/sd_size;
  X(iter, 2) = (X(iter, 2) - avg_bedrooms)/sd_bedrooms;

end

for check = 1:10
  disp(X);
end

% ============================================================

end
