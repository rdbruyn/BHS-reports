function out = butterflies(input)
  N = length(input);
  m = log2(N);
  for s = 1:m
    bsep = 2^s;
    p = N/bsep;
    bwidth = bsep/2;
    for j = 0:bwidth-1
      r = p * j;
      theta = 2 * pi * r / N;
      wn = complex(cos(theta), -sin(theta));
      for topval = j:bsep:N-1
        botval = topval + bwidth;
        temp = input(botval + 1) * wn;
        input(botval + 1) = input(topval + 1) - temp;
        input(topval + 1) = input(topval + 1) + temp;
      endfor
    endfor
  endfor
  
  out = input;
endfunction