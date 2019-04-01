clc;clear;close all;
im=uint8(zeros(300,600,3));
im(1:100,:,1)=255;
im(101:200,:,:)=255;
im(201:300,:,2)=255;
for i=101:200
  for j=1:600
    l=sqrt(power(i-150,2)+power(j-300,2));
    
    if l>=46 && l<=50
      im(i,j,1:2)=0;
  end
end
end
imshow(im);
x=150;
y=300;
for i=101:200
  for j=250:350
    m=(x-i)/(y-j);
    s=round(atand(m));
    k=sqrt(power(i-150,2)+power(j-300,2)); 
    
    if k<=50 && mod(s,15)==0
   
      im(i,j,1:2)=0;
     end
   end
 end
 

figure;imshow(im);
