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
## @deftypefn {} {@var{retval} =} question_4 (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: root <root@quintin-Inspiron-15-3567>
## Created: 2018-08-30

function [inverse] = question_4 ()
  syms s;
  numerator = 2.*(s+3).*(s+5).*(s+7);
  denominator = s.*(s+8).*(s^2 +10 .*s +100);
  F = numerator/denominator;
  inverse = ilaplace(F);
  
endfunction
