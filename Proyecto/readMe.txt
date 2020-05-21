app.R requiere de las siguientes librerías en R:
-shiny
-readXL
-phaseR
-deSolve
-shinydashboard

Datos poblacionales para los 3 paises en el año 2014 tomados del Banco Mundial. Para cada país se toma la población real, pero las gráficas se muestran en escala de 0 a 1 por limitaciones de la resolución de la Ecuación diferencial con valores muy altos.

Datos de contagios y muertes obtenidos de: https://www.kaggle.com/imdevskp/ebola-outbreak-20142016-complete-dataset, obtenidos en CSV y convertidos posteriormente a XSLX para un mejor manejo en R y MS Excel.

Las gráficas reales que se intentaron simular por el método SIR se encuentran en dos artículos investigativos disponibles disponibles en esta carpeta de git.

Valor de beta fue obtenido realizando una serie de potencias tomando el gráfico de aumento de Contagios respecto al día anterior en la herramienta MS Excel, obteniendo su valor a partir de la ecuación del gráfico.

Resolución de la Ecuación Diferencial para el modelo SIR fue tomada, modificada y adaptada de esta página:
http://rstudio-pubs-static.s3.amazonaws.com/6852_c59c5a2e8ea3456abbeb017185de603e.html

Base de modelo SIS fue tomada, modificada y adaptada de:
https://rpubs.com/docblount/111138
