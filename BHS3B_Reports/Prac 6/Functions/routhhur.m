function [y, array] = routhhur(x);

%function y = routhhur(x);
%  This function compute the number of roots of x with positive
%  real part, i.e. unstable poles of the system. This is based
%  on a straightforward computation of the Routh array.

[m, n] = size(x);

if m > 1 
  if n == 1, 
    x=x.'; n = m; m = 1; 
  else
    error('This doesn''t work for a matrix case'); 
  end
end

order = n-1; % as indexes start at 1
is_even = order-2*fix(order/2)==0;

h = floor((n+1)/2); % Routh table width

array = zeros(1+order, h);
array(1,:) = x(1:2:n);

% In the Routh table, every two line we 'lose' another column. But
% this starts in the third line for an odd order, and in the second
% line in an even order.

if is_even,
  array(2,1:h-1) = x(2:2:n);
  indk = 3;
else
  array(2,:) = x(2:2:n);
  indk = 2;
end

% Ensure the second row is not made of all zeros, or replace it by the 
% auxiliary polynomial

if all(abs(array(2,:)) < eps),
  for indj = 1:h-1,
    array(2, indj) = array(1, indj)*(order - 2 * (indj-1));
  end
end

for indo = order-2:-1:0,
  indi = 1 + order - indo; 

  if abs(array(indi-1, 1)) > 0,
    for indj = 1:h-floor(indk/2),
      array(indi, indj) = array(indi-2, indj+1) ...
	  - array(indi-1, indj+1) * array(indi-2, 1)/array(indi-1, 1);
    end
  else
    for indj = 1:h-floor(indk/2),
      array(indi, indj) = array(indi-2, indj+1) ...
	  - array(indi-1, indj+1) * array(indi-2, 1)/(eps+array(indi-1, 1));
    end
  end

  % Don't consider columns with all zeros -- compute the auxiliary polynomial
  if all(abs(array(indi,:)) < eps),
    for indj = 1:h-1,
      array(indi, indj) = array(indi-1, indj)*(indo + 1 - 2 * (indj-1));
    end
  end
    
  indk = indk + 1;

end

% Compute the number of sign changes

y = 0;

for indi = 2:order+1,

  if array(indi-1,1)*array(indi,1) < 0,
    y = y + 1;
  end

end
