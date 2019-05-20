function [k, td, ti] = q25()
  pkg load control;
  pkg load signal;
  s = tf('s');

  for K = 1:50
    for Td = 1:50
      for Ti = 1:50
        [K, Td, Ti]
        fflush(stdout);
        controller = K * (1 + Td * s + 1/(Ti * s));
        plant = tf([0 0 1], [1 1 0]);
        syscl = feedback(controller * plant);
        [wn, z] = damp(syscl);
        
        # Look for it...
        found = true;
        for i = 1:3
          if (wn(i) < 1 || z(i) < 0.5)
            found = false;
            break;
          endif
        endfor
        if (found)
          k = K
          td = Td
          ti = Ti
          syscl
          return;
        endif
      endfor
    endfor
  endfor
  
endfunction