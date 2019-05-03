# model_g_1d_bjd
Model G one dimension C++ Crank Nicolson solver with output file.

This code is related to paper: "Stationary Dissipative Solitons of Model G" by Matthew Pulver and Paul A. LaViolette 2014 @ http://starburstfound.org/downloads/physics/model_G.pdf?fbclid=IwAR1YUET6xz8f5qz25jj8IhGFH2XiFpJTpeYrOE_x1LzmbofgAxNMEHfZU7Q

This file ```modelg1d_bjd2c.cpp```, adds to ```modelg1d.cpp```, including passing output to a file to be plotted using gnuplot in c++.

Use the c++ compiler commands:

```g++ -std=c++11 modelg1d_bjd2c.cpp```

```./a.out```

In gnuplot use:

gnuplot> ```plot 'modelg_1d_outfile_3.txt'```

File ```model_g_CN_plot_potentials_vs_radius_1d.m``` can run in Octave ( https://www.gnu.org/software/octave/ ) by typing ```model_g_CN_plot_potentials_vs_radius_1d``` in the command line.
