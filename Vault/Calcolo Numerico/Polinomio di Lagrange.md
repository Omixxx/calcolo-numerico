### Intuizione
Siamo riusciti, tramite il [[Teorema di Weiestrass]] e il [[Esistenza e unicità del polinomio interpolante (Metodo dei coefficienti indeterminati)]] a dire che il polinomio interpolante effettivamente esiste ed è unico. 
Ora quello che vorremmo fare è metterci in condizioni migliori. 
Per fare questo effettuiamo un cambio di base, da quella canonica $(1,x,x^{2}\dots x^{n})$ ad una arbitrariamente scelta da noi $(L_{0}(x),L_{1}(x),\dots L_{n}(x))$ 

Questo, tramite il modo in cui definiremo questa nuova base ci permetterà di lavorare con una matrice diagonale e non più con la matrice di Vandermonde

### Formalmente
Siano $n +1$ punti distinti cosi definiti $(x_{0},y_{0}),(x_{1},y_{1})\dots(x_{n},y_{n})$ indichiamo come segue il polinomi interpolante di Lagrange 
$$
P_{n}(x)=y_{0}\cdot L_{0}(x)+\cdots+y_{n}\cdot L_{n}(x)=\sum_{k=0}^{n}y_{k}\cdot L_{k}(x)
$$
dove 
$$
L_{k}(x) = \prod_{i=0,i\neq k}^n\frac{(x-x_i)}{(x_k-x_i)}
$$

## Dimostrazione
Abbiamo detto che il problema del [[Esistenza e unicità del polinomio interpolante (Metodo dei coefficienti indeterminati)]] era proprio che avevamo a che fare con la matrice di Vandermonde. 
Questo era dato da come esprimevamo il polinomio, ossia usando la base $\left\{1,x,x^{2},\dots,x^{n}\right\}$ 
Per risolvere i disagi dobbiamo necessariamente cambiare base 

Costruiamo la nuova base in questo modo $\left\{L_0(x),L_1(x),\ldots,L_n(x)\right\}$ e definiamo i vari $L_{k}(x)$

$$
\begin{equation}
L_{k}(x) = \delta_{i,k} 
\end{equation}
$$
Dove $\delta_{i,k}$ è detto *delta di Kronecker* che vale $1$ quando $j = k$ e $0$ altrimenti
Questo causa quindi 
$$
\left\{\begin{matrix}L_k(x_i)=0&\text{se }i\neq k\\L_k(x_i)=1&\text{se }i=k\end{matrix}\right.
$$
Bene, con il nuovo cambio otteniamo che il polinomio ha la seguente forma 
$$
P_{n}(x) = \sum_{k = 0}^{n}a_{k}L_{k}(x)
$$
Ora, visto che $L_{k}(x) = \delta_{i,k}$ allora significa che 
$$
\begin{align}
& P_{n}(x_{i}) = \sum_{k=0}^{n}a_{k}L_{k}(x_{i}) = 0 &i\neq k  \\
& P_{n}(x_{i}) = \sum_{k=0}^{n}a_{k}L_{k}(x_{i}) =a_{k} &i = k
\end{align}
$$
Quindi significa che effettivamente la somma è di tutti zeri tranne per la $x_{k}$ che ci caccerà $a_{k}$ e quindi, in un certo senso possiamo dire che 
$$
a_{k} = y_{k}
$$
e possiamo applicare la sostituzione, ottenendo 
$$
P_{n}(x) = \sum_{k = 0}^{n}y_{k}L_{k}(x)
$$
Per quanto abbiamo detto prima quindi, la condizione di interpolazione rimane, perché $P_{n}(x_{i}) = y_{i}$  

Ottimo, definiamo praticamente come sono fatte queste $L_{k}(x)$
Allora abbiamo detto che deve valere $L_{k}(x) = \delta_{i,k}$ quindi dobbiamo trovare una forma che ci garantisca questa proprietà. 

Definiamo quindi $L_{k}(x)$ come una frazione. 
Al numeratore dobbiamo avere che $L_{k}(x_{i}) = 0 \quad i \neq k$ quindi 
$$
L_k(x)=A(x-x_0)(x-x_1)\cdots(x-x_{k-1})(x-x_{k+1})\cdots(x-x_n)
$$
Infatti quando sostituiamo $x = x_{i}$ usando una qualsiasi $i : i \neq k$ otteniamo inevitabilmente che il prodotto sia uguale a $0$ 
Omettiamo il membro $(x-x_{k})$ perché ci servirà al denominatore per ottenere un $1$ quando $x = x_{k}$. Se fosse anche al numeratore diventerebbe sempre e per forza tutto $0$ 

Ecco passiamo ora al denominatore, dato dalla misteriosa $A$ di sopra. 
$$
A=\frac1{(x_k-x_0)(x_k-x_1)\cdots(x_k-x_{k-1})(x_k-x_{k+1})\cdots(x_k-x_n)}
$$
che come possiamo vedere abbiamo termini tra denominatore e numeratore quando sostituiamo $x=x_{k}$ quindi questo ci assicura la verifica di $L_{k}(x) = \delta _{i,k}$ 

Riscrivendo in maniera compatta otterremo quanto detto nella sezione *formalmente* 
#calcolo-numerico #teoria #dimostrazione   