% Datos y etiquetas
y = [45, 10];
labels = {'Hombre', 'Mujer'};

% Colores personalizados y porcentajes
colors = [
    0 0 1;  % Azul
    1 0.5 0.8 % Rosa
];

% Degradar los colores
numSegments = numel(y);
colors = interp1(1:size(colors, 1), colors, linspace(1, size(colors, 1), numSegments));

% Crear el gráfico de pastel con colores personalizados
pie3(y);

% Asignar colores personalizados a cada segmento
colormap(colors);

% Agregar la leyenda
legend(labels);

% Agregar el título
title('¿Cúal es el género de los estudiantes encuestados?', 'FontSize', 16);
