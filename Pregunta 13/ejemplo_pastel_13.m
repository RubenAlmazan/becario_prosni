% Datos y etiquetas
y = [5, 3, 3, 3, 3, 3, 3, 3, 3, 3, 2, 2, 2, 2, 2, 2, 2, 2, 1, 1, 1, 1, 1, 1, 1, 1];
labels = {'desorganizacion', 'confuso', 'ruidoso', 'estres', 'desinteres', 'caotica', 'tedioso', 'desacuerdos', 'malo', 'ninguna', 'incertidumbre', 'falta de tiempo', 'conflictivo', 'contratiempos', 'desigualdad', 'incomprension', 'compromiso', 'tardado', 'presion', 'desesperacion', 'falta de compromiso', 'dedicacion', 'distraccion', 'irresponsabilidad', 'nervioso'};

% Colores personalizados y porcentajes
colors = [
    1 0 0;  % Rojo
    1 0.5 0;  % Naranja
    1 1 0;  % Amarillo
    0 1 0;  % Verde
    0 0 1;  % Azul
    0.5 0 1;  % Morado
    0.5 0.5 0.5;  % Gris
    0 0 0;  % Negro
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
title('(13) Describa, en una palabra negativa, su experiencia al realizar trabajo colaborativo en el aula presencial', 'FontSize', 16);
