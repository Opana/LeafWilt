% showstep9_script
% This script shows the objects from post-wilt analysis

%total number of plots is defined by the number of leaves under
plant_obj = handles.plant_obj_array(handles.plant_num);
num_plots = numel(plant_obj.rect_array);
framecount = round(plant_obj.initialframe_num):1:round(plant_obj.finalframe_num);
s = 10; % size of the points in scatterplot

% plot wilt angle data for each of the leaves under investigation
figure;
for k = 1:num_plots
    angle_data = plant_obj.angle_data(k,:);
    % plot every 30th data point
    new_angle_data = angle_data(1:1:end);
    subplot(ceil(sqrt(num_plots)),ceil(sqrt(num_plots)),k);
    scatter( framecount, new_angle_data, s, 'MarkerEdgeColor','k','MarkerFaceColor','k');
    % Label plot
    titlestring = sprintf('Leaf %d Analysis',k);
    title(titlestring);
    xlabel( 'Frame Count' );
    ylabel( 'Wilt Angle' );
    xlim('auto');
    if max(new_angle_data)>90
        ylim([0 180]);
    else
        ylim([0 90]);
    end
    grid on
end


% show the initial frame with the plants labeled in white text
axes(handles.axes1);
imshow(handles.initialframe);
hold on;
for n = 1:numel(plant_obj.rect_array)
    current_rect = plant_obj.rect_array{n};
    rectangle('Position',current_rect,'EdgeColor','r','LineWidth',2);
    textx = current_rect(1,1);
    texty = current_rect(1,2);
    leaf_n = sprintf('Leaf %d',n);
    text(textx,texty,leaf_n,'FontSize',20,'Color','w');
end
hold off

% show objects
set(handles.exportcsv_pushbutton,'Visible','on');
set(handles.nextplant_pushbutton,'Visible','on');

% update instruction text
set(handles.instruction_text,'String',handles.step9_instruction);
