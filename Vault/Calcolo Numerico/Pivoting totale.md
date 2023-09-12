### Intuizione
Questa tecnica di [[Pivoting]] consiste nel sostituire l'elemento pivot con l'elemento più grande (in valore assoluto) della sotto matrice associata a quell'elemento. 
![[diagram-20230912.svg#invert_B]]
Questa tecnica è tuttavia un tantino costosa dato il numero elevato di confronti. 
Difatti per ogni elemento sulla diagonale, dovremmo andare alla ricerca dell'elemento pivot più grande all'interno di ogni sotto matrice, il che significa che dobbiamo fare $(n-k)\cdot  (n-k)$ confronti, per $(n-k)$ volte.
Come possiamo vedere questo giochino ci costerebbe $\mathcal{\Theta  }(n^{3})$ 

### Formalmente


#calcolo-numerico #teoria  