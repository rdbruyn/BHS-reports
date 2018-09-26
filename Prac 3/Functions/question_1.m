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
## @deftypefn {} {@var{retval} =} quetion_1 (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: root <root@quintin-Inspiron-15-3567>
## Created: 2018-09-22

function [] = question_1()
  syms s;
  
  g1 = tf([1],[1,1]);
  g2 = tf([2],[1,2]);
  g3 = tf([3],[1,3]);
  
  y1 = step(g1);
  y2 = step(g2);
  y3 = step(g3);
  
  step(g1,'r');
  hold on;
  step(g2,'g');
  hold on;
  step(g3,'b');
  hold on;
  
   final = 1;
  y = 0.63*final;
  plot([0,5],[y,y]);
  hold off;
  
  legend('g1','g2','g3', 't_a')
  

endfunction
