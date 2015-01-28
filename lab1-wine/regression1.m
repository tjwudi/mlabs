clear; close all; clc;

% read data
data = dlmread('winequality-white.csv', ';');
data = data(2:size(data, 1),:); % strip first row

% X -> features
% y -> quality
% m -> number of instances
% n -> number of features

m = size(data, 1);
n = size(data, 2);
X = [ones(m, 1) data(:, 1:11)]; % m x n
y = data(:, 12); % m x 1

% initial theta (n x 1) is a zero vector
theta = zeros(n, 1);
initial_cost = computeCost(X, y, theta);

fprintf('Initial cost: %.2f\n', initial_cost);


