### Intuizione
Una procedura che iterativamente, in caso di convergenza, ci avvicina alla soluzione passo dopo passo.  


### Formalmente
Si basa sulla costruzione di una successione di vettori $x^{(k)}$  che approssimano la soluzione sperando che 
$$
\lim_{k\to\infty}x^{(k)}=x
$$

Per fare questo aggiustiamo il nostro sistema lineare per far comparire l'incognita sia a sinistra che a destra.
$$
Ax = b \iff x=Tx+c
$$

#calcolo-numerico #dimostrazione  #teoria  

## Dimostrazione 
Sia $Ax = b$ il nostro sistema lineare in forma matriciale. 
Dividiamo la matrice $A$ nella somma di due matrici $C+D$ 
ottenendo $A=C+D$ 

Quindi:

$$
Ax = b \implies (C+D)x = b \implies  Dx = -C+b \implies x = -CD^{-1} + bD^{-1} 
$$
eseguendo le seguenti sostituzioni $-CD^{-1} = T$  e $bD^{-1} = c$ otteniamo la tesi 

$$
Ax = b \implies x^{(k+1)} = Tx^{(k)}+c
$$
