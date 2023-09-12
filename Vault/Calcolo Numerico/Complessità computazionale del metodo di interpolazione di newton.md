### Intuizione



### Formalmente
Abbiamo $\frac{n^{2}}{2}$ divisioni da fare e $n^{2}$ addizioni questo ci porta ad avere $3 \frac{n^{2}}{2}$ flops
Quindi per costruire il polinomio la complessità, a netto di costanti, è di $\mathcal{O}(n^{2})$ 

Per la valutazione facciamo $n$ moltiplicazioni e $2n$ addizioni e quindi abbiamo $3n$ flops 
Quindi per valutarlo abbiamo una complessità di $\mathcal{O}(n)$  (algoritmo di horner) 

Per l'aggiunta di un nuovo nodo dovremmo solo calcolare un nuovo coefficiente, ma non ricalcolare gli altri, quindi spendiamo $\mathcal{O}(n)$ 

#calcolo-numerico #teoria  