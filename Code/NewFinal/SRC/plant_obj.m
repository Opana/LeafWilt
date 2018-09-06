% constructor for wiltdata objects
classdef plant_obj < matlab.mixin.SetGet
    properties
        file_directory
        dest_directory
        img_array
        filename
        rect_array
        initialframe_num
        finalframe_num
        initialthreshold
        finalthreshold
        sharpenradius
        rgb_channel
        invert_TF
        stalk_x
        stalk_y
        img_cropwidth
        img_cropheight
        angle_data
    end
    methods
        function p = plant_obj(filename, img_array, dest_directory)
            set(p, 'filename', filename);
            set(p, 'img_array', img_array);
            set(p, 'dest_directory', dest_directory);
        end        
        function p = plant_compiler(rect_array, initialframe_num, finalframe_num, initialthreshold, finalthreshold, sharpenradius, rgb_channel, invert_TF, stalk_x, stalk_y, img_cropwidth, img_cropheight)

        end
    end
end