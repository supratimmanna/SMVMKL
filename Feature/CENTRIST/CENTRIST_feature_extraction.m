lp=1;
CENTRIST_Cow = [];
for x=1:lp
    filename=strcat('imagecw',num2str(x),'.bmp');
    img=imread(filename);
    A=centrist(image)
    CENTRIST_Cow=[CENTRIST_Cow;A]
end
A=[];