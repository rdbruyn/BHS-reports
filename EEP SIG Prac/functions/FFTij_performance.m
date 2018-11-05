function [avg_time, data_arr] = FFTij_performance(input)
  total = 0;
  k = 20;
  data_arr = zeros(1, k);
  for i = 1:k
    t = FFTij_time(input);
    total += t;
    data_arr(i) = t;
  endfor
  avg_time = total / k;
endfunction