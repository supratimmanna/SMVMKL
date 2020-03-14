
lp=30;
LBP_Aeroplane=[];
for x = 1:lp
    filename=strcat('imagea',num2str(x),'.bmp');
    I=imread(filename);
    I = rgb2gray(I);
    A = extractLBPFeatures(I);
    LBP_Aeroplane = [LBP_Aeroplane;A];
end
A=[];

LBP_Bicycle=[];
for x = 1:lp
    filename=strcat('imagebc',num2str(x),'.bmp');
    I=imread(filename);
    I = rgb2gray(I);
    A = extractLBPFeatures(I);
    LBP_Bicycle = [LBP_Bicycle;A];
end
A=[];

LBP_Building=[];
for x = 1:lp
    filename=strcat('imageb',num2str(x),'.bmp');
    I=imread(filename);
    I = rgb2gray(I);
    A = extractLBPFeatures(I);
    LBP_Building = [LBP_Building;A];
end
A=[];

LBP_Car=[];
for x = 1:lp
    filename=strcat('imagecr',num2str(x),'.bmp');
    I=imread(filename);
    I = rgb2gray(I);
    A = extractLBPFeatures(I);
    LBP_Car = [LBP_Car;A];
end
A=[];

LBP_Cow=[];
for x = 1:lp
    filename=strcat('imagecw',num2str(x),'.bmp');
    I=imread(filename);
    I = rgb2gray(I);
    A = extractLBPFeatures(I);
    LBP_Cow = [LBP_Cow;A];
end
A=[];

LBP_Face=[];
for x = 1:lp
    filename=strcat('imagef',num2str(x),'.bmp');
    I=imread(filename);
    I = rgb2gray(I);
    A = extractLBPFeatures(I);
    LBP_Face = [LBP_Face;A];
end
A=[];

LBP_Tree=[];
for x = 1:lp
    filename=strcat('imaget',num2str(x),'.bmp');
    I=imread(filename);
    I = rgb2gray(I);
    A = extractLBPFeatures(I);
    LBP_Tree = [LBP_Tree;A];
end
A=[];

