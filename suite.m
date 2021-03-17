
%% suite

function u=suite(n)
    u0=1;
    u1=5;
    s=u0+u1;
    
    for i=2:n
        u2=3*u1-4*u0;
        s=s+u2;
        u0=u1;
        u1=u2;
    end    
    fprintf('the suite value for U%d',n)
    disp(u1)
end    