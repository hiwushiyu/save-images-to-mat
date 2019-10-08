file_path =  '.\006\bg-01\090\';% 图像文件夹路径
img_path_list = dir(strcat(file_path,'*.png'));%获取该文件夹中所有jpg格式的图像
img_num = length(img_path_list);%获取图像总数量
k = 1;
data=rand(240, 320);
if img_num > 0 %有满足条件的图像
        for j = 1:img_num %逐一读取图像
            image_name = img_path_list(j).name;% 图像名
            image =  imread(strcat(file_path,image_name));
            image = im2bw(image);
            data(:,:,k)=image;
            
            k=k+1;
            fprintf('%d %d %s\n',i,j,strcat(file_path,image_name));% 显示正在处理的图像名
            %图像处理过程 省略
        end
end
data = logical(data);
