function ChangeTrialNum_Callback(hObject, eventdata)

global vid_fig_hand;

newTrialNum = str2double(get(vid_fig_hand.AltTrialNum,'String'));

set(vid_fig_hand.ErrDispText,'Visible',false);
set(vid_fig_hand.ConfOverwrite,'Visible',false);
set(vid_fig_hand.CancelLog,'Visible',false);
set(vid_fig_hand.ChangeTrialNum,'Visible',false);
set(vid_fig_hand.AltTrialNum,'Visible',false);

if  newTrialNum > 0 && mod(newTrialNum,1) == 0
    set(vid_fig_hand.RowEditHd,'String',num2str(newTrialNum));
    uicontrol(vid_fig_hand.logEventFrame)
else
    displayErrorMessage('New trial number does not resolve into an integer. Trial not logged.')
end

end