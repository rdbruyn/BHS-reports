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
## @deftypefn {} {@var{retval} =} question_1_lab (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: root <root@quintin-Inspiron-15-3567>
## Created: 2018-10-21

function [retval] = question_1_lab ()
  syms s;
  G1 = tf([1],[1,1])
  G2 = tf([1],[1,4])
  G3 = tf([1 3],[1 5])
  
  G = tf([1,3],[1,10,29,20])
  
  subplot(4,1,1);
  step(G1,s);
  subplot(4,1,2);
  step(G2,s);
  subplot(4,1,3);
  step(G3,s);
  subplot(4,1,4);
  step(G,s);
  
  
endfunction

