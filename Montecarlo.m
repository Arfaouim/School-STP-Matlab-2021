function [pii]=Montecarlo(n)
format long;
ND=0;
for i=1:n
    x=rand()*2-1;
    y=rand()*2-1;
    if ((x.^2+y.^2)<1)
        ND=ND+1;
    end
    pii=4*ND/i;
    plot(i,pii,'r.');
    hold on;
end
hold off;
end