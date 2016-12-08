function [theta, J_history] = gradientDescentMulti(X, y, theta, alpha, num_iters)
%GRADIENTDESCENTMULTI Performs gradient descent to learn theta
%   theta = GRADIENTDESCENTMULTI(x, y, theta, alpha, num_iters) updates theta by
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);

for iter = 1:num_iters
  
  accums = zeros(size(X, 2), 1);
  num_vars = size(X, 2)
    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCostMulti) and gradient here.
    %

for row = 1:m
  
  for gen = 1:num_vars
    accums(gen) = accums(gen) + ((X(row,:) * theta) - y(row)) * X(row, gen); 
  end
  
  
end

for kthe = 1:num_vars
 
  theta(kthe) = theta(kthe) - (alpha * (accums(kthe)/m));
  
end
disp(accums);
disp(theta);

    % ============================================================

    % Save the cost J in every iteration    
    J_history(iter) = computeCostMulti(X, y, theta);

end

end
