Getting Started
=====

This document provides a step-by-step guide on how to download and use RealProbe. We provide a pre-built version for immediate use, as well as access to the raw version if modifications are needed.
.. _installation:

Prerequisites
------------

Before starting, ensure that your Vitis HLS and Vivado version is v2023.1. 

Step 1: Download RealProbe
------------

First download the RealProbe on github.

.. code-block:: console

   $ git clone https://github.com/sharc-lab/RealProbe.git

   $ cd RealProbe

Step 2: Download LLVM Build
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

Step 3: Setting Up the LLVM Build
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

Step 4: Set Up Your HLS Project
----------------



To retrieve a list of random ingredients,
you can use the ``lumache.get_random_ingredients()`` function:

.. autofunction:: lumache.get_random_ingredients

The ``kind`` parameter should be either ``"meat"``, ``"fish"``,
or ``"veggies"``. Otherwise, :py:func:`lumache.get_random_ingredients`
will raise an exception.

.. autoexception:: lumache.InvalidKindError

For example:

>>> import lumache
>>> lumache.get_random_ingredients()
['shells', 'gorgonzola', 'parsley']

