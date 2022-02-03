clear all
close all
clc
img = imread('img.png')

[f,c,k]=size(img)
%MOSTRAR CAPAS
Red=img(:,:,1)
Green=img(:,:,2)
Blue=img(:,:,3)

hist = zeros(1, 256);
%for k=1:k1
for i=1:f
    for j=1: c
        n=Red(i,j)+1;
        hist(n) = hist(n)+1; 
    end
end
%end
%GEN HISTOGRA
% HRed= imhist(Red);
% HGreen= imhist(Green);
% HBlue= imhist(Blue);

fp = 1;
cp = 3;
%mostrar imagenes 
subplot(fp,cp,1) %filas, columnas, #objeto
imshow(img)
title ('Input image')
subplot(fp,cp,2)
imshow(Red)
title ('Red')
subplot(fp,cp,3)
plot(hist)
title ('Histograma')
