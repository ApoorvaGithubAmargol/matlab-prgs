% Read the image
img = imread('image.jpg');

% Convert to grayscale
grayImg = rgb2gray(img);

% Apply Sobel edge detection
edges = edge(grayImg, 'Sobel');

% Display the results
figure;
subplot(1, 3, 1), imshow(img), title('Original Image');
subplot(1, 3, 2), imshow(grayImg), title('Grayscale Image');
subplot(1, 3, 3), imshow(edges), title('Edges Detected');

% Save the edge-detected image
imwrite(edges, 'edges.jpg');