clear ; close all; clc
%% Defining the base polynomial equation for the introduction purpose
%% we will be obtaining the equation like this given below at the end of out training which will fit the training examples.

% first let us specify the order of refrence polynomial function
order = 3;

% now we are specifying the range of x for the polynomial function
x = linspace(-15,15,100); % the x varies linearly from -15 to 15 having 100 divisions

% the value 100 specifies ???

% we created the linear x because we will the seeing the variation of y
% with respect to x increasing linearly

% also the value of x for now is not varying inside the polynomial.
% which means we are making a polynomial base function f(x) and not
% f(x1,x2....xn).

% defining the output y of same size as that of x i.e. 1000
y=zeros(size(x));

% now let us make a polynomial of order=3
% here the random number n is generated for every iteration which is the
% value of weight of that power of x.
for i=1:order+1
    y = y+randn*x.^(i-1);
end

% plotting the output y to see the polynomial
figure(1), clf
hold on
plot(x,y,'linew',4)
title([ 'Order-' num2str(order) ' polynomial' ])
%% Data Generation 
%% Creating the random 1D-data 
%clear ; close all; clc
n = 10000;
input_x_1D = (1:n)';
k = 10;
% yi = interp1(x,Y,xi,method) interpolates using alternative methods:
variability = interp1(100*randn(k,1),linspace(1,k,n),'pchip')';
% 'pchip' --> Piecewise cubic Hermite interpolation
output_y_1D = variability + 20*randn(n,1);
% this variability is the actual function we want to find

figure(2), clf, hold on
h = plot(input_x_1D, output_y_1D);
set(h,'color',[1 1 1]*.6)
xlabel('input_x'), ylabel('output_y')


%% Generating a multidimentiaonal input data
clear ; close all; clc
m = 2000; % number of training examples
n = 1; % number of input features

x1 = linspace(-1,1,800);
x2 = linspace(4,5,800);
x3 = linspace(-100,100,800);
x4 = linspace(1,100,800);
x5 = linspace(0,1,800);

x_in = [x1' x2' x3' x4' x5'];

y_out = (0.000302*x1+0.00000404*x2.^2+0.00000106*x3.^3+.000024*x4+.000017*x5.^0.5+.007012)';

%for i = 1:n
%    q = abs(randn);
%    input_x(i,:) = linspace(-q*100,q*100,m);
%end
%input_x = input_x';

%weights_w = rand(1,n)*10;

%bias_b = rand(m,1)*10;

%output_y = input_x*weights_w' + bias_b;

%%
% save parameters by clicking on them and selecting saveas option.