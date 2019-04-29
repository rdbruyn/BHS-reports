## Group members:
## Wesley Richardson - 201578882
## Stephen Marting - 201034152

## The student number that was used for this practical is 201578882
## 201578882
## 00000WXYZ
## Thus,
## W = 8
## X = 8
## Y = 8
## Z = 2

clear all; clc;

W=8;
X=8;
Y=8;
Z=2;

M = 2.8;
m = 0.18;
L = 0.5*(1 + 2);
g=9.8;

#_________________________Question 1____________________________#

#________________________Question 1.1___________________________#

A = [0 1 0 0; (((M+m)/(M*L))*g) 0 0 0; 0 0 0 1; (-(m/M)*g) 0 0 0];
B = [0; -(1/(M*L)); 0; (1/M)];
C = [1 0 0 0; 0 0 1 0];
D = 0;
sys = ss(A,B,C,D)

f=0.25;
t=0:0.01:15;
u=zeros(size(t));
x0=[1 0 0 0];
#step(sys)
#[y,t,x]=lsim(sys,u,t,x0);


%figure;
%plot(t,y);
%title('Cart and pendulum respone without conroller.');

#________________________Question 1.2___________________________#

OS = 0.2;
Ts = 1.5;

zeta = (-log(OS))/(sqrt(pi^2 + (log(OS))^2));
wn = 4.6/(zeta * Ts);
sigma = zeta * wn;
wd = sqrt(wn^2 - sigma^2);
pole1 = (-sigma + wd*i);
pole2 = 1.382*(-sigma);
pole3 = (-sigma - wd*i);
pole4 = 1.382*(-sigma);
poles = [pole1 pole2 pole3 pole4]

K = acker(A,B,poles);

sys_cl=ss(A-B*K,B,C,D);
step(sys_cl);

#[y,t,x]=lsim(sys_cl,u,t,x0);


#figure;
#plot(t,y);
#title('Step response of closed-loop system with full-state feedback controller')
#ylabel('Cart Position [m]')
#xlabel('Time [s]')
