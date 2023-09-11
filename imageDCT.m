
clc;
clear all;
close all;
n=input('Entrer ');
alpha2 = ones(1,n)*sqrt(2/n);
alpha2(1) = sqrt(1/n);
alpha1 = ones(1,n)*sqrt(2/n);
alpha(1) = sqrt(1/n);
for u = 0:n-1
    for v = 0:n-1
        for x = 0:n-1
            for y = 0:n-1
                 a{u+1,v+1}(x+1,y+1) = alpha1(u+1)*alpha2(v+1)*...
                 cos((2*x+1)*u*pi/(2*n))*cos((2*y+1)*v*pi/(2*n));
            end 
        end
    end
end

mag = a;
figure
k=1;

for i=1:n
    for j=1:n
        subplot(n,n,k);
        imshow(mag{i,j});
        k=k+1;
    end
end
subplot(2,2,4)
imagesc(nHH)
colormap gray
title('HH : Diagonal niveau 2')
