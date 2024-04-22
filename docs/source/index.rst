RealProbe
===================================

**RealProbe** is an open-source fully-automated FPGA profiling tool working with Vitis HLS to probe the on-board performance of HLS designs.

High-level synthesis (HLS) tools significantly expedite FPGA design exploration by rapidly generating diverse implementations through optimization directives with estimated performance. However, the estimated and simulated performance, especially the number of clock cycles, usually largely diverges from the actual cycle counts when executing a design on a real FPGA board. This hinders early identification of real bottlenecks and optimization opportunities for on-board performance. Moreover, profiling on-board cycle counts is very challenging, requiring cumbersome register-transfer-level code inspection and manual monitoring of internal signals, thereby diminishing the convenience of HLS.
Therefore, to provide users with a comprehensive understanding of actual on-FPGA performance, we propose \texttt{RealProbe}, the first fully-automated profiling tool to extract real on-FPGA performance.
With just one line---\texttt{\#pragma HLS RealProbe}---our tool automatically generates all the code necessary to profile the exact cycle counts of an entire function hierarchy on-board.
RealProbe is integrated into Vitis HLS and Vivado toolchain in a fully automated manner, with no user interaction required and no impact on kernel functionality.
Evaluated with 26 test cases and validated the functionality with the integrated logic analyzer, RealProbe guarantees 100\% accuracy in on-board cycle counts with minimal logic overhead. We hope RealProbe to extend the capabilities of Vitis HLS, offering a user-friendly solution for designers to optimize designs based on actual on-board performance. 

Check out the :doc:`usage` section for further information, including
how to :ref:`installation` the project.

.. note::

   This project is under active development.

Contents
--------

.. toctree::

   getting_started
   usage
