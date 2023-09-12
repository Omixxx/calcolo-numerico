### Intuizione
Questa condizione è un corollario che segue dalla [[Condizione necessaria e sufficiente per la convergenza di un metodo iterativo]] e ci dice che è condizione sufficiente per la convergenza che la norma della matrice di iterazione sia minore di uno

Questo è vero perché sappiamo che il raggio spettrale di una matrice è sempre minore o uguale alla norma di quella matrice. 
Quindi se la norma è minore di $1$ allora lo sarà anche il raggio spettrale $\rho$ e quindi il metodo convergerà sicuramente  

Qualora venisse verificata questa convergenza avremmo le seguenti [[Maggiorazioni dell'errore in caso di verifica delle condizioni di convergenza sufficienti per un metodo iterativo]] 


### Formalmente
Se ${\| T \|}< 1$ $\forall$ norma naturale di matrice, allora la sequenza $x^{(k)}$ convergerà sicuramente alla soluzione $x$, per ogni vettore iniziale $x^{(0)} \in \mathbb{R}^{n}$ scelto 

## Dimostrazione 
Visto che vale l'implicazione 
$$
	\rho(A) \leq {\| A \|}\quad \forall {\| \cdot \|}
$$
Allora sarà vero quanto segue: 
$$
{\| T \|}< 1 \implies \rho(T) < 1
$$
e vista la [[Condizione necessaria e sufficiente per la convergenza di un metodo iterativo]] allora sappiamo che il metodo sicuramente converge a soluzione $x$
#calcolo-numerico #teoria #dimostrazione   