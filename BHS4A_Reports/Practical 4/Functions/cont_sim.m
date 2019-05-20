function [retval] = cont_sim (tsam,tsam1,tsam2,tsam3,tsam4)
  pkg load control;
  pkg load signal;

  plant = tf([5*9.8],[7 0 0])
  plant_dis_tsam1 = c2d(plant,tsam1,'tustin')
  plant_dis_tsam2 = c2d(plant,tsam2,'tustin')
  plant_dis_tsam3 = c2d(plant,tsam3,'tustin')
  plant_dis_tsam4 = c2d(plant,tsam4,'tustin')
  
  cont_cont = 0.28*tf([6.7 1],[0.106*6.7 1])

  feedback_cont = feedback(plant*cont_cont);
  #step(feedback_cont)
  # Rise time of 0.26882
  
  dis_cont_tus_tsam1 = c2d(cont_cont,tsam1,'tustin');
  dis_cont_tus_tsam2 = c2d(cont_cont,tsam2,'tustin');
  dis_cont_tus_tsam3 = c2d(cont_cont,tsam3,'tustin');
  dis_cont_tus_tsam4 = c2d(cont_cont,tsam4,'tustin');
  
  
  feedback_dis_tus_tsam1 = feedback(plant_dis_tsam1*dis_cont_tus_tsam1);
  feedback_dis_tus_tsam2 = feedback(plant_dis_tsam2*dis_cont_tus_tsam2);
  feedback_dis_tus_tsam3 = feedback(plant_dis_tsam3*dis_cont_tus_tsam3);
  feedback_dis_tus_tsam4 = feedback(plant_dis_tsam4*dis_cont_tus_tsam4);
  
  subplot(4,1,1);
  step(feedback_dis_tus_tsam1)
  subplot(4,1,2);
  step(feedback_dis_tus_tsam2)
  subplot(4,1,3);
  step(feedback_dis_tus_tsam3)
  subplot(4,1,4);
  step(feedback_dis_tus_tsam4)
  
  
endfunction
