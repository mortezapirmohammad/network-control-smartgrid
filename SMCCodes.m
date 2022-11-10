%%in  th9e name of god 
%elyasi simulation codes---MP
clc;
close all;
clear;

global  eta_d  eta_q eta_ds eta_qs  phi Vdc F_pwm Rf Lf RL
global Ll R L C Rl f0 Vn Lt g Rt lambda gs Lg  omega0 Ts
%controller parameters
lambda=1e10;
% beta=1e18; 
% p=7;
% q=5;
eta_d=1e27;
eta_q=1e27;        
eta_ds=1e5;
eta_qs=1e5;
phi=0.01;
Ts=0.50e-5;


 %plant parameters
Vdc= 1000;
omega0= 314;
F_pwm= 10000;
Rf= 40e-3;% filter resistance
Lf = 10e-3;% filter inductance
RL=0.1; %%Transmission line resistance
Ll= 31e-6; %%Transmission line inductance
R=4.33;
L= 100e-3;
C= 1e-12;
Rl = 0.1;
f0 = 50;
Vn= 220;

Lg= 0;
Rt= Rf +RL; 
Lt = Lf + Ll;
% g= -1/(Lt*C);
g=-10e14;
 gs= -1/Lt;
% gs=-100;
% set_param(0,'GlobalUseClassicAccelMode','on');
% set_param('SMC','AccelVerboseBuild','on');