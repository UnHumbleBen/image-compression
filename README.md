# Image Compression
Implementing the K-means algorithm and using it for image compression.

# Table of Contents

1. [Motivation](#motivation)
2. [K-means algorithm](#k\-means-algorithm)
3. [Result](#result)

## Motivation
In a straightforward 24-bit color representation of an image, each pixel
is represented as three 8-bit unsigned integers (ranging from 0 to 255)
that specify the red, green and blue intensity values. This encoding is
often refered to as the RGB encoding. However, images often contain
thousands of colors. To represent photos more efficiently, we can reduce
the number of colors to 16.

## K-means algorithm
We use the K-means algorithm to select the 16 colors. We treat every pixel
in the original image as a data example and use K-means algorithm to find
the 16 colors that best group the pixels in the 3-dimensional RGB space.

## Result
Once the K-means algorithm is complete, we can use the cluster centroids
(the 16 colors) to replace the pixels in the orginal image.

![alt text](https://raw.githubusercontent.com/unhumbleben/image-compression/master/images/bird_small.png)
![alt text](https://raw.githubusercontent.com/unhumbleben/image-compression/master/images/compressed_bird_small.png)
