function [avg_time, data_arr] = DFTdir_performance(input)
  total = 0;
  k = 3;
  data_arr = zeros(1, k);
  for i = 1:k
    t = DFTdir_time(input);
    total += t;
    data_arr(i) = t;
  endfor
  avg_time = total / k;
endfunction