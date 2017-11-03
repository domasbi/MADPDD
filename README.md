# MADPDD
Misorientation angle dispersed plastic deformation distribution (MATLAB script)

Electron back-scattered diffraction (EBSD) analysis provides a feature to construct a Grain Reference Orientation Deviation (GROD) map where each grain is assigned a reference orientation value, and then each pixel from that particular grain is assigned a misorientation angle value depending on how much its orientation deviates from the reference value. This analysis is useful in material science and mechanical engineering fields as a tool to visualize plastic deformation in structural materials. 

This is a MATLAB script for plotting a distribution of pixels from GROD analysis which provides a tool to analyse plastic deformation in a more quantifiable way. It is particularly useful when comparing plastic deformation in several different samples.

This script uses raw data produced by using EDAX TSL OIM EBSD software. Some adjustment might be necessary for data files produced by Oxford, Bruker etc. EBSD systems.

In current folder, "grod_data.txt" file is used as input. Original file contained some explanatory text which was removed to avoid conflicts in MATLAB.
MATLAB script (madpdd.m) reads the data file and plots Number of scanned points versus the misorientation angle which is then saved as .png image file (MADPDD.png in this case).
