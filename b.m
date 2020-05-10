% For (b)
clc
clear all
syms s
G2 = (s+1)*(s+7)/((s+2)*(s+5)); % System Transfer Function

Kp = limit(G2,s,0) % when input is step, error constant, Kp is calculated
Es = 1/(1+Kp)      % form of steady state error, Es for step input

Kv = limit(s*G2,s,0) % when input is ramp, error constant, Kv is calculated
Er = 1/(Kv)      % form of steady state error, Er for ramp input

Ka = limit(G2*s^2,s,0) % when input is parabolic, error constant, Kp is calculated
Ep = 1/(Ka)      % form of steady state error, Ep for step parabolic