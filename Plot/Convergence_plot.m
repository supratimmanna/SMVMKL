 x = linspace(0,30,33);
plot(x,S_Error,'LineWidth',2,'color','r');
% yticks(0:.1:1);
% 
% % xlim([0 10])
ylim([0 1]);
% title('Error Convergence Analysis for Animal with Attribute Dataset');
xlabel('Iteration Number');
ylabel('Error');
savefig('REUTERS_SSC_Conv.fig')
% hold on
% plot(x,s2,'LineWidth',2,'color','g');

% plot(x,s3,'LineWidth',2,'color','b');
