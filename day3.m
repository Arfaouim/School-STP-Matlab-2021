
%%% suite teste testez vous 4
%suite(9) 

%%%
nbr_of_iteration=10000;
pi_monte=Montecarlo(nbr_of_iteration);
disp('\pi monte calculated ')
disp(pi_monte)
disp('Estimeted value of \mid \pi - \pi_{monte} \mid ')

abs(pi-pi_monte)