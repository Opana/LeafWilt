handles.w = TestObject;
handles.w.Name = 'Bob';
handles.w.Gender = 'Whoknows';
disp(handles.w.Name);
disp(handles.w.Gender);

TestObject_array = [handles.w, handles.w];
object = TestObject_array(1);
disp(object.Name);