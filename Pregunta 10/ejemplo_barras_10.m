y = [2 8 23 4 18];
h = bar3(y);

%Set Y label
title('(10) ¿Cuál considera que es el principal beneficio del trabajo colaborativo?');
% Set Z label
zlabel('Numero de respuestas');

% Obtain the handle to the current axes
axesHandle = gca;

% Set the y-axis tick labels
% yticklabels = {'Totalmente de acuerdo (26)', 'De acuerdo (18)', 'Ni en desacuerdo ni de acuerdo (11)', 'En desacuerdo (0)', 'Totalmente en desacuerdo (0)'};
yticklabels = {'Competencia profesional (2)', 'Desarrollo eficaz de las actividades (8)', 'Co-ayudar y aprender (23)', 'Reparto equitativo de tareas (4)', 'Interacción social-conocimiento (18)'};
% yticklabels = {'Si (53)', 'No (2)'};

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