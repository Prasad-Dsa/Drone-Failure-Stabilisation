function xd = evalode(t,s,m1,m2,bar,a,K)

xs = [bar.p;bar.q;bar.nx;bar.ny]

u = -K*(s-xs)

xd(1) = a*(s(2) - bar.q) + u(2)*m1;
xd(2) =-a*(s(1) - bar.p) + u(1)*m1;
xd(3) =-bar.nz*(s(2) - bar.q) + bar.r*(s(4)-bar.ny);
xd(4) = bar.nz*(s(1)-bar.p)-bar.r*(s(3)-bar.nx);
xd = xd'
end
