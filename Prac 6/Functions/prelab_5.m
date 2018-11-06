## Copyright (C) 2018 Quintin
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
## @deftypefn {} {@var{retval} =} prelab_5 (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: Quintin <quintin@quintin-Inspiron-15-3567>
## Created: 2018-11-05

function [] = prelab_5 (K)
  # K = 10
  F1 = tf([10],[1 2 4 10])
  pzmap(F1);
  hold on;
  
  # K = 12
  F2 = tf([12],[1 2 4 12])
  pzmap(F2);
  hold on;
  
  # K = 1
  F3 = tf([1],[1 2 4 1])
  pzmap(F3);
  hold on;
  
  # K = 0.5
  F4 = tf([0.5],[1 2 4 0.5])
  pzmap(F4);
  hold on;
  
  # K = 16
  F5 = tf([16],[1 2 4 16])
  pzmap(F5);
  hold off;
  
  legend('K=10', 'K=12', 'K=1', 'K=0.5', 'K=16');

endfunction
