clc
clear all
close all


% simulation

%end-effector working position
x_end = 8;
y_end = 3;

%create a line movement of the end-effector from default to working position
%all position created are equally spaced
x = linspace(0.1,x_end,5);
y = linspace(0,y_end,5);

%length of both link
l1 = 5;
l2 = 5;

%cosine to find second angle
c2 = (x.^2+y.^2-l1^2-l2^2)/(2*l1*l2);
s2 = sqrt(1-c2.^2);
%second angle relation
theta2 = atan2d(s2,c2);
%equation to find the first angle
theta1 = atan2d(y,x)-atan2d(l2*s2,l1+l2*c2);

%simulation of planar arm
sim_planar_arm(theta1,theta2,l1,l2)