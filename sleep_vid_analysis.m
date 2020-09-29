%% SLEEP VIDEO ANALYSIS TO DETECT MOTION LESS FRAMES
% @ Aamir Abbasi
% ----------------------
clc; clear; close all;
rootpath = 'Z:\M1_Cb_Reach\I061\Day5\Sleep_Vids\';
%rootpath field in gui
cd(rootpath);

%field to specify number of files to read
filenames = dir('*.avi');
filenames = {filenames.name};

for file = 1:length(filenames)
  
  % Status
  disp(filenames{1,file});
  
  % Read a video in an object
  vR = VideoReader(filenames{1,file});
  
  % Read all frames from the video object
  frames = read(vR);
  
  % Convert into greyscale
  frames = squeeze(mean(frames,3));
  
  % Get motion trace  
  motion = zeros(1,size(frames,3)-1);
  for i = 1:size(frames,3)-1
    disp(['frame_no_', num2str(i)]);
    frame1 = frames(:,:,i); 
    frame2 = frames(:,:,i+1);
    subtracted_img = imsubtract(uint8(frame2),uint8(frame1));
    motion(i) = mean(mean(subtracted_img));
  end
  
  % Store motion data in a struct across all days
  switch file
    case 1
      motion_data.first  = motion;
    case 2
      motion_data.second = motion;
%     case 3
%       motion_data.third  = motion;
%     case 4
%       motion_data.fourth = motion;
%     case 5
%       motion_data.fifth  = motion;
  end
    
end

% Save motion trace
save('motion.mat', 'motion_data');

% Final status
disp('done!');

%% GET SLEEP DURATION
clc; clear; close all;

% Root path
rootpath = 'Z:\M1_Cb_Reach\I061\Day5\Sleep_Vids\';
cd(rootpath);

% Load file
load('motion.mat');

% Check plots  ***PUT EMBEDDED PLOT IN GUI TO CALCULATE PROPER THRESHOLD***
figure;plot(motion_data.first)
figure;plot(motion_data.second)
% figure;plot(motion_data.third)
% figure;plot(motion_data.fourth)
% plot(motion_data.fifth)

% Initalize threshold field in gui
threshold = 1;

% Get sleep duration
sleepDur(1) = length(find(motion_data.first < threshold))/60;
sleepDur(2) = length(find(motion_data.second < threshold))/60;
% sleepDur(3) = length(find(motion_data.third < threshold))/60;
% sleepDur(4) = length(find(motion_data.fourth < threshold))/60;
% sleepDur(5) = length(find(motion_data.fifth < threshold))/60;

clear rootpath threshold
save('motion.mat')
%%
