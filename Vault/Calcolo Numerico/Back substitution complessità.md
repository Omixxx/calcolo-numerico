### Intuizione
Dobbiamo per ogni riga, moltiplicare gli elementi che ci sono per le $x$ che conosciamo, e in più dobbiamo sommarli tra loro. 
Gli elementi sono esattamente $(n-k)$ dove $k$ ricordiamo è la riga e colonna dell'elemento pivot. 
Quindi ci tocca fare $(n-k)$ moltiplicazioni e poi di nuovo $(n-k)$ addizioni, per poi sottrarre tutto all'elemento noto che sta dopo l'uguale e dividere per il coefficiente di $x_{kk}$, ma queste due operazioni sono trascurabili quindi consideriamo solo le prime due, moltiplicazione e addizione. 

### Formalmente
$$
\sum_{k=1}^{n-1} 2(n-k) 
$$
Sostituendo $n-k$ con $i$ e raccogliendo il $2$ possiamo usare la relazione nota [[Sommatoria di k]].
Notiamo immediatamente che la complessità è $\mathcal{O}(n^{2})$
#calcolo-numerico #teoria  
[[Back Substitution]]