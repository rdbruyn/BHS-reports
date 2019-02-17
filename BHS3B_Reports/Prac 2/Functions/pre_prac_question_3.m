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
## @deftypefn {} {@var{retval} =} pre_prac_question_3 (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: root <root@quintin-Inspiron-15-3567>
## Created: 2018-09-01

function [] = pre_prac_question_3 ()
  syms s V;
  
  t1 = (s^2 + 7*s + 5)/s;
  t2 = -s-2;
  t3 = -5;
  t4 = -2-2;
  t5 = (2*s^2 + 4*s + 3)/s;
  t6 = -s-2;
  t7 = -5;
  t8 = -s-2;
  t9 = (s^2+8*s+4)/s;
  
  matrix = [t1,t2,t3;t4,t5,t6;t7,t8,t9];
  determinant_matrix = expand(det(matrix));
  
  # Matrices with relevant columns substituted for the answer column
  matrix_a1 = [V, t2, t3;0, t5, t6;0, t8, t9];
  matrix_a2 = [t1,V,t3;t4,0,t6;t7,0,t9];
  matrix_a3 = [t1,t2,V;t4,0,t6;t7,0,t9];
  
  # Determinants with the relevant matrix columns eliminated and replaced
  determinant_matrix_a1 = expand(det(matrix_a1));
  determinant_matrix_a2 = expand(det(matrix_a2));
  determinant_matrix_a3 = expand(det(matrix_a3));
  
  # Cramer's rule to find the mesh currents 
  mesh_current_1 =  determinant_matrix_a1/determinant_matrix
  mesh_current_2 =  determinant_matrix_a2/determinant_matrix
  mesh_current_3 =  determinant_matrix_a3/determinant_matrix
endfunction
