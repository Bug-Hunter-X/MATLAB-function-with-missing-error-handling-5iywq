```matlab
function result = myFunctionImproved(input)
  % Check for valid input
  if ~isnumeric(input)
    error('Input must be a numeric value.');
  end

  % Perform calculation with error handling
  try
    if input > 10
      result = input * 2; 
    else
      result = input / 2; 
    end
  catch e
    error('An error occurred during calculation: %s', e.message);
  end
end

% Example usage
input = 5; 
result = myFunctionImproved(input);
disp(result);
input = 15;
result = myFunctionImproved(input);
disp(result);
input = 'abc';
result = myFunctionImproved(input);
disp(result);
```