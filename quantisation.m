%   Burak Tekin
%   Contact: iletisim@buraktekin.net
%   Department of Computer Science


function f = quantisation(img_path, n)
%   Quantisation: Reduces the bit size according to n.
%   quantization(x,y) => x takes image path, n takes a number (new bit
%   depth) --> and returns image in quantized form.

Image = imread(img_path); % read image to quantise.
information = imfinfo(img_path); % get informations
bitdepth = information.BitDepth(); % get bitdepth of image
new_grayscales = (2 ^ n) - 1 / (2 ^ bitdepth) - 1; % according to bitrate calculate new grayscale range.
quantizedImage = uint8(mat2gray(Image) * (new_grayscales)); % Quantise image...
imshow(quantizedImage, []); % Display image.

end

