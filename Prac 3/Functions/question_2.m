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
## @deftypefn {} {@var{retval} =} question_2 (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: root <root@quintin-Inspiron-15-3567>
## Created: 2018-09-22

function [] = question_2 (input1, input2)
  g1 = tf([25],[1 4 25]);
  g2 = tf([37],[1 8 37]);
  g3 = tf([22],[1 2 22]);
  
  step(g1, 'r');
  hold on;
  step(g2,'g');
  hold on;
  step(g3, 'b');
  hold off;
  
  legend('g1', 'g2', 'g3');
  
endfunction
