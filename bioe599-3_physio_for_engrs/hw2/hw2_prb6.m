% Created by: Anthony Le
% Last updated: 02.28.2018

% BIOE 599-3: Homework 2
% Due: 03.02.2018
%% Problem 6
close all;
clear;

l_0 = 5.1; % in cm
A = 3; % in mm^2
e_toe = 0.03; % unitless
Tm = 270; % in MPa
s_lin = 36; % in MPa
e_lin = 0.15; % unitless, =e_toe @ s_lin
r = 5.5; % in cm, moment arm
r = r * 100; % in m

% part a
k_2 = 64.01;

syms k_3 k_4;
eqn = [s_lin == k_3 * e_lin + k_4];
sol = solve(eqn, [k_3 k_4]);

k_3 = double(sol.k_3); % 240
k_4 = double(sol.k_4); % 0

s_toe = k_3 * e_toe + k_4; % 7.2N

k_1 = s_toe / (exp(k_2 * e_toe) - 1);

% part b
% stress-strain curve
L = [];
theta = deg2rad(linspace(0, 10, 1000)); % in rad
for g = 1:length(theta)
    l = 5 + 5.5 * theta(g); % in cm
    L = cat(1, L, l);
end

E = [];
for h = 1:length(L)
    e = (L(h)- l_0) / l_0;
    E = cat(1, E, e);
end

% E = linspace(0, 0.15, 1000); % unitless
S = []; % in MPa or N/mm^2
for i = 1:length(E)
    if E(i) <= e_toe
        s = k_1 * (exp(k_2 * E(i)) - 1);
        S = cat(1, S, s);
    elseif E(i) > e_toe
        s = k_3 * E(i) + k_4;
        S = cat(1, S, s);
    end
end

figure(1);
plot(E, S);

F = [];
for j = 1:length(S)
    f = A * S(j);
    F = cat(1, F, f); % in N
end

M = [];
for k = 1:length(F)
    m = F(k) * r;
    M = cat(1, M, m);
end

figure(2);
plot(L, M);