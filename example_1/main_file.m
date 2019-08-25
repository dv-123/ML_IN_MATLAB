%% making the algorithm
clear ; close all; clc
%% importing the requires dataset

load('input_x_nD.mat')
load('output_y_nD.mat')

%% deviding into test and train dataset
m_train = 500;
n = 5;
m_test = 300;

x_train = x_in(1:m_train,1:n);
y_train = y_out(1:m_train,1);

x_test = x_in(m_train+1:m_train+m_test,1:n);
y_test = y_out(m_train+1:m_train+m_test,1);

%% normalizing the inputs and outputs

X_train = feature_normalize(x_train);
X_test = feature_normalize(x_test);

X_train = [ones(m_train,1) X_train];
X_test = [ones(m_test,1) X_test];

Y_test = y_test;
Y_train = y_train;

%% Gradient Descent
weights = zeros(1,size(X_train,2));
alpha = 0.3;
num_iters = 100;

[weights,J_history] = cost_and_gradientdescent(X_train, Y_train, weights, alpha, num_iters);

%graph between decrease in the loss with number of iterations 
plot(J_history)
%% predictions
predict = X_test*weights';
fprintf('The first 5 predicted values are: ');
predict(1:5)

%Accuracy = (sum(out)/size(Y_test))*100;
%Accuracy