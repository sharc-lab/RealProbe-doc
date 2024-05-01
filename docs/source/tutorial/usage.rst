How to run RealProbe
==============================

RealProbe offers three operational modes, allowing users to adapt the tool to their specific needs for FPGA development. Below is an overview of how to execute each mode.

First version is run without realprobe, which is just running end-to-end from HLS source code to bitstream generation.
Second version is original design with RealProbe, also from end-to-end from HLS source code to bitstream generation.
Last version is to change the probing function after first running with second version.

Original 
----------------

This mode runs the process from end-to-end without RealProbe, focusing solely on the HLS source code to bitstream generation. To execute the original design flow, use the following command:

.. code-block:: console

   $ make base

RealProbe
----------------

To incorporate RealProbe into your design workflow, which also runs from end-to-end from HLS source code to bitstream generation, use this command:

.. code-block:: console

   $ make realprobe

Function Change
----------------

After initially running your design with RealProbe, you may wish to change the function you are probing. This mode allows you to modify only the RealProbe IP and its probing hierarchy without redoing the entire Vitis HLS part. This approach utilizes the incremental synthesis and implementation flow, significantly reducing runtime compared to a full rerun. Execute the function change with the following command, specifying the new function to probe:


.. code-block:: console

   $ make function <Function you want to probe new>

.. note::

  This command should only be executed after the RealProbe version has been run, as it builds on the previously established setup.

This guide provides a clear path for utilizing RealProbe in various scenarios, ensuring that you can efficiently manage and optimize your FPGA design process.
