function [fitresult, gof] = richardsonFit(xtest, ytest, ztest)
%CREATEFIT(XTEST,YTEST,ZTEST)
%  Create a fit.
%
%  Data for 'richardsonFit' fit:
%      X Input : xtest
%      Y Input : ytest
%      Z Output: ztest
%  Output:
%      fitresult : a fit object representing the fit.
%      gof : structure with goodness-of fit info.
%
%  See also FIT, CFIT, SFIT.

%  Auto-generated by MATLAB on 11-Nov-2021 10:02:07


%% Fit: 'richardsonFit'.
[xData, yData, zData] = prepareSurfaceData( xtest, ytest, ztest );

% Set up fittype and options.
ft = fittype( 'richardson(x, y, a, b, c)', 'independent', {'x', 'y'}, 'dependent', 'z' );
opts = fitoptions( 'Method', 'NonlinearLeastSquares' );
opts.Display = 'Off';
opts.StartPoint = [10 10 10];

% Fit model to data.
[fitresult, gof] = fit( [xData, yData], zData, ft, opts );

% Plot fit with data.
%figure( 'Name', 'richardsonFit' );
%h = plot( fitresult, [xData, yData], zData );
%legend( h, 'richardsonFit', 'ztest vs. xtest, ytest', 'Location', 'NorthEast', 'Interpreter', 'none' );
% Label axes
%xlabel( 'xtest', 'Interpreter', 'none' );
%ylabel( 'ytest', 'Interpreter', 'none' );
%zlabel( 'ztest', 'Interpreter', 'none' );
%grid on
%view( -37.3, 7.1 );


