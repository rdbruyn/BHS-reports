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
## @deftypefn {} {@var{retval} =} prelab_question_1d (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: root <root@quintin-Inspiron-15-3567>
## Created: 2018-10-01

function [] = prelab_question_1d ()
  syms s;
  g1 = tf([25], [1 4 25])
  
  g6 = tf([25 5000] * (1/200), [1 4 25]);
  g7 = tf([25 1250] * (1/50), [1 4 25]);
  g8 = tf([25 250]  * (1/10), [1 4 25]);
  g9 = tf([25 50]   * (1/2), [1 4 25]);
  
  step(g1,'r');
  hold on;
  step(g6,'g');
  hold on;
  step(g7,'b');
  hold on;
  step(g8,'c');
  hold on;
  step(g7,'m');
  hold off;
  
  legend('G1', 'G6', 'G7', 'G8', 'G9');
  

endfunction
