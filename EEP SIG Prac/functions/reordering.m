function out = reordering(input)
  N = length(input);
  m = log2(N);
  out = zeros(1, N);
  
  for k = 0:N-1
    naddr = 0;
    iaddr = k;
    for i = 0:m-1
      rmndr = mod(iaddr, 2);
      naddr = naddr + rmndr * 2^(m - 1 - i);
      iaddr = floor(iaddr/2);
      out(naddr + 1) = input(k + 1);
    endfor
  endfor
endfunction