%plotting
subplot(3,1,1)
plot(rrho,f1f)
hold
plot(rrho,f2f)
axis([0 10 0 6])
xlabel("rho")
legend("f1","f2")
subplot(3,1,2)
plot(rrho,rdf)
hold
plot(rrho,qdf)
axis([0 10 -30 30])
xlabel("rho")
legend("r","q")
subplot(3,1,3)
plot(rrho,nzdf)
hold
plot(rrho,nydf)
axis([0 10 0 1])
xlabel("rho")
legend("nz","ny")