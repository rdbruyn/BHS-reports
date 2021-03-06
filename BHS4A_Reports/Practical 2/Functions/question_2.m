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
## @deftypefn {} {@var{retval} =} question_2 (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: Quintin <quintin@quintin-Inspiron-15-3567>
## Created: 2019-03-10

function question_2 (J,b,K,R,L)
  
A = [0,1,0;0,(-b/J),(K/J); 0 -(K/L),-(R/L)];
B = [0;0;(R*b + K^2)/(L*K)];
C = [1,0,0;0,1,0];
D = [0;0];

[num,den] = ss2tf(A,B,C,D);
H = tf(num,den)
step(H);


endfunction
