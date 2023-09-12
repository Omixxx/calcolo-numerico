 Intuizione
Qui la perturbazione avviene appunto solo sul vettore dei termini noti e il significato è sempre quello dell'[[Indice di condizionamento per un problema di algebra lineare]]


### Formalmente
$$
\frac{\|\delta x\|}{\|x\|}\leqslant K(A)\frac{\|\delta b\|}{\|b\|}
$$

## Dimostrazione 
Prendiamo in considerazione il problema $Ax =b$ con perturbazioni solo sul vettore dei termini noti $b$. 
$$
A(x+\delta x) = b+\delta b
$$
Deve quindi valere
$$
Ax + A\delta x = b + \delta b
$$
Consideriamo solo la parte $A\delta x = \delta b$  
Ora moltiplichiamo entrambi i membri per $A^{-1}$ e applichiamo a ciò che resta la funzione norma ${\| \cdot  \|}$ 
$$
{\| {\delta x} \|} = {\| A^{-1} \delta b \|} 
$$
Possiamo applicare la [[Disuguaglianza triangolare delle norme]] e ottenere 

$$
{\| {\delta x} \|} = {\| A^{-1} \delta b \|}  \leq {\| A^{-1} \|}\cdot {\| \delta b \|} 
$$
Possiamo quindi dividere la disuguaglianza per ${\| x \|}$ e ricordandoci che ${\| x \|}=\frac{{\| b \|}}{{\| A \|}}$ (visto che ${\| A \cdot  b\|  }={\| x \|}$ ) possiamo scrivere: 

$$
\frac{{\| \delta x \|}}{{\| x \|}}\leq \frac{{\| A^{-1} \cdot\delta b\|}}{{\| b \|} / {\| A \|}}  
$$
e quindi 

$$
\frac{\|\delta_x\|}{\|x\|}\leqslant\|A^{-1}\|\cdot\|A\|\frac{\|\delta_b\|}{\|b\|}
$$
Da questa relazione possiamo ricavare il valore dell'[[Indice di condizionamento per un problema di algebra lineare]] e di conseguenza semplificare in questo modo 

$$
\frac{\|\delta_x\|}{\|x\|}\leqslant\ K(d) \cdot \frac{\|\delta_b\|}{\|b\|} 
$$


#calcolo-numerico #teoria #dimostrazione 