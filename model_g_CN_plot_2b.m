% Model G - Crank Nicolson Solver - plotting output from c++ solver file : modelg1d_bjd3b.cpp
% Written by Brendan Darrer 26 April 2019.

% Load .txt file arrays of time and etheron potentials as 2d arrays.
A = load('/home/bjd/software/SQK_2/crank_nicolson/model_g_1d-master/modelg_1d_outfile_G.txt')
B = load('/home/bjd/software/SQK_2/crank_nicolson/model_g_1d-master/modelg_1d_outfile_X.txt')
C = load('/home/bjd/software/SQK_2/crank_nicolson/model_g_1d-master/modelg_1d_outfile_Y.txt')
D = load('/home/bjd/software/SQK_2/crank_nicolson/model_g_1d-master/modelg_1d_outfile_lapG.txt')
E = load('/home/bjd/software/SQK_2/crank_nicolson/model_g_1d-master/modelg_1d_outfile_lapX.txt')
F = load('/home/bjd/software/SQK_2/crank_nicolson/model_g_1d-master/modelg_1d_outfile_lapY.txt')

figure('Position', [100, 100, 1049, 910]);

% Assign array to time t and potentials: G, X, Y, lapG, lapX, lapY
t=A(:,1); G=A(:,2); X=B(:,2); Y=C(:,2); lapG=D(:,2); lapX=E(:,2); lapY=F(:,2);

%producing spline fit to data
xq1 = 0:1:100;

s = spline(t,G,xq1);
s2 = spline(t,X,xq1);
s3 = spline(t,Y,xq1);
s4 = spline(t,lapG,xq1);
s5 = spline(t,lapX,xq1);
s6 = spline(t,lapY,xq1);

%plot(t,G,'o',xq1,s,'-.',t,X,'x',xq1,s2,'-',t,Y,'s',xq1,s3,'.')

%plot(t,G,'o',xq1,s,'-.',t,X,'x',xq1,s2,'-',t,Y,'s',xq1,s3,'.')
%plot(t,G,xq1,s,'-.',t,X,xq1,s2,'-',t,Y,xq1,s3,'.')

%plot(t,G,xq1,s,'-.',t,X,xq1,s2,'-',t,Y,xq1,s3,'.',t,lapG,xq1,s4,'o',t,lapX,xq1,s5,'s',t,lapY,xq1,s6,'x')
plot(t,G,xq1,s,'.','color','blue',t,X,xq1,s2,'.','color','red',t,Y,xq1,s3,'.','color','black',t,lapG,xq1,s4,'.','color','green',t,lapX,xq1,s5,'.','color','magenta',t,lapY,xq1,s6,'.','color','yellow')

%legend('Sample Points','pchip','spline','Location','SouthEast')
legend('G','X','Y','lapG','lapX','lapY','Location','East')

title({'Model G - Crank Nicolson Solver';'time vs. potentials: G, X, Y, lapG, lapX, lapY - sline plot'})

xlabel('time / dimensionless')
ylabel('G, X, Y, lapG, lapX, lapY / concentration / dimensionless')

%saveas(gcf,'/home/bjd/octave/examples/code/bjd/Model G - Crank Nicolson Solver 1g.png')
saveas(1,'/home/bjd/octave/examples/code/bjd/Model G - Crank Nicolson Solver 2b.png')
