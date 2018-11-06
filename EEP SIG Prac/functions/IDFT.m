function out = IDFT(input)
  N = length(input);
  out = DFTdir(conj(input)) / N;
endfunction