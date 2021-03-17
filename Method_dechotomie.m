n=0;
a=1;
b=2;
eps=1e-2;
while (b-a) > eps
    x=(a+b)/2;
    if sign(f(a))==sign((f(x)))
        f(a)==f(x);
        a=x;  
    else
        f(b)==f(x);
        b=x;
    end
    n=n+1;
end
fprintf('numbre of the iteration %d ',n)
fprintf('f(x)=0 for x equal to %d ',x)

function ff=f(x)
    ff=x.^3+2.*x-7;
   % disp(ff)
end