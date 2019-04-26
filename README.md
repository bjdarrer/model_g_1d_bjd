# model_g_1d_bjd
Model G one dimension C++ Crank Nicolson solver with output file.

This file "modelg1d_bjd2c.cpp", adds to "modelg1d.cpp", including passing output to a file to be plotted using gnuplot in c++.

Use the c++ compiler commands:

g++ -std=c++11 modelg1d_bjd2c.cpp

./a.out

In gnuplot use:

gnuplot> plot 'modelg_1d_outfile_3.txt'
