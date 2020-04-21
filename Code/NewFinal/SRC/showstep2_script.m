%   showstep2_script.m
%   This script shows the objects from step 2, as well as displaying the
%   initial frame

% show objects from the inital frame selection step [Step 2]
plant_obj = handles.plant_obj_array(handles.plant_num);
set(handles.initialframe_slider,'Visible','on');
set(handles.continue2_pushbutton,'Visible','on');
set(handles.undo2_pushbutton,'Visible','on');
set(handles.instruction_text,'string',handles.step2a_instruction);
set(handles.instruction_text,'Visible','on');

% set initial frame slider parameters
set(handles.initialframe_slider,'Max',numel(plant_obj.img_array),'Min',1,'Value',handles.initialframe_num,'SliderStep',[1/numel(plant_obj.img_array) 10/numel(plant_obj.img_array)]);

% display the initial frame (by default this is frame 1)
handles.initialframe = initialframe_func(handles.initialframe_num, plant_obj.img_array);
axes(handles.axes1);
imshow(handles.initialframe);   % display frame
