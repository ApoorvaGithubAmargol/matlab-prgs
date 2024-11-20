% Read an image
originalImage = imread('image.jpg');

% Display the original image
figure;
imshow(originalImage);
title('Original Image');

% Convert the image to grayscale
grayImage = rgb2gray(originalImage);

% Display the grayscale image
figure;
imshow(grayImage);
title('Grayscale Image');

% Apply a Gaussian filter
filteredImage = imgaussfilt(grayImage, 2); % 2 is the standard deviation

% Display the filtered image
figure;
imshow(filteredImage);
title('Filtered Image (Gaussian)');

% Edge detection using Canny method
edges = edge(grayImage, 'Canny');

% Display the edges
figure;
imshow(edges);
title('Edge Detection (Canny)');