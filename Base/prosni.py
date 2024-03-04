import pandas as pd
import matplotlib.pyplot as plt

data = pd.read_csv('dataset_prosni.csv')

titulos = data.columns.tolist()
pregunta = titulos[5::]

puerta = False  

while puerta == False:
    
    print('-------------------------------------')
    print('     Cuestionario AULA INVERTIDA     ')
    print('-------------------------------------\n')

    print('(0) Salir')
    for i in pregunta:
        print(i)
    
    a = int(input('\nEscribe el numero de pregunta que quieres ver sus estadísticas -> '))
    a = a - 1
    
    if a == -1:
        puerta = True
    elif a > 21:
        print('Pregunta no valida, intente de nuevo')
    else:
        elemento = []
        cantidad = []
        
        print('-------------------------------------------------')
        print(pregunta[a])
        print('-------------------------------------------------')

        counts = data[pregunta[a]].value_counts()
        counts = list(counts.items())
        
        for i, j in counts:
            print(i, '->', j)
            elemento.append(i)
            cantidad.append(j)
        
        print()
        
        plt.bar(elemento, cantidad)
        plt.title(pregunta[a])
        plt.xlabel('Elementos')
        plt.ylabel('Cantidad')

        plt.xticks(rotation=90, ha='center', va='top')

        for i in range(len(elemento)):
            plt.text(i, cantidad[i], str(cantidad[i]), ha='center', va='bottom')

        plt.subplots_adjust(bottom=0.4)

        # Mostrar la gráfica
        plt.tight_layout()
        plt.show()


