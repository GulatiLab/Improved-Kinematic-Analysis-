function displayErrorMessage(message)

global vid_fig_hand;

beep
uicontrol(vid_fig_hand.ErrDispClear);
set(vid_fig_hand.ErrDispClear,'String',message);
set(vid_fig_hand.ErrDispClear,'BackgroundColor', [1 0.67 0.7 ]);

end