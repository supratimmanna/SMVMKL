a=[11;7;14;11;43;38];
b=[11;13;17;13;51;46];
c=[9;11;20;9;69;76];
y1=[a b c];
%at x=2
d=[38;61;75;38;28;33];
e=[46;132;135;88;36;51];
f=[76;186;180;115;85;72];
y2=[d e f];
figure(1); 
hold on;
%First x value
xval = 1; 
h = bar3(y1,'grouped');
Xdat = get(h,'Xdata');
for ii=1:length(Xdat)
    Xdat{ii}=Xdat{ii}+(xval-1)*ones(size(Xdat{ii}));
    set(h(ii),'XData',Xdat{ii});
end
%Second x value
xval = 2;
h = bar3(y2,'grouped');
Xdat = get(h,'Xdata');
for ii=1:length(Xdat)
    Xdat{ii}=Xdat{ii}+(xval-1)*ones(size(Xdat{ii}));
    set(h(ii),'XData',Xdat{ii});
end
xlim([0 3]);
view(3);
title('Grouped Style')
xlabel('x');
ylabel('y');
zlabel('z');