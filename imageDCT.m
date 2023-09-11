clc;  clear all;  close all;

%B=imread('imag/maphoto.png');     // pour une image en couleur
%A=rgb2gray(B);                    // convertir en niveau de gris
A=imread('imag/im1.png');
[LL,LH,HL,HH] = dwt2(A,'haar');
%figure, imshow(host), title('host');


figure;
subplot(2,2,1)
imagesc(LL)
colormap gray
title('LL')
subplot(2,2,2)
imagesc(LH)
colormap gray
title('LH')
subplot(2,2,3)
imagesc(HL)
colormap gray
title('HL')
subplot(2,2,4)
imagesc(HH)
colormap gray
title('HH')



[nLL,nLH,nHL,nHH] = dwt2(LL,'haar');
%figure, imshow(host), title('host');

figure;
subplot(2,2,1)
imagesc(nLL)
colormap gray
title('LL : Approximation niveau 2')
subplot(2,2,2)
imagesc(nLH)
colormap gray
title('LH : Horizontal niveau 2')
subplot(2,2,3)
imagesc(nHL)
colormap gray
title('HL : Vertical niveau 2')
subplot(2,2,4)
imagesc(nHH)
colormap gray
title('HH : Diagonal niveau 2')
