subplot(2,2,1)
x = linspace(0,3,33);
plot(x,s1,'LineWidth',2,'color','r');
ylim([0 1]);
title('Error Convergence Analysis for Reuters Dataset when labeled dataset=10%');
xlabel('Iteration Number');
ylabel('Error');

subplot(2,2,2)
x = linspace(0,3,33);
plot(x,s2,'LineWidth',2,'color','g');
ylim([0 1]);
title('Error Convergence Analysis for Reuters Dataset when labeled dataset=30%');
xlabel('Iteration Number');
ylabel('Error');

subplot(2,2,3)
x = linspace(0,3,33);
plot(x,s1,'LineWidth',2,'color','b');
ylim([0 1]);
title('Error Convergence Analysis for Reuters Dataset when labeled dataset=50%');
xlabel('Iteration Number');
ylabel('Error');