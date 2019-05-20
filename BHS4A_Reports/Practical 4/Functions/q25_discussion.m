function q25_discussion()
  pkg load control;
  pkg load signal;
  K =  5;
  Td =  3 / 5;
  Ti =  5 / 3;
  
  plant = tf([0 0 1], [1 1 0]);
  s = tf('s');
  controller = K * (1 + Td * s + 1/(Ti * s));
  sys = feedback(controller * plant);
  
  #sampling_arr = [1, .1, .01];
  #for i = 1:3
  #  T = sampling_arr(i)
  #  tustin = c2d(sys, T, 'tustin')
  #  mpz = c2d(sys, T, 'mpz')
  #endfor
  
  step(c2d(sys, 1, 'tustin'))
endfunction