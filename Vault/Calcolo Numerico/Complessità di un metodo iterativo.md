### Intuizione
Nella fase preparatoria quello che ci costa di più è il calcolo della matrice di iterazione $T$ perché dobbiamo calcolare $D^{-1}$ ossia dobbiamo fare un'inversa.
Con alcuni metodi ci costa poco, con altri di più, quindi per generalizzare conteremo le operazioni strettamente legate al concetto di metodo iterativo, e non al singolo metodo. 
Per definizione di [[Metodi iterativi]] sappiamo che, una volta costruita la matrice di iterazione $T$ e una volta preso il vettore di prima approssimazione $x^{(0)}$ dobbiamo effettuare la seguente operazione 
$$
x^{(1)} = T\cdot x^{(0)} + c
$$
Che ha un costo pari a $\mathcal{O}(n^{2})$ perché effettuiamo un prodotto riga per colonna con una matrice quadrata $n \times n$ e un vettore di grandezza $n$. 
La complessità si moltiplicherò per il numero di volte che dovremmo fare quest'operazione, ossia il numero di iterazioni che andremo a richiedere.
Questo fa si che il tutto viene moltiplicato per un fattore $k$  


### Formalmente


#calcolo-numerico #teoria  