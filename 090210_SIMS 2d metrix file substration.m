clear all
cd('D:\TuanShu');
ion1='Li';
ion2='Ta';
Previously_reducing_factor=32;
number=[1 1.1 2 3 4 4.1 5 6];
for j=1:length(number)
filename_txt_Reduced_1=sprintf('%s\\%s%g_ReducedBy%g.txt',ion1,ion1,number(j),Previously_reducing_factor);
filename_txt_Reduced_2=sprintf('%s\\%s%g_ReducedBy%g.txt',ion2,ion2,number(j),Previously_reducing_factor);
filename_txt_ratio=sprintf('%s%sRatio%g_ReducedBy%g.txt',ion1,ion2,number(j),Previously_reducing_factor);
filename_png_ratio=sprintf('%s%sRatio%g_ReducedBy%g.png',ion1,ion2,number(j),Previously_reducing_factor);
matrix1=dlmread(filename_txt_Reduced_1);
matrix2=dlmread(filename_txt_Reduced_2);
ratio=matrix1./matrix2;
img=mat2gray(ratio,[0 max(max(ratio))]);
dlmwrite(filename_txt_ratio,ratio,'delimiter','\t','newline','pc');
imwrite(img,filename_png_ratio,'Bitdepth',16);                      %.........為什麼是顛倒的
end