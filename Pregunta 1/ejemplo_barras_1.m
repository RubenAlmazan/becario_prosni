y = [27 12 8 8 0];
h = bar3(y);

%Set Y label
title('(1) Considera que todos los/las miembros del grupo han trabajado igual');
% Set Z label
zlabel('Numero de respuestas');

% Obtain the handle to the current axes
axesHandle = gca;

% Set the y-axis tick labels
yticklabels = {'Siempre (27)', 'Casi siempre (12)', 'Muchas veces (8)', 'Algunas veces (8)', 'Nunca (0)'};
set(axesHandle, 'YTickLabel', yticklabels, 'FontSize', 16);

xdata = get(h, 'XData');
ydata = get(h, 'YData');
zdata = get(h, 'ZData');
delete(h);
idx = [0;find(all(isnan(xdata),2))];
colormap jet; 
cm = get(gcf,'colormap');  % Use the current colormap.
cnt = 0;
S = zeros(length(h)*(length(idx)-1),1);
dv = floor(size(cm,1)/length(S));
for ii = 1:length(idx)-1
    cnt = cnt + 1;
    S(cnt) = surface(xdata(idx(ii)+1:idx(ii+1)-1,:),...
                     ydata(idx(ii)+1:idx(ii+1)-1,:),...
                     zdata(idx(ii)+1:idx(ii+1)-1,:),...
                     'facecolor',cm((cnt-1)*dv+1,:));
end