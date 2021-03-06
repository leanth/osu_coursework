% Created by: Anthony H. Le
% Last updated: 03-13-2019

% CHE 581: Assignment 6
% Textbook Problems 24.8, 24.11, Additional Problems 1, 2
% Due: 03-13-2019
%% Additional Problem 1
close all; % close all figures
clear; % clear workspace
clc; % clear command window

disp('Additional Problem 1');
disp('See pdf file for written work.');

disp('-------------------------------------------------');

%% Additional Problem 2 (a)
close all;
clear;
clc;

disp('Additional Problem 2 (a)');

xpde_addprb_2amod

disp('Yes (mostly). Total mass in the system shouldn''t change over time.');
disp('However, marginal changes are shown in Figure 1, which may be due to');
disp('approximation error in the finite-difference method.');

disp(' ');

disp('See Figure 1 for simulation');
disp('See Figure 2 for time-space-concentration surface plot');
disp('See Figure 3 for non-reactive time-total system mass plot');

disp('-------------------------------------------------');

%% Additional Problem 2 (b) & (c)
close all;
clearvars -except Q_a; % run previous section to produce Q_a for plotting in this section
clc;

disp('Additional Problem 2 (b) & (c)');

xpde_addprb_2bcmod

disp('See Figure 1 for simulation');
disp('See Figure 2 for time-space-concentration surface plot');
disp('See Figure 3 for non-reactive & reactive time-total system mass plots');

disp('-------------------------------------------------');
