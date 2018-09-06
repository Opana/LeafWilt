function [ img_array ] = img_array_func(img_directory )
%img_array_func.m
%This function loads all .jpg images from a folder into an array


img_array = [];
if ispc  % is the computer running the application pc?
    c = '\';
elseif isunix % is the computer unix based?
    c = '/';
else
    c = '/';
end

if img_directory ~= 0
    img_files = dir(fullfile(img_directory,'*.jpg'));
    disp(img_directory);
    disp(fullfile(img_directory,'*.jpg'));
    disp(dir(fullfile(img_directory,'*.jpg')));
    disp(img_files);
    [~, idx] = sort([img_files.datenum]); % create index based on the date created
    disp(idx);
    idx = [1:1:numel(img_files)];  % use default sort
    disp(idx);
    imgs_num = numel(idx);

    h = waitbar(0, 'Reading Images, Please Wait...');
    disp(imgs_num);
    disp(img_directory);
    for n = 1:imgs_num   % for all indexed images
        img_array{n} = imread([img_directory c img_files(idx(n)).name]);  % load images in order of the sort
        waitbar(n/imgs_num);
    end
    close(h)
end

end

