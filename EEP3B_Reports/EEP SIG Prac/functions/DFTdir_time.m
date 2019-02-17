function out = DFTdir_time(input)
  % Take input of DFT as usual, but return a time value
  tic();
  DFTdir(input);
  out = toc();
endfunction