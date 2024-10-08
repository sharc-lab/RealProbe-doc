Setup
==============================

Step-by-step guide on how to download and use RealProbe. 

Prerequisites
------------

Before starting, ensure both Vitis HLS and Vivado version is v2023.1. RealProbe is tested on Red Hat Enterprise Linux 7.9.

Directory Path Setup
------------

Ideally, this will be the ideal directory path setup for running RealProbe

.. image:: ../img/filepath.png
  :width: 500
  :alt: <Directory Path Setup>

based on this figure in mind, you can follow the below steps.

Step 1: Set Up Your HLS Project
----------------
First, set up your HLS project folder. You have to prepare all C/C++ files to run HLS, also the hls.tcl script that runs Vitis HLS. Our GitHub repository offers many examples (in benchmark folder) so you can refer to tcl script to run Vitis HLS. 

Step 2: Download RealProbe
------------

First download the RealProbe on github.

.. code-block:: console

   $ git clone https://github.com/sharc-lab/RealProbe.git

   $ cd RealProbe

Step 3: Download LLVM Build
------------

You have two options depending on your needs:
  
Option A: Downloading the Built Version
This version is pre-compiled and ready to use with RealProbe. Ideal for users who do not need to modify the underlying tools.
Download the Built Version: Click on the `Download <https://www.dropbox.com/scl/fi/6cr90f9q0gd3tohl9qwdx/hls-build.zip?rlkey=i0qrqj97mlcrvqmgd4itgruzg&dl=0>`_ link
Save the file on your system: Choose an appropriate location on your computer to save the file.
  
Option B: Downloading the Raw Version
Select the Raw Version: If you plan to customize the LLVM build, download the raw, uncompiled version.
Download the Raw Version: Click on the corresponding download link.
Save the file on your system: Ensure you have the necessary tools to compile it later.

Step 4: Setting Up the LLVM Build
----------------

For the Built Version
Extract the Files: Unzip the downloaded file to your preferred directory.
Integration with RealProbe: Follow the specific instructions provided by RealProbe to integrate this LLVM build into the toolchain.

For the Raw Version
Extract the Files: Unzip the source files to a suitable directory.
Build the LLVM Toolchain:
Open a terminal or command prompt.
Navigate to the directory containing the source files.
Follow the `build instructions <https://github.com/Xilinx/hls-llvm-project/tree/2023.1>`_ link specific to Vitis HLS to compile the toolchain.
Integration with RealProbe: After building, integrate the custom LLVM build with RealProbe as per the provided documentation.

Now you are all ready! Let's go to How to run section
----------------
