function drawLine(p1, p2, varargin)
%DRAWLINE Draws a line from point p1 to point p2
%   DRAWLINE(p1, p2) Draws a line from point p1 to point p2 and holds the
%   current figure

%plot x coordinate matrix [p1(1) p2(1)] versus
%y coordinate matrix [p1(2) p2(2)]
%varargin allows for additional parameters
plot([p1(1) p2(1)], [p1(2) p2(2)], varargin{:});

end
