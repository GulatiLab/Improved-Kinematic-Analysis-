function vid_fig_hand_fig_WindowKeyPressFcn(hObject, eventdata)

global vid_fig_hand

ErrDispClear_Callback(vid_fig_hand.ErrDispClear,[]);

if strcmp(eventdata.Key,'rightarrow')
    if isempty(eventdata.Modifier)
        % set focus to the button
        uicontrol(vid_fig_hand.plusOneFrame);
        % call the callback
        plusOneFrame_Callback(vid_fig_hand.plusOneFrame,[]);
    elseif strcmp(eventdata.Modifier{:},'shift')
        % set focus to the button
        uicontrol(vid_fig_hand.plusTenFrame);
        % call the callback
        plusTenFrame_Callback(vid_fig_hand.plusTenFrame,[]);    end
end

if strcmp(eventdata.Key,'leftarrow')
    if isempty(eventdata.Modifier)
        % set focus to the button
        uicontrol(vid_fig_hand.minusOneFrame);
        % call the callback
        minusOneFrame_Callback(vid_fig_hand.minusOneFrame,[]);
    elseif strcmp(eventdata.Modifier{:},'shift')
        % set focus to the button
        uicontrol(vid_fig_hand.minusTenFrame);
        % call the callback
        minusTenFrame_Callback(vid_fig_hand.minusTenFrame,[]);   end
end

if strcmp(eventdata.Key,'z')
    % call the callback
    curr_frame = str2double(get(vid_fig_hand.frameEdithandle, 'String'));
    rch_onsets = str2num(get(vid_fig_hand.RowEditHdRCHONSET, 'String'));    
    if ismember(curr_frame, rch_onsets)
        rch_onsets(rch_onsets == curr_frame) = [];
    else
        rch_onsets = sort([rch_onsets curr_frame]);
    end
    set(vid_fig_hand.RowEditHdRCHONSET, 'String', char(strjoin(string(rch_onsets'),',')));
end

if strcmp(eventdata.Key,'x')
    if strcmp(get(vid_fig_hand.frameEdithandle, 'String'), get(vid_fig_hand.RowEditHdPLTTOUCH, 'String'))
        set(vid_fig_hand.RowEditHdPLTTOUCH, 'String', '');
    else
        set(vid_fig_hand.RowEditHdPLTTOUCH, 'String', get(vid_fig_hand.frameEdithandle, 'String'));
    end
end

if strcmp(eventdata.Key,'c')
    if strcmp(get(vid_fig_hand.frameEdithandle, 'String'), get(vid_fig_hand.RowEditHdRTRCTONSET, 'String'))
        set(vid_fig_hand.RowEditHdRTRCTONSET, 'String', '');
    else
        set(vid_fig_hand.RowEditHdRTRCTONSET, 'String', get(vid_fig_hand.frameEdithandle, 'String'));
    end
end

if strcmp(eventdata.Key,'s')
    if isempty(eventdata.Modifier)
        % do nothing
    elseif strcmp(eventdata.Modifier{:},'shift')
        % set focus to the button
        uicontrol(vid_fig_hand.logEventFrame);
        % call the callback
        logEventFrame_Callback(vid_fig_hand.logEventFrame,[]);   end
end

if strcmp(eventdata.Key,'k')
    if isempty(eventdata.Modifier)
        % set focus to the button
        uicontrol(vid_fig_hand.markFrameReach);
        % call the callback
        markFrameReach_Callback(vid_fig_hand.markFrameReach,[]);
    elseif strcmp(eventdata.Modifier{:},'shift')
        % set focus to the button
        uicontrol(vid_fig_hand.markFullReach);
        % call the callback
        markFullReach_Callback(vid_fig_hand.markFullReach,[]);
    end
end

if strcmp(eventdata.Key,'space')
    %Be sad
end

set(vid_fig_hand.vid_ax, 'XTick', []);
set(vid_fig_hand.vid_ax, 'YTick', []);

end

