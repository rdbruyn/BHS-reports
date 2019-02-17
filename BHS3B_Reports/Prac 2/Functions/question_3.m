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
## @deftypefn {} {@var{retval} =} question_3 (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: root <root@quintin-Inspiron-15-3567>
## Created: 2018-08-30

function [F, expanded, simplified] = question_3 ()
  syms t;
  f = 0.0075 - 0.0072 .* exp(-8 .* t) + 0.00034 .* exp(-2.5 .* t) .* cos(22 .* t) + 0.087 .* exp(-2.5 .*t ) .* sin(22 .* t);
  F = laplace(f);
  expanded = expand(F);
  simplified = simplify(F);
 
endfunction
