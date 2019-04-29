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
pkg load symbolic;
pkg load signal;
pkg load control;
# student number 216008466 uses M = 16Kg, m = 0.6kg and l = 3.5m
%Question 1.1
A = [0 1 0 0;0.302 0 0 0;0 0 0 1;-0.56 0 0 0];
B = [0 ;-5/59; 0; 1/2.8];
C = [1 0 0 0;0 0 1 0];
sys = ss(A,B,C);
step(sys);

[num,den] = ss2tf(A,B,C);
transfer = tf(num,den);
figure;
zpk(transfer);

%Qestion 2.1
# Eigen values of A gives pole locations of the system
P = eig(A)

# These poles must be changed to some other values giving the transint response 
# demanded by the question

OS = 0.2;
ts = 1.5;

zeta = (-log(OS))/(sqrt(pi^2 + (log(OS))^2));
wn = 4.6/(ts*zeta);
sigma = zeta * wn;
wd = sqrt(wn^2 - sigma^2);

p1 = (-sigma + wd*i);
p2 = 1.382*(-sigma);
p3 = (-sigma - wd*i);
p4 = 1.382*(-sigma);

poles_desired = [p1 p2 p3 p4];

# Using place as apposed to acker for better accuracy , get the needed gains for
# placing the poles at the desired locations 
K = place(A,B,poles_desired);

# Give the new dynamic matrix A the values palcing the system at the desired pole 
# locations 
A_controlled = A-B*K;

System_controlled = ss(A_controlled,B,C);
figure;
step(System_controlled);
endfunction
