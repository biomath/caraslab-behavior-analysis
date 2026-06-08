function varargout = myplot(varargin)
%varargout = myplot(varargin)
%
%Initializes a figure window of my preferred size and color. Optional input
%can be the figure number. Optional output is figure handle.
%
%Written by Melissa L. Caras 4-12-10
% Modified by M Macedo-Lima 5/5/26

scrsz = get(0,'ScreenSize');

if nargin > 0 && (isnumeric(varargin{1}) || islogical(varargin{1})) && isscalar(varargin{1})
    silent = varargin{1};
    visibility = {'on', 'off'};
    f = figure('Visible', visibility{silent + 1});
else
    f = figure(varargin{:});
end

set(f, 'color', 'w');
set(f, 'position', [1 scrsz(4)/2 scrsz(3)/1.5 scrsz(4)]);
varargout{1} = f;
end