% img_finder
% This script creates objects to store data

function [plantobj_array] = img_finder(img_directory, dest_directory)
    plantobj_array = [];
    
    % Calls img_array_func, placing all .jpg files into an array
    img_array = img_array_func(img_directory);
    
    if ~isempty(img_array)
        filename = string(getfilename(img_directory));
        p = plant_obj(filename, img_array, dest_directory);        
        plantobj_array = [plantobj_array, p];
    end 
    
    files = dir(img_directory);
    dirFlags = [files.isdir];
    subFolders = files(dirFlags);
    subFolders = subFolders(3:end);
    
    if ~isempty(subFolders)
        for k = 1 : length(subFolders)
            img_array = img_array_func(strcat(img_directory, '\', subFolders(k).name));
            filename = strcat('\', subFolders(k).name);
            p = plant_obj(filename, img_array, dest_directory);
            plantobj_array = [plantobj_array, p];
        end
    end
end