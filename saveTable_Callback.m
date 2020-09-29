function saveTable_Callback(hObject, eventdata)

global vid_fig_hand;

vid_dir = get(vid_fig_hand.VID_DIR_handle, 'String');

selected_file = get(vid_fig_hand.listFiles_handle,'Value');
vid_list = get(vid_fig_hand.listFiles_handle,'String');
vid_name = vid_list{selected_file};
fileFirstString = (vid_name(1:end-5));
todayDateString = date;
s = strcat(vid_dir,'\',fileFirstString,'man_vid_outcomes',todayDateString ,'.mat');

data = get(vid_fig_hand.uit,'Data');
data(:,1) = cellfun(@num2str,data(:,1),'UniformOutput',false);
data(:,4) = vid_fig_hand.logged_trajectories;

save(s,'data')


end