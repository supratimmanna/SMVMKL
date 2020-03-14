
% x=[ACC; NMI; PUR];
ylim([0 1]);
bar(y,.55);
% legend({'view1', 'view2', 'view3', 'SMVMKL', 'RSMVMKL'},'Location','northwest','NumColumns',4);
legend({'MMSC', 'Co-Train', 'Co-Reg', 'MVCSK', 'SMVMKL', 'RSMVMKL'},'Location','NorthEast ','NumColumns',3);
% set(h,'FontSize',5);
legend('boxoff');
somenames={'ACC' ; 'NMI' ; 'PUR'}
set(gca,'xticklabel',somenames)

savefig('Caltech_RSMVMKL_vs_MVSC.fig')

% set(gca,'yticklabel',[0:0.1:1]);

