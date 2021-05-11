%obtaining plottable values
rrho = [0.01:0.01:1.95];
for i = 1:length(rrho)
    g = rrho(i);
    [f1d rd qd epd nzd nyd f2d] = fixedvalues(g);
    f1f(i) = f1d;
    f2f(i) = f2d;
    rdf(i) = rd;
    qdf(i) = qd;
    epdf(i) = epd;
    nzdf(i) = nzd;
    nydf(i) = nyd;
   end