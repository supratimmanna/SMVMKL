ACC=[];
alpha_x = [1e-6 1e-5 1e-4 1e-3];
gama_y = plot(1:4,2);
% acc_z=[0 0.2 0.4 0.6 0.8 1];
% nmi_z = plot(:,3);
% ACC=[ACC plot(1:6,3) plot(7:12,3) plot(13:18,3) plot(19:24,3)];
ACC=[ACC plot(17:20,5) plot(21:24,5) plot(25:28,5) plot(29:32,5)];
% ACC=[ACC plot(1:6,4) plot(7:12,4) plot(13:18,4) plot(19:24,4)];
% ACC=[ACC plot(1:6,5) plot(7:12,5) plot(13:18,5) plot(19:24,5)];
% ACC=[ACC plot(1:6,6) plot(7:12,6) plot(13:18,6) plot(19:24,6)];
% ACC=[18 18 18 18; 18 18 18 18; 18 18 18 18; 18 18 18 18];
figure;
bar3(ACC);
title('for {\beta} = 1000')
xlabel('{\alpha}');
ylabel('{\lambda}');
% zlabel('No. of Iteration');
zlabel('ACC');
set(gca, 'XTickLabel', alpha_x);
set(gca, 'YTickLabel', gama_y);
zlim([0 1]);
savefig('SSC_MV_Robust_ACC_allparameter_b1000_MSRC');
% grid off