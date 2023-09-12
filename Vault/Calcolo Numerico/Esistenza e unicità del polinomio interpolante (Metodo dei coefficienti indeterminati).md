### Intuizione
Costruiamo partendo dai nostri $n+1$ punti, il nostro polinomi di grado $n$ (ricordiamo $n$ e non $n+1$ perché nel polinomi abbiamo $n+1$ coefficienti, di cui uno è il termine noto, quindi il grado sarà $n$) che sarà il polinomio di grado minimo in grado di interpolare quei punti. 
Se spacchettiamo il nostro polinomio in forma matriciale scopriamo che abbiamo a che fare con la matrice di Vandermonde che è fortemente mal condizionata, ma che, tuttavia, ha determinante diverso da $0$ il che significa che esiste un unica soluzione al sistema, il che significa che esiste un unico polinomio in grado di approssimare la funzione.  

### Formalmente
Dati una serie di punti $(x_{0},y_{0}),(x_{1},y_{1}),\dots(x_{n+1},y_{n+1})$ allora possiamo dire che 

$$
\exists ! \ P_{n} : P_{n}(x_{i}) = y_{i} \quad i=1,\dots n
$$
## Dimostrazione 
Visto che abbiamo questa serie di punti $(x_{0},y_{0}),(x_{1},y_{1}),\dots(x_{n+1},y_{n+1})$  
Possiamo dire che il polinomio $P_{n}$ che cerchiamo avrà questa forma 
$$
P_{n} = a_{0}+ a_{1}x \cdots + a_{n}x^{n} = y 
$$
Per cui le condizioni di interpolazione sono 
$$
P_{n}(x_{i}) = a_0+a_1x_i+a_2x_i^2+\cdots+a_nx_i^n=y_i,\quad\forall i=0{,}1,\ldots,n
$$
Scriviamo questo perché per ogni punto $x_{i}$ ci si aspetta che il polinomio sputi $y_{i}$ altrimenti non sarebbe accurato! 
L'obiettivo è trovare quei coefficienti $a_{0},a_{1},\dots a_{n}$ tale per cui $P_{n}(x_{i})=y_{i}$ 

Scriviamo il tutto in forma matriciale ottenendo il sistema $Va = y$ dove $V$ è la matrice di Vandermonde 
$$
V=\begin{bmatrix}1&x_0&\dots&x_0^{n-1}&x_0^n\\1&x_1&&x_1^{n-1}&x_1^n\\\vdots&\vdots&\ddots&\vdots&\vdots\\1&x_{n-1}&&x_{n-1}^{n-1}&x_{n-1}^n\\1&x_n&\dots&x_n^{n-1}&x_n^n\end{bmatrix},\quad a=\begin{bmatrix}a_0\\a_1\\\vdots\\a_{n-1}\\a_n\end{bmatrix},\quad y=\begin{bmatrix}y_0\\y_1\\\vdots\\y_{n-1}\\y_n\end{bmatrix}
$$
Ora sapendo che $\det(V) \neq 0$ se $x_{i} \neq  x_{j}$ con $i \neq j$ (come in questo caso) sappiamo che il sistema ha un unica soluzione.

Ora abbiamo questo dato e abbiamo anche il problema in una forma che ci permette di usare tecniche già discusse tipo [[Metodo di Gauss Naive]] [[Metodo di Jacobi]] oppure [[Metodo di Gauss Seidel]], tuttavia $V$ è fortemente mal-condizionata, difatti l'[[Indice di condizionamento per un problema di algebra lineare]] è parecchio alto. 
#calcolo-numerico #teoria #dimostrazione   

