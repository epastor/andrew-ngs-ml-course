function J = computeCost(X, y, theta)
%COMPUTECOST Compute cost for linear regression
%   J = COMPUTECOST(X, y, theta) computes the cost of using theta as the
%   parameter for linear regression to fit the data points in X and y

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta
%               You should set J to the cost.

% Formula
% 1/2m∑(hθ(xi)−yi)^2


% Loop approach
% s = 0;
% l = 2;
% for i = 1:m,
%     prod = 0;
%     for k = 1:length(X(i,:))
%         h = X(i,k) * theta(k);
%         prod = prod + (h - y(i)).^2;
%     end;
%     s = s + prod;
% end;


% J = ( ( 1/(2*m) ) * s ) / 2;


% Vectorized approach:
J = ( 1/( 2*m ) ) * ( sum( ( (X * theta) - y ).^2 ) );



% =========================================================================

end
