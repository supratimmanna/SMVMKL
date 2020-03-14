
% Number of images
lp=10
% Define color moment matrix
Aeroplane_CM=[]; 

for x=1:lp
   filename=strcat('imagea',num2str(x),'.bmp');
   I=imread(filename);
   R = I( :, :, 1);
   G = I( :, :, 2);
   B = I( :, :, 3);

% Extract Statistical Feature
% 1: Mean
  MeanR = mean2(R);
  MeanG = mean2(G);
  MeanB = mean2(B);

% 2: Standard Deviation
  stdR = std2(R);
  stdG = std2(G);
  stdB = std2(B);

% Store all the statistical feature in a matrix
  A = [MeanR MeanG MeanB stdR stdG stdB];
  Aeroplane_CM = [Aeroplane_CM;A];
end
A = [];
% xlswrite('Color_Moments_Tree.xlsx',Aeroplane_CM);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

Bicycle_CM=[];
for x=1:lp
   filename=strcat('imagebc',num2str(x),'.bmp');
   I=imread(filename);
   R = I( :, :, 1);
   G = I( :, :, 2);
   B = I( :, :, 3);

% Extract Statistical Feature
% 1: Mean
  MeanR = mean2(R);
  MeanG = mean2(G);
  MeanB = mean2(B);

% 2: Standard Deviation
  stdR = std2(R);
  stdG = std2(G);
  stdB = std2(B);

% Store all the statistical feature in a matrix
  A = [MeanR MeanG MeanB stdR stdG stdB];
  Bicycle_CM = [Bicycle_CM;A];
end
A = [];
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

Building_CM=[];
for x=1:lp
   filename=strcat('imageb',num2str(x),'.bmp');
   I=imread(filename);
   R = I( :, :, 1);
   G = I( :, :, 2);
   B = I( :, :, 3);

% Extract Statistical Feature
% 1: Mean
  MeanR = mean2(R);
  MeanG = mean2(G);
  MeanB = mean2(B);

% 2: Standard Deviation
  stdR = std2(R);
  stdG = std2(G);
  stdB = std2(B);

% Store all the statistical feature in a matrix
  A = [MeanR MeanG MeanB stdR stdG stdB];
  Building_CM = [Building_CM;A];
end
A = [];
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Car_CM=[];
% for x=1:lp
%    filename=strcat('imagecr',num2str(x),'.bmp');
%    I=imread(filename);
%    R = I( :, :, 1);
%    G = I( :, :, 2);
%    B = I( :, :, 3);
% 
% % Extract Statistical Feature
% % 1: Mean
%   MeanR = mean2(R);
%   MeanG = mean2(G);
%   MeanB = mean2(B);
% 
% % 2: Standard Deviation
%   stdR = std2(R);
%   stdG = std2(G);
%   stdB = std2(B);
% 
% % Store all the statistical feature in a matrix
%   A = [MeanR MeanG MeanB stdR stdG stdB];
%   Car_CM = [Car_CM;A];
% end
% A = [];
% % %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% % 
% Cow_CM=[];
% for x=1:lp
%    filename=strcat('imagecw',num2str(x),'.bmp');
%    I=imread(filename);
%    R = I( :, :, 1);
%    G = I( :, :, 2);
%    B = I( :, :, 3);
% 
% % Extract Statistical Feature
% % 1: Mean
%   MeanR = mean2(R);
%   MeanG = mean2(G);
%   MeanB = mean2(B);
% 
% % 2: Standard Deviation
%   stdR = std2(R);
%   stdG = std2(G);
%   stdB = std2(B);
% 
% % Store all the statistical feature in a matrix
%   A = [MeanR MeanG MeanB stdR stdG stdB];
%   Cow_CM = [Cow_CM;A];
% end
% A = [];
% % %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 
% Face_CM=[];
% for x=1:lp
%    filename=strcat('imagef',num2str(x),'.bmp');
%    I=imread(filename);
%    R = I( :, :, 1);
%    G = I( :, :, 2);
%    B = I( :, :, 3);
% 
% % Extract Statistical Feature
% % 1: Mean
%   MeanR = mean2(R);
%   MeanG = mean2(G);
%   MeanB = mean2(B);
% 
% % 2: Standard Deviation
%   stdR = std2(R);
%   stdG = std2(G);
%   stdB = std2(B);
% 
% % Store all the statistical feature in a matrix
%   A = [MeanR MeanG MeanB stdR stdG stdB];
%   Face_CM = [Face_CM;A];
% end
% A = [];
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Tree_CM=[];
% for x=1:lp
%    filename=strcat('imaget',num2str(x),'.bmp');
%    I=imread(filename);
%    R = I( :, :, 1);
%    G = I( :, :, 2);
%    B = I( :, :, 3);
% 
% % Extract Statistical Feature
% % 1: Mean
%   MeanR = mean2(R);
%   MeanG = mean2(G);
%   MeanB = mean2(B);
% 
% % 2: Standard Deviation
%   stdR = std2(R);
%   stdG = std2(G);
%   stdB = std2(B);
% 
% % Store all the statistical feature in a matrix
%   A = [MeanR MeanG MeanB stdR stdG stdB];
%   Tree_CM = [Tree_CM;A];
% end
% A = [];
