% Datos y etiquetas
y = [11, 7, 6, 5, 4, 4, 3, 2, 2, 2, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1];
labels = {'eficiente', 'comodidad', 'comunicacion', 'bueno', 'sencillo', 'colaborativo', 'aprender', 'conectada', 'adaptativa', 'facilidad', 'eficiencia', 'dinamismo', 'accesible', 'portabilidad', 'productiva', 'satisfactoria', 'divertido', 'practicidad', 'calmado'};

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
title('(14) Describa, en una palabra positiva, su experiencia al realizar trabajo colaborativo de forma virtual', 'FontSize', 16);
