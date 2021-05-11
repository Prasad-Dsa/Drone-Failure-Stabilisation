%function returns values for each selected rho
function [f1 r q ep nz ny f2] = fixedvalues(joi)
syms nz ny q r f1 ep
kt = 1.69e-2;
kf = 6.41e-6;
gamma = 2.75e-3;
rho = joi
m=0.5;
g= 9.8;
l = 0.17;
IxxT = 3.2e-3;
IzzT = 5.5e-3;
IzzP = 1.5e-5;
%runrho = [0.01:0.01:2];
%F1 = zeros(1,length(runrho));
[f1 r q ep nz ny]=vpasolve((kt/gamma)*f1*(2-rho)-r==0, f1*(2+rho)*nz==m*g, ny-(ep*q)==0, nz-(ep*r)==0, ep-sqrt(1/(q^2 + r^2))==0, 0==(rho*f1*l) -(IzzT-IxxT)*q*r-(IzzP/sqrt(kf))*q*(2+sqrt(rho))*(f1^(1/2)),f1, r, q, ep, nz, ny)
f2 = rho*f1
