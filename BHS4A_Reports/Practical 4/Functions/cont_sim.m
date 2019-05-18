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
  pkg load signal
  g = 9.8;
  
  G = tf([5*g],[1 0 0]);
  step(G);
  
  cont_control = pid(1,1,1)
  cont_final_tf = feedback(G*cont_control)
  [num den] = tfdata(cont_final_tf, 'v');
  
  step(cont_final_tf);
  
  [z,p,_] = tf2zp(num,den) ;  
endfunction
