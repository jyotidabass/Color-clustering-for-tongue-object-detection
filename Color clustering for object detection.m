close all;
clear all;
I = imread('Tongue Pic. - Gulshan Rai.jpg');
figure(1);
imshow(I);
k = [1 2 3 4 5 6];
 for i = 1:6
     [L centers] = imsegkmeans(I,k(i));
    y = reshape(L,size(I,1),size(I,2));
     B = labeloverlay(I,L);
     figure(2);
     subplot(3,2,i);
     imshow(B);
     kk = k(i);
     pp = ['for cluster k','=',num2str(kk)];
      
     title(pp);
 end