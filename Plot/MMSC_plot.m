plot(x,y1,x,y2,x,y3,x,y4',x,y5',x,y6',x,y7',x,y8',x,y9','LineWidth',2);
% legend('ACC-MMSC','NMI-MMSC','PUR-MMSC','ACC-SMVMKL','NMI-SMVMKL','PUR-SMVMKL','ACC-RSMVMKL','NMI-RSMVMKL','PUR-RSMVMKL','NumColumns',3);
legend('ACC-CoregMVSC','NMI-CoregMVSC','PUR-CoregMVSC','ACC-SMVMKL','NMI-SMVMKL','PUR-SMVMKL','ACC-RSMVMKL','NMI-RSMVMKL','PUR-RSMVMKL','NumColumns',3);
legend('boxoff');
yticks(0:.1:1);

% xlim([0 10])
ylim([0.2 .7]);
xlabel('Weight control parameter in MVSC');
savefig('Reuters_RSMVMKL_vs_MVSC.fig');
%ylim auto;
% grid on;