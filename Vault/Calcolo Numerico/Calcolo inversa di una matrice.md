### Intuizione
L'idea qui è quella di sfruttare il metodo di [[Eliminazione di Gauss]] e l'algoritmo di [[Back Substitution]] per risolvere tre sistemi di equazioni nella forma forma $Ax^{(k)} = e^{(k)}$ 
dove $e^{(k)}$ è il vettore di elementi tutti nulli tranne quello in posizione $k-$esima che invece ha valore pari ad $1$ 


### Formalmente
Visto che $e^{(k)} = [0,0,\dots ,1,0 \dots 0]$ dove $1$ è in $k-$esima posizione allora possiamo risolvere i sistemi 
$$
Ax^{(k)}=e^{(k)}
$$
Ossia cerchiamo quei vettori $x^{(k)}$ che moltiplicati uno per volta per $A$ ci danno i vari vettori $e^{(k)}$ 

Mo questa cosa ci piace perché i vettori $e^{(k)}$ rappresentano i vettori della colonna della matrice identità 

Quindi se vale questo allora deve valere che le varie soluzioni $x^{(k)}$ rappresentano le colonne della matrice $A^{-1}$

Basta infatti osservare come, per definizione di $e^{(k)}$
$$
Ax^{(k)} = e^{(k)} \iff Ax^{(k)} = I
$$
Allora basta fare 
$$
Ax^{(k)} = I \iff x^{(k)} = I A^{-1} \iff x^{(k)} = A^{-1}
$$
#calcolo-numerico #teoria  