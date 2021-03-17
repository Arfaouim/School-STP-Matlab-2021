nmax=1000;
ND=0; %number of points inside the disc
for n = 1:nmax
    x = rand*2-1; % -1=< x =< 1
    y = rand*2-1; % -1=< y =< 1
      if sqrt(x^2+y^2) <= 1
          plot(x,y,'b.');
          ND = ND + 1;
      else
          figure(1)
          plot(x,y,'r.');
      end
      if ( mod(n,1000) == 0 )
          pi = 4 * ND / n;
          fprintf('%8.f4\n',pi);
      end
      hold on;
      figure(2)
      plot(pi,n)
  end
  hold off;
pi = 4 * ND / nmax;
fprintf('%8.4f\n',pi);

