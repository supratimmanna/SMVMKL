alpha_all=[1e-6 1e-5 1e-4 1e-3];
gam_all = [1 5 10 15 20 25];
% r_all = [.1 .3 .5];
beta_all=[10 100];
% r=0.1;%rate of labeled data
res=[];
plot=[];

for b=1:2
    beta=beta_all(b);
    
    for data=1:3
        Kernel=cell2mat(K4(data));
        y=cell2mat(Y(data));
        
        for ss=1:4
            alpha = alpha_all(ss);
            for tt=1:4
                gam=gam_all(tt);
                res=[];
                for i=1:20
                    
                    result=selfweightmkl_MV_3rdmethod(Kernel,y,alpha,beta,gam)
                    res=[res;result];
                    
                end
                mn20=mean(res);
                res=sort(res,'descend');
                mn10=mean(res(1:10,:));
                maxacc=max(res(:,1));
                plot=[plot;alpha gam maxacc mn10 data beta];
            end
        end
    end
end
save('ACC_Iter_AllData_Clustering_gam.mat','plot');
