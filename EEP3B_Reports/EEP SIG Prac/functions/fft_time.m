function out = fft_time(input)
  tic();
  fft(input);
  out = toc();
endfunction