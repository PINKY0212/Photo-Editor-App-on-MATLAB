a = imread('crop.jpg');
subplot(2,3,1);
imshow(a);
b = rgb2gray(a);
subplot(2,3,2);
imshow(b);
c = im2bw(a);
subplot(2,3,3);
imshow(c);
d = imadjust(b);
subplot(2,3,4);
imshow(d);
e = a;
e=rgb2gray(e);
subplot(2,3,5);
imhist(e);
imfinfo('Gated LP-670.jpg')
[height, width, colour_planes] = size(a)
%colormap('spring')


%2. By creating a GUI for the above commands:

%●	For histogram
a=getappdata(0,'a');
ahist=a;
ahist=rgb2gray(ahist);
axes(handles.axes1);
imhist(ahist);

%●	For rgb to grayscale
 a=getappdata(0,'a');
 agray=rgb2gray(a);
 axes(handles.axes1);
 imshow(agray);

%●	 For upload
a=uigetfile('.jpg')
a=imread(a);
axes(handles.axes1);
imshow(a);
setappdata(0,'a',a)

%●	 For reset
a=getappdata(0,'a');
axes(handles.axes1);
imshow(a);

%●	For Complement
a=getappdata(0,'a');
acomp=a;
acomp=imcomplement(acomp);
axes(handles.axes1);
imshow(acomp);

%●	For Edge Direction
a=getappdata(0,'a');
aedge=a;
aedge=rgb2gray(aedge);
aedge=edge(aedge,'Canny')'
   axes(handles.axes1);
    imshow(aedge);

%●	For clockwise
 a=getappdata(0,'a');
 aclock=a;
 aclock=imrotate(aclock,270);
 axes(handles.axes1);
 imshow(aclock)

%●	For anticlockwise
 a=getappdata(0,'a');
 aclock=a;
 aclock=imrotate(aclock,90);
 axes(handles.axes1);
 imshow(aclock);
