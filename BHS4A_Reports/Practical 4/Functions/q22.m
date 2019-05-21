function q22(sampling_time, pole_locations)
  pkg load control;
  pkg load signal;
  
  plant = tf([0 0 7], [1 0 0]);
  [A, B, C, D] = tf2ss(plant);
  d_plant = c2d(plant, sampling_time);
  K = place(A, B, pole_locations);
  A_cl = A - B*K;
  
  syscl = ss(A_cl, B, C, D);
  k_r = 1/dcgain(syscl);
  syscl_scaled = ss(A_cl, B * k_r, C, D);
  d_scaled = c2d(syscl_scaled, sampling_time);
  step(d_scaled);
endfunction
