%% THIS SCRIPT IS USED FOR CROPPING REACH VIDEOS WHICH CAN BE FED IN DLC
%@ Aamir Abbasi --------------------------------------------------------
clc; clear;

% Setting up!!!
y_crop = [100,380];
x_crop = [50,400]; %Second value here MUST be <=480

filepath = 'D:\temp';
cd(filepath);
filenames = dir('*.avi');

% Looping!
for i = 1:length(filenames)
    
    % Status
    disp(strcat('Reading_video_', num2str(i)));
    
    % Read a video in an object
    vR = VideoReader(filenames(i).name);
    
    % Create and open video writer object
    vW = VideoWriter(strcat(filenames(i).name(1:end-4), '_cropped.avi'));
    open(vW);
    
    % Read frames, crop them and generate a new video file
    while hasFrame(vR)
        frame = readFrame(vR);
        cropped_frame = frame(x_crop(1):x_crop(2), y_crop(1):y_crop(2),:);
        writeVideo(vW,cropped_frame);
    end
    
    % Close video writer object 
    close(vW);
end
%%