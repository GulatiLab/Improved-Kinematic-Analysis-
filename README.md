# Reach-Video-Analysis-GUI
A MATLAB GUI for kinematic tracking of reach trials
Reach Onset Video Analysis

Locate and open the “M1-Cb Reach” excel sheet in the bmiatcedars lab drive 
Go to the appropriate subject data sheet
Identify the title of the video clips under the “Video” heading that correspond to the reach trials for the date of interest

Open the NewBoxScripts folder on the desktop (cerebellum rig)

Follow this pathway: C:\Users\TDT\Desktop\NewBoxScripts\START_shakthi_copy\reach_trials_2dot0_SHAKTHI_COPY

Identify all video clips of interest and copy them to a place in the vault if doing the video analysis on the 8th floor

Open the “videoAnalysisScripts” folder, open “videoAnalysisGUI”, and run it.

Video analysis GUI vault pathway: Z:\New Lab Folder\MATLAB_scripts\NewBoxScripts\START_shakthi_copy\reach_trials_2dot0_SHAKTHI_COPY\videoAnalysisScripts

GUI
Subject: This field is case sensitive
Date: Put the date when the clips were recorded

Once put the subject and date have been inputted, click find files

Select a clip by clicking it and then there are two options. The “Preview” button plays the clip in its entirety in real time. This could be helpful to determine whether or not it is the right clip.

The “Place” button places the clip into the GUI, thereby allowing the user to go through the clip frame by frame.
 
The green box below the clip shows the frame number. To go forward or backward frames, click the appropriate boxes to the left and right of the green box. Additionally, enter a frame number in the 2nd, brighter green box, then click “Go to Frame #” to see that frame.

Using the keyboard to go through frames
Right arrow: +1 frame
Left arrow: -1 frame
Shift right arrow: +10 frames
Shift left arrow: -10 frames 
z: adds/removes the current frame number to/from the reach onset list
x: sets the current frame as the time of pellet touch. If the current frame is already set as the time of pellet touch, the time of pellet touch is set to ‘’ instead.
c: sets the current frame as the onset of retraction. If the current frame is already set as the onset of retraction, the onset of retraction is set to ‘’ instead.
k: Prompts the user to mark the reach trajectory for the current frame.
Shift k: Jumps to the frame of reach onset and prompts the user to mark the reach trajectory for that frame. Then it goes to the next frame. This repeats until the frame of retract onset is marked.
Shift S: logs all the trial information into the table above it. Reach trajectory information is saved when applicable even though it is not displayed. If the data is not logged, check the matlab command window for mistakes in the data.

Trial Outcome
0 attempted reach, failure
1 attempted reach, successful
2 pellet was ignored
3 reached but the pellet was not on the pellet arm 
4 reached for pellet on forcep & reach for pellet arm, unsuccessful
5 reached for pellet on forcep & reach for pellet arm, successful

Frame Marking
●	Record frames for:
○	Reach onset
○	Grasping
○	Retract
●	Record an onset frame for every reach attempt in a trial, but only include Grasping and Retracting frames for the final reach attempt
●	If a trial was failed, the GUI will input a 0 after the final grasping frame, and a 1 after the final retract frame
○	Ex: 35, 48, 58, 0, 70, 1; indicates a failed trial with two reaching attempts where the final attempt had a grasping frame of 58, and a retracting frame of 70
●	If a trial was successful, the GUI will input the final onset, grasping and retracting frames one after another

Operational definition
Reach onset: 1 frame before liftoff occurs to reach the pellet. If the rat reaches several times, log the reach onset frames of all reaches. If the rat does not reach, leave reach onset blank. If the pellet was grasped and is not visible in the rat’s paw or mouth afterward but was not seen falling onto the ramp, count it as 1. 

After logging each reach onset, log the frame where the rat first touches the pellet on the successful attempt, and the frame where the rat begins to retract its arm after having grasped the pellet.

In trials where a retract onset is logged, use ‘m’ on the keyboard or the ‘Mark Reach Frame’/ ‘Mark Full Trajectory’ buttons to track the trajectory of the rat’s reaching paw with the mouse. The trajectory should be marked for all frames from the final reach onset to the retract onset, inclusive.

Once all information has been inputted into the four boxes and the whole reach trajectory is marked, click “Log Events.” The GUI will catch obvious errors but if any of the information is incorrect, the boxes can be overwritten in the table by correcting the reach trajectory and the information in the boxes and relogging the data. Errors caught by the GUI will be displayed in the bottom right and a tone will play. Clicking on the error message will clear it but doing so is not necessary to continue using the GUI.

Repeat for all other clips.  
