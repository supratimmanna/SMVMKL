lp=30;
GIST_Aeroplane = [];
for x=1:lp
    filename=strcat('imagea',num2str(x),'.bmp');
    img=imread(filename);
    % Parameters:
    clear param
    param.imageSize = [256 256]; % it works also with non-square images
    param.orientationsPerScale = [8 8 8 8];
    param.numberBlocks = 4;
    param.fc_prefilt = 4;

% Computing gist requires 1) prefilter image, 2) filter image and collect
% output energies
    [A, param] = LMgist(img, '', param);
    GIST_Aeroplane = [GIST_Aeroplane;A];
end
A = [];
% xlswrite('GIST_Building.xlsx',GIST_Aeroplane);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

GIST_Bicycle = [];
for x=1:lp
    filename=strcat('imagebc',num2str(x),'.bmp');
    img=imread(filename);
    % Parameters:
    clear param
    param.imageSize = [256 256]; % it works also with non-square images
    param.orientationsPerScale = [8 8 8 8];
    param.numberBlocks = 4;
    param.fc_prefilt = 4;

% Computing gist requires 1) prefilter image, 2) filter image and collect
% output energies
    [A, param] = LMgist(img, '', param);
    GIST_Bicycle = [GIST_Bicycle;A];
end
A = [];
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

GIST_Building = [];
for x=1:lp
    filename=strcat('imageb',num2str(x),'.bmp');
    img=imread(filename);
    % Parameters:
    clear param
    param.imageSize = [256 256]; % it works also with non-square images
    param.orientationsPerScale = [8 8 8 8];
    param.numberBlocks = 4;
    param.fc_prefilt = 4;

% Computing gist requires 1) prefilter image, 2) filter image and collect
% output energies
    [A, param] = LMgist(img, '', param);
    GIST_Building = [GIST_Building;A];
end
A = [];
%%%%%%%%%%%%%%%%%%%%%%%%%

GIST_Car = [];
for x=1:lp
    filename=strcat('imagecr',num2str(x),'.bmp');
    img=imread(filename);
    % Parameters:
    clear param
    param.imageSize = [256 256]; % it works also with non-square images
    param.orientationsPerScale = [8 8 8 8];
    param.numberBlocks = 4;
    param.fc_prefilt = 4;

% Computing gist requires 1) prefilter image, 2) filter image and collect
% output energies
    [A, param] = LMgist(img, '', param);
    GIST_Car = [GIST_Car;A];
end
A = [];
%%%%%%%%%%%%%%%%%%%%%%%%%
GIST_Cow = [];
for x=1:lp
    filename=strcat('imagecw',num2str(x),'.bmp');
    img=imread(filename);
    % Parameters:
    clear param
    param.imageSize = [256 256]; % it works also with non-square images
    param.orientationsPerScale = [8 8 8 8];
    param.numberBlocks = 4;
    param.fc_prefilt = 4;

% Computing gist requires 1) prefilter image, 2) filter image and collect
% output energies
    [A, param] = LMgist(img, '', param);
    GIST_Cow = [GIST_Cow;A];
end
A = [];
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

GIST_Face = [];
for x=1:lp
    filename=strcat('imagef',num2str(x),'.bmp');
    img=imread(filename);
    % Parameters:
    clear param
    param.imageSize = [256 256]; % it works also with non-square images
    param.orientationsPerScale = [8 8 8 8];
    param.numberBlocks = 4;
    param.fc_prefilt = 4;

% Computing gist requires 1) prefilter image, 2) filter image and collect
% output energies
    [A, param] = LMgist(img, '', param);
    GIST_Face = [GIST_Face;A];
end
A = [];
%%%%%%%%%%%%%%%%%%%%

GIST_Tree = [];
for x=1:lp
    filename=strcat('imaget',num2str(x),'.bmp');
    img=imread(filename);
    % Parameters:
    clear param
    param.imageSize = [256 256]; % it works also with non-square images
    param.orientationsPerScale = [8 8 8 8];
    param.numberBlocks = 4;
    param.fc_prefilt = 4;

% Computing gist requires 1) prefilter image, 2) filter image and collect
% output energies
    [A, param] = LMgist(img, '', param);
    GIST_Tree = [GIST_Tree;A];
end
A = [];


