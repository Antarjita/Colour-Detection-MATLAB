%% setting up the web-camera
clear all; close all; clc; imaqreset;
%camlist=webcamlist;
cam=webcam;
hShow = imshow(zeros(600,1000,3,'uint8'));title('Camera');

%% Detect the red colored cloth using color detection and segmentation algorithm.
frames=2000;

for i=1:frames
    vid_img=snapshot(cam);
    vid_img=flip(vid_img,2);
    object_detected=detect_color(vid_img);
    set(hShow,'CData',object_detected);
    drawnow;
end

stop(cam)
delete(cam);
%% done
clear all; close all; clc; imaqreset;
