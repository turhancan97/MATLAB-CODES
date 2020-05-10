% For (a)
clc
clear all
syms s
G1 = 1/(3*s^2+4*s+1); % System Transfer Function

Kp = limit(G1,s,0) % when input is step, error constant, Kp is calculated
Es = 1/(1+Kp)      % form of steady state error, Es for step input

Kv = limit(s*G1,s,0) % when input is ramp, error constant, Kv is calculated
Er = 1/(Kv)      % form of steady state error, Er for ramp input

Ka = limit(G1*s^2,s,0) % when input is parabolic, error constant, Kp is calculated
Ep = 1/(Ka)      % form of steady state error, Ep for step parabolic