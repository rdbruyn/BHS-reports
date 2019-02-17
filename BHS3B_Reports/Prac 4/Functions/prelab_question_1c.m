## Copyright (C) 2018 root
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
## @deftypefn {} {@var{retval} =} prelab_question_1c (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: root <root@quintin-Inspiron-15-3567>
## Created: 2018-10-01

function [] = prelab_question_1c ()
  syms s;
  g1 = tf([25], [1 4 25]);
  g3 = tf([25*20],[1 24 105 500]);
  g4 = tf([25*10], [1 14 65 250]);
  g5 = tf([25*2],[1 6 33 50]);
  
  step(g1,'r');
  hold on;
  step(g3, 'g');
  hold on;
  step(g4, 'b');
  hold on;
  step(g5, 'c');
  hold off;
  
  legend('G1', 'G3', 'G4', 'G5');
  
  
endfunction
