
% alpha=1e-4;
% beta=100;%25
% mu=0.1;
% res=[];
% z=[]
% % for i=1:6
% %     for j=((i-1)*30+1):i*30
% %         z=[z;i]
% %     end
% % end
% % y=z;
% for t =1:50
%     r=0.3;%rate of labeled data
%
%     [m,n,rr,tt]=size(Kernel);
%     c=length(unique(y)); % number of class
%     numperc=floor(n/c); % number of data per class
%     labelperc=floor(r*numperc); % number of labeled data per class
%     labelindperc=sort(randperm(numperc,labelperc)); % index of labeled data selected
%     labelind=[]; % labelind: index of known label
%     for i=1:c
%         labelind=[labelind labelindperc+(i-1)*numperc];
%     end
%
%     [result]=selfweightmklsemi_MV(Kernel,y,labelind,alpha,beta,mu)
%     % plot=[plot;alpha gama result];
%     res=[res;result];
% end



alpha_all=[1e-6 1e-5 1e-4 1e-3];
mu_all = [.01 .1 1 10];
beta_all=[100 1000];
r=0.3;%rate of labeled data
res=[];
plot=[];

for i=1:2
    beta=beta_all(i);
    for ss=1:4
        alpha = alpha_all(ss);
        for tt=1:4
            mu=mu_all(tt);
            res=[];
            for i=1:20
                
                [m,n,rr,t]=size(Kernel);
                c=length(unique(y)); % number of class
                numperc=floor(n/c); % number of data per class
                labelperc=floor(r*numperc); % number of labeled data per class
                labelindperc=sort(randperm(numperc,labelperc)); % index of labeled data selected
                labelind=[]; % labelind: index of known label
                for i=1:c
                    labelind=[labelind labelindperc+(i-1)*numperc];
                end
                
                [result]=selfweightmklsemi_MV(Kernel,y,labelind,alpha,beta,mu)
                res=[res;result];
                
            end
            mn20=mean(res);
            res=sort(res,'descend');
            mn10=mean(res(1:10,:));
            plot=[plot;alpha mu mn20 mn10 beta];
        end
    end
end
save('SSC_Robust_MV_allparameter_MSRC','plot')
