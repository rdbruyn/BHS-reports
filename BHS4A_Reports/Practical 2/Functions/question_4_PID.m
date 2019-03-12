## Copyright (C) 2019 Quintin
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
## @deftypefn {} {@var{retval} =} question_4_PID (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: Quintin <quintin@quintin-Inspiron-15-3567>
## Created: 2019-03-10

function [retval] = question_4_PID (Kp,Ki,Kd)
  J = 0.012;
  b = 0.105;
  K = 0.01;
  R = 1;
  L = 0.505;
  G = tf([R*b+K^2],[J*L (L*b+R*J) R*b+K]);
  D = tf([Kd Kp Ki],[1 0])
  H = feedback(D * G)
  step(H)
endfunction
