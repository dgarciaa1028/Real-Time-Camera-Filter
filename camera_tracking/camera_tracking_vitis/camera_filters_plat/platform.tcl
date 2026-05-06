# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct C:\Users\sammy\Documents\CSUN\Work\ECE524\camera_tracking\camera_tracking_vitis\camera_filters_plat\platform.tcl
# 
# OR launch xsct and run below command.
# source C:\Users\sammy\Documents\CSUN\Work\ECE524\camera_tracking\camera_tracking_vitis\camera_filters_plat\platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {camera_filters_plat}\
-hw {C:\Users\sammy\Documents\CSUN\Work\ECE524\camera_tracking\Camera_filter_SOC_wrapper.xsa}\
-proc {ps7_cortexa9_0} -os {standalone} -out {C:/Users/sammy/Documents/CSUN/Work/ECE524/camera_tracking/camera_tracking_vitis}

platform write
platform generate -domains 
platform active {camera_filters_plat}
domain active {zynq_fsbl}
bsp reload
bsp setdriver -ip filter_controls_0 -driver none -ver {}
bsp write
bsp reload
catch {bsp regenerate}
domain active {standalone_domain}
bsp reload
bsp setdriver -ip filter_controls_0 -driver none -ver {}
bsp write
bsp reload
catch {bsp regenerate}
platform generate
