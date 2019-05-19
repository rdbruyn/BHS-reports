function [sys] = plotsys(Kp, Ki, Kd)
  ts = - 5 * 9.8 / (7 * tf('s'));
  sys = feedback(ts * pid(Kp, Ki, Kd))
  step(sys);
endfunction