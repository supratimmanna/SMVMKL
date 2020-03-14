alpha_all=[1e-6 1e-5 1e-4 1e-3];
mu_all = [.01 .1 1 10];
r_all = [.1 .3 .5];
beta_all=[25 100 10];
% r=0.1;%rate of labeled data
res=[];
plot=[];

for b=1:3
    beta=beta_all(b);
    for data=1:2
        Kernel= cell2mat(K4(data));
        y=cell2mat(Y(data));
        for rr = 1:3
            r=r_all(rr);
            for ss=1:4
                alpha = alpha_all(ss);
                for tt=1:4
                    mu=mu_all(tt);
                    res=[];
                    for i=1:20

                    [m,n,rr,tt]=size(Kernel);
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
                    plot=[plot;alpha mu mn10];
                end
            end
        end
    end
end
save('ACC_Iter_AllData.mat','plot');
