%Simple example of a Montecarlo method of pi calculation
%
%This script generates a figure in which pi value is plotted versus
%number of rand points to obtain it.
%
%

nmax=1000; % Numbre of rand points
ND=0; %number of points inside the disc
%format long;
for n = 1:nmax
    x = 2*rand()-1;
    y = 2*rand()-1;
      if sqrt(x^2+y^2) <= 1
          subplot(1,2,1);
          plot(x,y,'b.','marker','o');
          ND = ND + 1;
          xlabel('-1 =< x =< 1','fontsize',12,'fontweight','bold');
          ylabel('-1 =< y =< 1','fontsize',12,'fontweight','bold');
          
      else
          subplot(1,2,1);
          plot(x,y,'r.','marker','o');
          
      end
      hold on;
      subplot(1,2,2);
      pii = 4 * ND / n;
      plot(n,pii,'r.','marker','+');
      plot(n,3.14,'k','marker','.');
      xlabel('Number of Points nmax','fontsize',12,'fontweight','bold');
      ylabel('Approximate Value of \pi','fontsize',12,'fontweight','bold');
      hold on;
      title(['Estimeted Value of \pi Monte Carlo Method ', num2str(nmax),' Points'])
end
grid on;
legend('Exact \pi','Monte Carlo');
hold off;
saveas(gcf,'Pi_value.png')
pii = 4 * ND / nmax;
pii