function filename = getfilename(img_directory)
char = img_directory(end);
i = 0;
filename = [];

while char ~= '\'
    i = i+1;
    char = img_directory(end-i);
    filename = img_directory(end-i:end);
end