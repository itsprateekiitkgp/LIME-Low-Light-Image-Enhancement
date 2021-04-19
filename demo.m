clc;close all;
i=1;
for c = 1:10
    
    %%
    
    filename = 'data/'+string(c)+'.bmp';
    L = (im2double(imread(filename)));
    
    para.alpha = 0.15;
    para.sigma = 2;
    para.gamma = 0.8;
    tic
    [I, T_ini,T_ref] = LIME(L,para);
    toc
    
    figure(i);imshow(L);title("input"+string(c)+'.bmp');
    %saveas(figure(1),'output/'+string(c)+'/'+string(c)+'input.png')
    figure(i+1);imshow(I);title("output"+string(c)+'.bmp');
    %saveas(figure(2),'output/'+string(c)+'/'+string(c)+'Lime.png')
    %figure(3);imshow(T_ini,[]);colormap hot;title("initial T");
    %saveas(figure(3),'output/'+string(c)+'/'+string(c)+'Initial_T.png')
    %figure(4);imshow(T_ref,[]);colormap hot;title("refined T");
    %saveas(figure(4),'output/'+string(c)+'/'+string(c)+'Refined_T.png')
    i=i+2;
end


