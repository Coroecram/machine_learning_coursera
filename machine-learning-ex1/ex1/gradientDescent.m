function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESENT(X, y, theta, alpha, num_iters) updates theta by 
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);
J = 0;
temp_one = 0;
temp_two = 0;

for iter = 1:num_iters

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCost) and gradient here.
    %

  J = computeCost(X, y, theta);
  disp(J);

  first_deriv = 0;
  second_deriv = 0;
  
for col = 1:m
  
  first_deriv = first_deriv + ((theta(1, 1)*X(col, 1) + theta(2)*X(col, 2)) - y(col)); 
  second_deriv = second_deriv + ((theta(1, 1)*X(col, 1) + theta(2)*X(col, 2)) - y(col) * X(col, 2));

end

temp_one = theta(1) - (alpha * (first_deriv)/m);
temp_two = theta(2) - (alpha * (second_deriv)/m);

theta(1) = temp_one;
theta(2) = temp_two;
    % ============================================================

    % Save the cost J in every iteration    
    J_history(iter) = computeCost(X, y, theta); 

end

end
