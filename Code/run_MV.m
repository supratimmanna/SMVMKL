warning off

% % load YALE_165n_1024d_15c_zscore_uni1.mat
% load Data.mat

alpha=1e-5;
beta=1000;
gama=0.1;
res=[];
% plot=[];



result=selfweightmkl_MV_3rdmethod(Kernel,y,alpha,beta,gama)
res=[res;result];

for i= 1:10
    result=selfweightmkl_MV_3rdmethod(Kernel,y,alpha,beta,gama)
    res=[res;result];
end
% plot=[plot;alpha gama result];