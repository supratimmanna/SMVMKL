% Number of images
lp=30
% Define color moment matrix
CM_Tree=[]; 

for x=1:lp
   filename=strcat('imaget',num2str(x),'.bmp');
   I=imread(filename);
   R = I( :, :, 1);
   G = I( :, :, 2);
   B = I( :, :, 3);
   
   N=numel(R); 
   R1=sum(sum(R))/N;
   R2=sqrt(sum(sum((R-R1).^2))/N);
   R3=(sum(sum(abs((R-R1).^3)))/N)^(1/3); 
   
   G1=sum(sum(G))/N; 
   mean2(G); 
   G2=sqrt(sum(sum((G-G1).^2))/N) ;  
   G3=(sum(sum(abs((G-G1).^3)))/N)^(1/3);  
   B1=sum(sum(B))/N;       
   B2=sqrt(sum(sum((B-B1).^2))/N);   
   B3=(sum(sum(abs((B-B1).^3)))/N)^(1/3);   

   %rgb = uint8(['R','G','B']);
   %[L,a,b] = RGB2Lab(R,G,B); 
   rgb=rgb2lab(I);
   L=rgb(:,:,1); 
   a=rgb(:,:,2); 
   b=rgb(:,:,3);
   N=numel(L);       
   L1=sum(sum(L))/N;      
   L2=sqrt(sum(sum((L-L1).^2))/N);   
   L3=(sum(sum(abs((L-L1).^3)))/N)^(1/3);  
   a1=sum(sum(a))/N; 
   mean2(a); 
   a2=sqrt(sum(sum((a-a1).^2))/N) ;  
   a3=(sum(sum(abs((a-a1).^3)))/N)^(1/3);   
   b1=sum(sum(b))/N;     
   b2=sqrt(sum(sum((b-b1).^2))/N);   
   b3=(sum(sum(abs((b-b1).^3)))/N)^(1/3); 
   
   hsv=rgb2hsv(I); 
   h=hsv(:,:,1); 
   s=hsv(:,:,2); 
   v=hsv(:,:,3); 
   N=numel(h);       
  h1=sum(sum(h))/N;     
  h2=sqrt(sum(sum((h-h1).^2))/N);   
  h3=(sum(sum(abs((h-h1).^3)))/N)^(1/3); 
  s1=sum(sum(s))/N; 
  mean2(s); 
  s2=sqrt(sum(sum((s-s1).^2))/N) ;  
  s3=(sum(sum(abs((s-s1).^3)))/N)^(1/3);  
  v1=sum(sum(v))/N;      
  v2=sqrt(sum(sum((v-v1).^2))/N);   
  v3=(sum(sum(abs((v-v1).^3)))/N)^(1/3);  
  CM=[R1,R2,R3,G1,G2,G3,B1,B2,B3,L1,L2,L3,a1,a2,a3,b1,b2,b3,h1,h2,h3,s1,s2,s3,v1,v2,v3];
  CM_Tree=[CM_Tree;CM];
end
CM=[];
