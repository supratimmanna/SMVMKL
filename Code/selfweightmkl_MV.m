function [result]=selfweightmkl(Kernel,s,alpha,beta,gamma,zeta)
% s is the true class label.
warning off
[m,n,nn,mm]=size(Kernel);
count=0;

%%%%% Initialize the Kernel matrix(Kv) for each view
x=zeros(n);
for i=1:nn
    for j=1:mm
        x=x+Kernel(:,:,i,j);
    end
    sumKv(:,:,i)=x;
    x=zeros(n);
end
Kv=sumKv/mm;

%%%%% Initialize the optimal Kernel matrix

sumK=zeros(n);
for p=1:mm
    sumK=sumK+Kv(:,:,p)
end
K=sumK/mm;

%%%% Initialization of adjacency or similarity matrix
S=eye(n);

%%%% Calculate the total number of classes
c=length(unique(s));

itt = 0;
%options = optimset( 'Algorithm','interior-point-convex','Display','off');
for i=1:100
    itt = i;
    S_old=S;
    count=count+1;
    
 %%%% Creation of degree matrix D and laplacian matrix L   
    D = diag(sum(S));
    L = D-S;
 %%%% Eigen value calculation of the Laplacian matrix   
    [F, temp, ev]=eig1(L, c, 0);
    
 %%%% Weight calculation for the optinal kernel of each view    
    sumHv=zeros(n);
    sumQ=0;
    for j=1:nn
        temp(j)=norm(Kv(:,:,j)-K,'fro');
        Q(j)=1/(2*temp(j));
        sumHv=sumHv+Q(j)*Kv(:,:,j);
        sumQ=sumQ+Q(j);
    end
    
 %%%% Weight calculation for each kernel of the multiple kernels
 sumH=zeros(n);
 sumZ=0;
 for p = 1:nn
     for q = 1:mm
         inst(p,q)= norm((Kernel(:,:,p,q)-Kv(:,:,q)),'fro');
         s1(p,q)= 1/(2*inst(p,q));
     end
 end
 
 for v=1:nn
    sumZ(v)=sum(s1(v,:)) %%%% summation of Z(v,i)
 end 

xx=zeros(n);
for tt=1:nn
    for ss=1:mm
        xx=xx+s1(tt,ss)*Kernel(:,:,tt,ss)
    end
    sumZH(:,:,tt)=xx; %%%% summation of Z(v,i)*Kernel(:,:,v,i)
    xx=zeros(n);
end


%%%%% Calculation of Tr(F'LF) and Similarity matrix S

    for ij=1:n
        for ji=1:n
            all(ji)=norm(F(ij,:)-F(ji,:));
        end

        S(:,ij)=(K+gamma*eye(n))\(K(ij,:)'-alpha/4*all');
    end
    
    S(find(S<0))=0;
    S= (S+S')/2;
  
 %%%%% Calculation of optimal kernel matrix Kv for vth view
 for vv=1:nn
     Kv(:,:,vv)=(beta*sumZH(:,:,vv)+zeta*Q(vv)*K)/(beta*sumZ(vv)+zeta*Q(vv))
     Kv(find(Kv<0))=0;
     Kv_transpose=permute(Kv,[2 1 3]);
     Kv=(Kv+Kv_transpose)/2;
 end
     
 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 %%%%% Calculation of optimal Kernel Matrix
    %      K=(Z'+beta*sumH)/(Z+beta*sum1*eye(n));
    K=(2*S'-S*S'-eye(n)+2*zeta*sumHv)/(2*zeta*sumQ);
    K(find(K<0))=0;
    K=(K'+K)/2;
    if i>5 &((norm(S-S_old)/norm(S_old))<1e-4)
        break
    end
end
actual_ids= kmeans(F, c, 'emptyaction', 'singleton', 'replicates', 100, 'display', 'off');
[result] = [ClusteringMeasure( actual_ids,s) itt];