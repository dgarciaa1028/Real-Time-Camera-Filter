# ECE524-Final-Project
## Introduction

This project implements a real time video processing pipeline on the Zedboard using an ov7670 camera module as the video input and VGA as the display output. The system captures live pixel data from the camera, stores the frame in FPGA block memory, aappliues selectable image filters and display transformations, and then outputs the processed video to a VGA monitor. 

The design is based on juhshanhsiao's project ["Connect Camera to Zedboard"](https://hackmd.io/@jushanhsiao/connect_camera_to_zedboard).

The project began with basic camera to VGA video output and was then expanded to support per-pixel filters, neighborhood filters, image mirroring, and pause/resume functionality. The final system demonstrates how an FPGA can be used for hardware accelleration when it comes to video processing. 
