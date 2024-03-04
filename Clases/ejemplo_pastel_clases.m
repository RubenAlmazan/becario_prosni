% Datos y etiquetas
y = [21 20 8 6];
labels = {'Estructuras de datos II (Seccion D03)', 'Estructuras de datos II (Seccion D08)', 'Seminario diseno: Protocolo (Seccion D02)', 'Seminario diseno: Protocolo (Seccion D03)'};

% Colores personalizados y porcentajes
colors = [
    0 0 1;  % Azul
    1 0 0;  % Rojo
    0 1 0;  % Verde
    1 1 0;  % Amarillo
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
title('Clases pertenecientes a los estudiantes encuestados', 'FontSize', 20);
