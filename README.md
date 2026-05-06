# ECE524-Final-Project
## Introduction

This project implements a real time video processing pipeline on the Zedboard using an ov7670 camera module as the video input and VGA as the display output. The system captures live pixel data from the camera, stores the frame in FPGA block memory, applies selectable image filters and display transformations, and then outputs the processed video to a VGA monitor. 

The design is based on juhshanhsiao's project ["Connect Camera to Zedboard"](https://hackmd.io/@jushanhsiao/connect_camera_to_zedboard).

The project began with basic camera to VGA video output and was then expanded to support per-pixel filters, neighborhood filters, image mirroring, and pause/resume functionality. The final system demonstrates how an FPGA can be used for hardware accelleration when it comes to video processing. 

The complete Vivado and Vitis project files are hosted externally due to GitHub size limitations:
[Download Full Project](https://drive.google.com/drive/folders/1VUFzXm7OVdBB3T3K-ocGLZ4gUPBZft1d)

## Project Objectives

 - Interface the ov7670 camera module with the Zedboard
 - Successfully display a live camera video on a VGA monitor
 - Implement selectable per-pixel filters
 - Implement selelectable neighborhood filters
 - Add video transformations such as horizontal and vertical mirroring
 - Manage control signals (filter selection) through software

## Components Used

- Zedboard
- ov7670 VGA camera module
- VGA to HDMI adapter
- HDMI cable
- Monitor

## Block Diagram


<img width="368" height="331" alt="image" src="https://github.com/user-attachments/assets/a90d980a-12fb-4b44-b74c-6d26c4ef7a83" />

## Pinout


<img width="764" height="880" alt="image" src="https://github.com/user-attachments/assets/2b3b3647-b107-43a8-a8e5-641fd6214c58" />

## Hardware Description
clocking.vhd

Generates the internal clocks used by the design from the Zedboards internal 100MHz input clock. The module provides a 50MHz clock for camera control logic and a 25MHz clock for VGA timing.


debounce.vhd

Filters the physical push button input to remove mechanical bouncing. The debounced signal is used to restart or resend the ov7670 camera configuration sequence.


i2c_sender.vhd

Implements the SCCB/I2C like serial communication needed to configure the ov7670 camera. It sends the camera device address, register address, and register value over athe SIOC and SIOD lines.


ov7670_registers.vhd

Stores the ov7670 camera initialization sequence as a table of register/value pairs. These settings configure the camera output format, timing behavior, frame window, and color related camera settings as well.


ov7670_controller.vhd

Controls the camera startup process. It generates the camera clock, manages camera reset and power down signals, reads commands from ov7670_registers.vhd, and sends them to the camera through i2c_sender.vhd


ov7670_capture.vhd

Captures pixel data from the OV7670 camera. It uses VSYNC to detect frame boundaries and HREF to detect valid active video data. The module combines incoming camera bytes into RGB pixel data, converts the camera data into 12-bit RGB444 format, and generates framebuffer write signals.


frame_filter_3x3.vhd

Applies frame-based filters that require neighboring pixels. The module uses line buffers to form a 3x3 pixel neighborhood and supports effects such as blur, sharpen, and edge/difference filtering before pixels are written into the framebuffer.


blk_mem_gen_0

Acts as the framebuffer for the video system. It is a dual-port block memory generated using Vivado’s Block Memory Generator. The camera side writes pixels into memory, while the VGA side reads pixels from memory for display.


pixel_filter.vhd
Applies simple per-pixel filters to the video stream. Filters include normal pass-through, grayscale, invert, black/white threshold, red-only, green-only, and blue-only filtering.


vga.vhd

Generates the VGA output timing and color signals. It produces horizontal and vertical sync pulses, reads pixels from the framebuffer, applies VGA-side effects such as mirroring, and drives the red, green, and blue VGA outputs.


ov7670_top.vhd

Top-level module for the full system. It connects the camera interface, clock generator, configuration controller, capture logic, frame filter, framebuffer, pixel filter, VGA output, switches, button, and LEDs into one complete design.


## Software Description
The software portion of this project focused on integrating a custom image filter into a hardware-based processing pipeline. The filter module was packaged as a custom AXI IP, allowing it to interface with the rest of the system through standard AXI protocols.

This IP was then incorporated into a Vivado block design alongside the camera module. Within this design, the camera acts as the input source, streaming image data into the system, while the custom filter IP processes the data in real time.

The use of AXI-based integration enabled seamless communication between components and provided a flexible, modular architecture for extending the design with additional processing blocks if needed.

## Block Design
<img width="1244" height="495" alt="image" src="https://github.com/user-attachments/assets/c9e6f9fd-0b0b-4cad-bade-374aac0be80c" />


## Demo
[Video Link](https://www.youtube.com/shorts/IY8pP2I_zEc).
