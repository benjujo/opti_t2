# Tarea 2 -- IN3701
Para ejecutar esta parte de la tarea es necesario tener `sagemath` instalado.
Para correr basta con escribir en la consola
```sh
sage p2.sage
```
De igual forma, esto no es necesario, ya que se adjunta abajo los sistemas de ecuaciones para cada una de las soluciones báscias factibles en conjunto con los rayos.


## Vector (1,1)
```
SBF: [[x1 == -2, x2 == 3]] con [[y1 == 1, y2 == 0]]
[l == -1/3*t + 1/3, 0 < d, d < 1, 0 < t, t < 1, d*t + 2*t - 1 == 0]

SBF: [[x1 == -2, x2 == 3]] con [[y1 == 2, y2 == 0]]
[l == -1/3*t + 1/3, 0 < d, d < 1, 0 < t, t < 1, d*t + 7/3*t - 1/3 == 0]

SBF: [[x1 == 1, x2 == 0]] con [[y1 == -2, y2 == 3]]
[l == 1/3*t + 2/3, 0 < d, d < 1, 0 < t, t < 1, d*t + 2*t - 1 == 0]

SBF: [[x1 == 1, x2 == 0]] con [[y1 == 2, y2 == 0]]
[t == 1, 0 < d, d < 1, 0 < l, l < 1, d - l + 2 == 0]

SBF: [[x1 == 1, x2 == 0]] con [[y1 == -1, y2 == 7]]
[l == 1/7*t + 6/7, 0 < d, d < 1, 0 < t, t < 1, d*t + 9/7*t - 2/7 == 0]

SBF: [[x1 == 2, x2 == 0]] con [[y1 == -2, y2 == 3]]
[l == 1/3*t + 2/3, 0 < d, d < 1, 0 < t, t < 1, d*t + 7/3*t - 1/3 == 0]

SBF: [[x1 == 2, x2 == 0]] con [[y1 == 1, y2 == 0]]
[t == 1, 0 < d, d < 1, 0 < l, l < 1, d + l + 1 == 0]

SBF: [[x1 == 2, x2 == 0]] con [[y1 == 2, y2 == 0]]
[t == 1, 0 < d, d < 1, 0 < l, l < 1, d + 2 == 0]

SBF: [[x1 == 2, x2 == 0]] con [[y1 == -1, y2 == 7]]
[l == 1/7*t + 6/7, 0 < d, d < 1, 0 < t, t < 1, d*t + 10/7*t + 4/7 == 0]

SBF: [[x1 == -1, x2 == 7]] con [[y1 == 1, y2 == 0]]
[l == -1/7*t + 1/7, 0 < d, d < 1, 0 < t, t < 1, d*t + 9/7*t - 2/7 == 0]

SBF: [[x1 == -1, x2 == 7]] con [[y1 == 2, y2 == 0]]
[l == -1/7*t + 1/7, 0 < d, d < 1, 0 < t, t < 1, d*t + 10/7*t + 4/7 == 0]
```

## Vector (3,2)
```
SBF: [[x1 == -2, x2 == 3]] con [[y1 == 1, y2 == 0]]
[l == -1/3*t + 2/3, 0 < d, d < 1, 0 < t, t < 2, d*t + 2*t - 4 == 0]

SBF: [[x1 == -2, x2 == 3]] con [[y1 == 2, y2 == 0]]
[l == -1/3*t + 2/3, 0 < d, d < 1, 0 < t, t < 2, d*t + 7/3*t - 11/3 == 0]

SBF: [[x1 == 1, x2 == 0]] con [[y1 == -2, y2 == 3]]
[l == 1/3*t + 1/3, 0 < d, d < 1, 0 < t, t < 2, d*t + 2*t - 4 == 0]

SBF: [[x1 == 1, x2 == 0]] con [[y1 == 1, y2 == 0]]
[t == 2, 0 < d, d < 1, 0 < l, l < 1, 2*d == 0]

SBF: [[x1 == 1, x2 == 0]] con [[y1 == 2, y2 == 0]]
[t == 2, 0 < d, d < 1, 0 < l, l < 1, 2*d - l + 1 == 0]

SBF: [[x1 == 1, x2 == 0]] con [[y1 == -1, y2 == 7]]
[l == 1/7*t + 5/7, 0 < d, d < 1, 0 < t, t < 2, d*t + 9/7*t - 18/7 == 0]

SBF: [[x1 == 2, x2 == 0]] con [[y1 == -2, y2 == 3]]
[l == 1/3*t + 1/3, 0 < d, d < 1, 0 < t, t < 2, d*t + 7/3*t - 11/3 == 0]

SBF: [[x1 == 2, x2 == 0]] con [[y1 == 1, y2 == 0]]
[t == 2, 0 < d, d < 1, 0 < l, l < 1, 2*d + l == 0]

SBF: [[x1 == 2, x2 == 0]] con [[y1 == 2, y2 == 0]]
[t == 2, 0 < d, d < 1, 0 < l, l < 1, 2*d + 1 == 0]

SBF: [[x1 == 2, x2 == 0]] con [[y1 == -1, y2 == 7]]
[l == 1/7*t + 5/7, 0 < d, d < 1, 0 < t, t < 2, d*t + 10/7*t - 13/7 == 0]

SBF: [[x1 == -1, x2 == 7]] con [[y1 == 1, y2 == 0]]
[l == -1/7*t + 2/7, 0 < d, d < 1, 0 < t, t < 2, d*t + 9/7*t - 18/7 == 0]

SBF: [[x1 == -1, x2 == 7]] con [[y1 == 2, y2 == 0]]
[l == -1/7*t + 2/7, 0 < d, d < 1, 0 < t, t < 2, d*t + 10/7*t - 13/7 == 0]
```
