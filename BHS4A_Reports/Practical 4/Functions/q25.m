function [k, td, ti] = q25()
  pkg load control;
  pkg load signal;
  s = tf('s');

  for Kp = 1:50
    for Kd = 1:50
      for Ki = 1:50
        [Kp, Kd, Ki]
        fflush(stdout);
        syscl = tf([0 Kd Kp Ki], [1 (Kd+1) Kp Ki]);
        [wn, z] = damp(syscl);
        
        # Look for it...
        found = true;
        for i = 1:3
          if (wn(i) <= 1 || z(i) <= 0.5)
            found = false;
            break;
          endif
        endfor
        if (found)
          k = Kp
          td = Kd/Kp
          ti = Kp/Ki
          syscl
          return;
        endif
      endfor
    endfor
  endfor
  
endfunction