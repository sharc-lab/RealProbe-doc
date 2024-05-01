Hands-on Examples
========

In this tutorial, we will focus on deploying RealProbe to run FPGA designs, interpret the results, and perform a comparative analysis with co-simulation data to identify the actual differences in simulated results and on-FPGA results.

We will explore three distinct examples, each designed to highlight different features and capabilities of RealProbe.

Example lists
------------

1) Matrix multiplication
* Description: This example involves a straightforward matrix multiplication with a single top-level function. It does not include nested functions, loops, or additional function calls. It serves as an excellent starting point for understanding the basic application of RealProbe.

2) Hamming distance
* Description: This example is more complex, involving multiple functions. It demonstrates how to switch the focus of probing between different functions and illustrates how RealProbe tracks and reports the cycle counts for each. This will help you understand the dynamic capabilities of RealProbe in handling multiple functions within the same design.

3) Custom manual function
* Description: Specifically crafted for this tutorial, this example features a design with nested functions and loops to showcase how RealProbe handles more intricate signal probing. We will also discuss how to modify the probing target and analyze the impact of these changes on the results displayed by RealProbe.

These hands-on examples are structured to enhance your understanding of RealProbe's functionality and to equip you with the skills needed to effectively use this tool in your FPGA development projects.

.. toctree::
  :hidden:

  ex1
  ex2
  ex3
