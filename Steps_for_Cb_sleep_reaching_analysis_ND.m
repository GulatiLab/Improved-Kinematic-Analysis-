%%
%Steps_for_Cb_sleep_reaching_analysis
%Pull outcome data from videoAnalysisGUI
%Calculate success/failure/ignore rate
%Calculate reach onset to pellet speed and reach onset to retraction speed
%for each trial
%Calculate number of attempts for each Trial
%Plot?????????
%REMEMBER TO CHANGE LOAD AND SAVE FILE FOR EVERY NEW DATA FILE
%MAKE SURE DESIRED FILE IS IN PATHWAY
clear
load ('C:\Users\DanielsenN\Box\Cb Sleep and Reaching\I-033\Results\With Unsuccessful Trials\I-033-S11 GUI Results')

%% Calculate Percent Success/Failure/Ignored

[successpct,failurepct,ignoredpct,reachedpct,success,failure,ignored] = pct_reaching_success (data);
save ('C:\Users\DanielsenN\Box\Cb Sleep and Reaching\I-033\Results\With Unsuccessful Trials\I-033-S11 Analysis Results')

%% Calculate Reach Onset to Pellet Speed and Reach Onset to Retraction Speed for Each Trial

[O_Pframes,O_Rframes,O_Pseconds,O_Rseconds] = reach_times (data);
save ('C:\Users\DanielsenN\Box\Cb Sleep and Reaching\I-033\Results\With Unsuccessful Trials\I-033-S11 Analysis Results')

%% Calculate Number of Attempts for Each Trial

[attempts] = num_of_attempts (data);
save ('C:\Users\DanielsenN\Box\Cb Sleep and Reaching\I-033\Results\With Unsuccessful Trials\I-033-S11 Analysis Results')