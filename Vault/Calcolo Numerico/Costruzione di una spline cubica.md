### Intuizione
L'idea è semplice. Per visto che abbiamo $n$ polinomi di terzo grado e quindi a $4$ coefficienti, possiamo costruire un bel sistema e poi dopo vari giochi algebrici ci rendiamo conto che il sistema è ben condizionato e che ha soluzione, quindi possiamo risolverlo agilmente 

### Formalmente
Sia ogni sottointervallo $[x_{i},x_{i+1}]$ con $(i=0,\dots,n-1)$ una spline cubica interpolante $s(x)$ ha la forma 
$$
\begin{aligned}s_i(x)=a_i+b_i(x-x_i)+c_i(x-x_i)^2+d_i(x-x_i)^3\\(i=0,1,2,\ldots,n-1)\end{aligned}
$$
mettendo tutte le condizioni a sistema otterremo un grosso sistema lineare con matrice dei coefficienti a diagonale dominante in senso stretto che ci dice che $\det(A) \neq 0$ e che quindi esiste sicuramente un unica soluzione.  
La matrice dei coefficienti sarà tridiagonale, quindi è facilmente risolvibile $\mathcal{O}(n)$ 
Inoltre la matrice è a diagonale dominante (non in senso stretto) e questo ci da la proprietà di stabilità, nello specifico sappiamo che l'indice di condizionamento $K_{\infty}(A)) \approx n$ che appunto rende il problema ben condizionato 

#calcolo-numerico #teoria  