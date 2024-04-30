Setup 
==============================

This tutorial's system setup is supported by Dr. Jeff Young from the `Center for Research into Novel Compute Hierarchies (CRNCH) <https://crnch.gatech.edu/>`_ at Georgia Tech.

For this session, we will utilize the `Synestia Desktop <https://synestia-ood.cc.gatech.edu/pun/sys/dashboard/batch_connect/sys/synestia_desktop/session_contexts/new/>`_  to operate tools, and the `Pynq-Z2 FPGA <https://synestia-ood.cc.gatech.edu/pun/sys/dashboard/batch_connect/sys/pynq_jupyter/session_contexts/new>`_ to see RealProbe's results on FPGA boards.

CRNCH System Setup
------------

For running RealProbe, we need to setup 1) Synestia Desktop and 2) FPGA board setup.

.. _Synestiadesktop:

1) Synestia Desktop

  To access an interactive desktop for the tutorial, please visit `Open OnDemand <synestia-ood.cc.gatech.edu/>`_. Below image     is the screen you will see when you open the link. This support is available exclusively to participants attending in person.   If you plan to use RealProbe on your local machine, ensure you have Vitis HLS, Vivado, and a compatible FPGA board. The         server provided has both Vitis and Vivado version 2023.1 installed. 
  
  .. image:: ../img/ood_1.png
    :alt: <Open OnDemand web.>
    :width: 400
  
  For RealProbe, select the “Synestia Desktop” under the “Synth & Emu” tab within the “Desktops” section as shown below.
  
  .. image:: ../img/ood_2.png
    :alt: Synestia Desktop.
    :width: 400
  
  The system will take a few seconds to prepare and then transition to a "Running" state, at which point a button to launch the   Synestia Desktop will become available.
  
  .. image:: ../img/ood_3.png
    :alt: Running Synestia Desktop.
    :width: 400

.. _fpgasetup:

2) FPGA Board Setup

  We are going to use Pynq-Z2 FPGA Board. To connect to the FPGA boards for on-board performance measurement using RealProbe,     select the Pynq-Z2 button at the top, followed by the Jupyter option to access the board via the Jupyter environment.
  
  .. image:: ../img/ood_4.png
    :alt: Pynq-Z2 server.
    :width: 400
  
  Launch the Jupyter setup using the default configurations.
  
  .. image:: ../img/ood_5.png
    :alt: Jupyter interactive session launch.
    :width: 400
  
  It will take a few seconds to prepare and then switch to "Running," making a "Connect to Jupyter" button available.
  
  .. image:: ../img/ood_6.png
    :alt: Jupyter session connect.
    :width: 400
  
  Below is the interface of Jupyter Lab you will see after launching Jupyter.
  
  .. image:: ../img/ood_7.png
    :alt: Jupyter lab.
    :width: 400

With this, the environment setup for the tutorial is complete!


