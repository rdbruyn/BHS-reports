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
## @deftypefn {} {@var{retval} =} question_1 (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: Quintin <quintin@quintin-Inspiron-15-3567>
## Created: 2019-04-24

function [retval] = question_1 ()
# student number 216008466 uses M = 16Kg, m = 0.6kg and l = 3.5m

A = [0 1 0 0;0.302 0 0 0;0 0 0 1;-0.56 0 0 0];
B = [0 ;-5/59; 0; 1/2.8];
C = [1 0 0 0;0 0 1 0]
sys = ss(A,B,C)
step(sys);
[NUM,DEN] = ss2tf(A,B,C)
T = tf(NUM,DEN)

# Need to implemenent a controller giving stability 

endfunction
