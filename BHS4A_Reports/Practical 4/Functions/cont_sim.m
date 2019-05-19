## Copyright (C) 2019 root
## 
## This program is free software; you can redistribute it and/or modify it
## under the terms of the GNU General Public License as published by
## the Free Software Foundation; either version 3 of the License, or
## (at your option) any later version.
## 
## This program is distributed in the hope that it will be useful,
## but WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
## GNU General Public License for more details.
## 
## You should have received a copy of the GNU General Public License
## along with this program.  If not, see <http://www.gnu.org/licenses/>.

## -*- texinfo -*- 
## @deftypefn {} {@var{retval} =} cont_sim (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: root <root@quintin-Inspiron-15-3567>
## Created: 2019-05-16

function [retval] = cont_sim (input1, input2)
  pkg load control;
  pkg load signal;
 
  plant = tf([-5*9.8],[7 0 0]);
  cont_cont = pid(70,18,40)
  plot(cont_cont);
  hold on;
  dis_cont = c2d(cont_cont,6.47,'tustin')
  
  step(dis_cont)
  
  
  

  

endfunction
