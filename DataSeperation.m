%Load GUI data for desired subject and training day
%Change lengths of for loops to fit size of GUI Data
FirstThird = {}; LastThird = {}; PostSleep = {};
for i=1:40
    FirstThird = [FirstThird; {data{i,:}}];
end
for i=81:120
    LastThird = [LastThird; {data{i,:}}];
end
for i=121:180
    PostSleep = [PostSleep; {data{i,:}}];
end

data = FirstThird;
[successpct] = pct_reaching_success (data);
[attempts] = num_of_attempts (data);
[O_Pframes,O_Rframes,O_Pseconds,O_Rseconds] = reach_times (data);
S1 = successpct;
A1 = mean(attempts);
P1 = mean(O_Pseconds);
R1 = mean(O_Rseconds);

data = LastThird;
[successpct] = pct_reaching_success (data);
[attempts] = num_of_attempts (data);
[O_Pframes,O_Rframes,O_Pseconds,O_Rseconds] = reach_times (data);
S2 = successpct;
A2 = mean(attempts);
P2 = mean(O_Pseconds);
R2 = mean(O_Rseconds);

data = PostSleep;
[successpct] = pct_reaching_success (data);
[attempts] = num_of_attempts (data);
[O_Pframes,O_Rframes,O_Pseconds,O_Rseconds] = reach_times (data);
S3 = successpct;
A3 = mean(attempts);
P3 = mean(O_Pseconds);
R3 = mean(O_Rseconds);

clearvars -except A1 A2 A3 Day4Attempts Day4Pellet Day4Retract Day4Success FirstThird LastThird P1 P2 P3 PostSleep R1 R2 R3 S1 S2 S3