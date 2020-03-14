 HOG=[];
 LBP=[]

for x=1:121
   filename=strcat('subject',num2str(x),'.pgm');
   I=imread(filename);
   H=extractHOGFeatures(I);
   HOG=[HOG;H];
   L=extractLBPFeatures(I);
   LBP=[LBP;L];
end