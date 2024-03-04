y = [25 12 12 5 1];
h = bar3(y);

%Set Y label
title('(2) Desde su experiencia ¿Ha existido compromiso y responsabilidad individual, para el desarrollo de actividades de forma colaborativa?');
% Set Z label
zlabel('Numero de respuestas');

% Obtain the handle to the current axes
axesHandle = gca;

% Set the y-axis tick labels
yticklabels = {'Siempre (25)', 'Casi siempre (12)', 'Muchas veces (12)', 'Algunas veces (5)', 'Nunca (1)'};
set(axesHandle, 'YTickLabel', yticklabels, 'FontSize', 14);

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