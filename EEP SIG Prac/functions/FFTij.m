function out = FFTij(input)
  out = butterflies(reordering(input));
endfunction