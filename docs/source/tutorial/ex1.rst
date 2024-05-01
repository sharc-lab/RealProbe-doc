Example 1: Matrix multiplication (Single function)
==============================

We will now first demonstrate the end-to-end RealProbe workflow with a Vitis HLS project implementing a simple matrix multiplication kernel. This example is from `Kastner et al.'s excellent Parallel Programming for FPGAs github <https://github.com/KastnerRG/pp4fpgas/>`_. 

This project has already been set up with HLS source files including matrixmultiplication.cpp, testbench files matrixmultiplication-top.cpp, and matrixmultiplication.gold.dat. This project's hls.tcl file is already prepared with the example too. Let's first look into the hls.tcl script, and then run it.

Preparing Vitis HLS tcl Script
--------------------

Vitis HLS can be run from the GUI, but also in batch mode from a Tcl script. Below is the example format of hls.tcl file, and RealProbe reads solution_name, project_name, target_device for future bitstream generation. 

#. Set variables

.. code-block:: 

  set solution_name solution1
  set project_name project
  set target_device {xc7z020clg400-1}

#. Open a project and remove any existing data

.. code-block:: 

  open_project -reset $project_name

#. Add kernel and testbench
.. code-block:: 

  add_files matrixmultiplication.cpp
  add_files -tb matrixmultiplication-top.cpp
  add_files -tb matrixmultiplication.gold.dat

#. Tell the top

.. code-block:: 

  set_top matrixmul

#. Open a solution and remove any existing data

.. code-block:: 

  open_solution -reset $solution_name

#. Set the target device

.. code-block:: 

  set_part $target_device

#. Create a virtual clock for the current solution

.. code-block:: 

  create_clock -period 10 -name default

#. Compile and runs pre-synthesis C simulation using the provided C test bench

.. code-block:: 

  csim_design -code_analyzer -clean  

#. Run C synthesis

.. code-block:: 

  csynth_design

#. Export design to be formatted suitable for adding to Xiling IP catalog

.. code-block:: 

  export_design -format ip_catalog
  
#. Execute post-synthesis co-simulation of the synthesized RTL with the original C/C++-based test bench

.. code-block:: 

  cosim_design -trace_level all

#. Close the project
  close_project

.. note::

   Variable name solution_name, project_name, target_device should not change. Also, don't change the tcl script name from hls.tcl. 

Run RealProbe
--------------------

We will now run the design with RealProbe integrated. This will override the previous Vitis HLS pre-defined function to be RealProbe functions. 

.. code-block:: 

  make all

Deploy on FPGA
--------------------

After running RealProbe, there should be FPGA folder generated in current project directory. It is the folder that extracts all the files needed to run on board. Ipynb file for FPGA is automatically generated (not including software impementation for functional verification), but includes RealProbe results.

on Synestia Pynq-Z2 FPGA Jupyter server, go to the project directory (project directory is shared on Synestia desktop and Pynq-Z2 board). Go find FPGA folder, and run the commands on ipynb file using Shift + Enter
