function out = DFTdir (input)
  out = zeros(1, length(input));
  N = length(input);
  for k = 0:N-1
    temp = 0;
    for n = 0:N-1
      temp += input(n + 1) * exp(-i*2*pi*k*n/N);
    endfor
    out(k + 1) = temp;
  endfor
endfunction