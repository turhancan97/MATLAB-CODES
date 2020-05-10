% For (c)
clc
clear all
syms s
G3 = (s^2+12*s+35)/(s^4+5*s^3+4*s^2); % System Transfer Function

Kp = limit(G3,s,0) % when input is step, error constant, Kp is calculated
Es = 1/(1+Kp)      % form of steady state error, Es for step input

Kv = limit(s*G3,s,0) % when input is ramp, error constant, Kv is calculated
Er = 1/(Kv)      % form of steady state error, Er for ramp input

Ka = limit(G3*s^2,s,0) % when input is parabolic, error constant, Kp is calculated
Ep = 1/(Ka)      % form of steady state error, Ep for step parabolic