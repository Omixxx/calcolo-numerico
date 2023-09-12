### Intuizione
La costruzione del [[Polinomio di Lagrange]] richiede $n+1$ divisioni
per questo basta pensare al fatto che per ogni $L_{k}(x)$ dobbiamo effettuare una divisione e visto che abbiamo $\sum_{k=0}^ny_k L_{k}(x)$ dobbiamo appunto effettuare $n+1$ divisioni. 

Per quanto riguarda le moltiplicazioni, dobbiamo effettuare per ogni $L_{k}(x)$ $2(n+1)$ moltiplicazioni, il $2$ viene dal fatto che abbiamo una moltiplicazione sia al numeratore, che al denominatore. In più dobbiamo effettuare le $n+1$ moltiplicazioni tra $y_{k}$ e $L_{k}(x)$ 
quindi in totale, a meno di una costante, avremo $(n+1)(n+1)$ moltiplicazioni  

in definitiva abbiamo le $n+1$ addizioni date da $\sum_{k=0}^ny_k L_{k}(x)$ 

Quindi in tutto vediamo che effettivamente il costo è $\mathcal{O}(n^{2})$ viste le moltiplicazioni che dovremmo effettuare


La valutazione invece ci costa relativamente poco, infatti dobbiamo solo fare $n+1$ divisioni e $n$ addizioni ossia $2n+1$ flops

L'aggiunta di un nodo ci costa tuttavia $\mathcal{O}(n^{2})$ perché dobbiamo fare il ricalcolo di tutti gli $L_{k}(x)$ 

### Formalmente


#calcolo-numerico #teoria  