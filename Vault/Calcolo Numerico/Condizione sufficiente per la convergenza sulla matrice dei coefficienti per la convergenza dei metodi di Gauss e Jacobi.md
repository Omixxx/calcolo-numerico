### Intuizione
In poche parole il teorema che enunceremo tra poco ci dice che se $A$, la matrice dei coefficienti, è una [[Matrice a diagonale dominante]] allora la matrice di iterazione $T$ avrà sicuramente norma minore di $1$ e per la [[Condizione sufficiente per la convergenza di un metodo iterativo]] possiamo dire che il metodo converge sicuramente. 

### Formalmente
Sia $A \in \mathbb{R}^{n \times n}$ una matrice a diagonale dominante in senso stretto allora $\forall x^{(0)}$ scelto il [[Metodo di Jacobi]] e il [[Metodo di Gauss Seidel]] convergono sicuramente ad unica soluzione $Ax = b$ 

Siccome $A$ è a diagonale dominante, vale che ${\| A \|}<1$ 
Questo perché, per definizione di [[Matrice a diagonale dominante]] abbiamo che 
$$
	\sum_{j=1, \ j\neq i}^{n} \frac{|a_{ij}|}{{|a_{ii}|}} < 1 
$$
E quindi avremo (e non dimostreremo perché)
$$
\begin{cases}\left\|T_{J}\right\|_{\infty}=\max_{1\leq i\leq n} \sum_{j=1}^{n}\left|\frac{a_{ij}}{a_{ii}}\right|<1\\\left\|T_{GS}\right\|_{\infty}\leq\max_{1\leq i\leq n}\sum_{j\neq i}^{n}\left|\frac{a_{ij}}{a_{ii}}\right|<1\end{cases}
$$
Ossia, il calcolo della norma della matrice di iterazione $T$ è sempre minore di $1$, ma quindi per la [[Condizione sufficiente per la convergenza di un metodo iterativo]] possiamo dire che il metodo converge sicuramente.

#calcolo-numerico #teoria  