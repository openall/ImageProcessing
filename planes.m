%   Burak Tekin
%   Contact: iletisim@buraktekin.net
%   Department of Computer Science

%------------------------ PURPOSE --------------------------------
%the intensity of each pixel in a 256-level gray-scale image is composed of
%8-bits. Therefore an 8-bit image may be considered as being compose of eight 1-bit planes, 
%with plane 1 containing the lowest-order bit, and plane 8 the highest
%orderer bit of all pixels in the image. And we try to find these planes
%and how they seem.

function f = planes(img) %create new general fucntion.
Image = imread(img); % Read image...
info = imfinfo(img); % get information of image.
bit_depth = info.BitDepth; % Find bit depth to limit the number of planes.

for i = 1:bit_depth % loop in planes.
    subplot(2, 4, i); %this is for show all images in same figure
    B = bitget(Image, i); %get bits according to i.
    images = imshow(logical(B), 'InitialMag', 100, 'Border','tight'); % Displaying part.
    title(num2str(i)) % give title to each image.
    set(images) %set images into figure.
    
end
figure;
imshow(img); % show original image
title('original')
end

