### Intuizione
Questo è l'errore che si commette nel sostituire la funzione $f(x)$ con il polinomio $P_{n}(x)$ 
e vedremo essere calcolabile tramite una formula 
L'idea è quella di prendere la definizione di resto di una funzione e usarla in una funzione ausiliaria che smaneggiata a dovere può essere eguagliata a $0$ per un valore specifico nell'intervallo di interesse. 
Questo ci piace perché da come abbiamo definito la nostra funzione ausiliaria possiamo ricavarci proprio l'errore.

### Formalmente
Definita la seguente quantità
$$
\omega_{n+1}(x)=\prod_{j=0}^n\left(x-x_j\right.)
$$

Enunciamo il seguente teorema:

Sia $f(x) \in C^{n}[a,b]$  e esista $f^{n + 1}(x)$ nell'intervallo $]a,b[$  allora se $a\leq x_{0},x_{1},x_{2},\dots x_{n}\leq b$ per ogni $x \in[a,b]$ risulta 
$$
f(x)-P_{n}(x) = \frac{f^{^{n+1}}(\xi)\omega_{n+1}(x)}{(n+1)!}
$$
con $a < \xi < b$ 

## Dimostrazione 
Poniamo $R(x) = f(x) - P_{n}(x)$  a rappresentare la differenza tra l'approssimazione e la funzione effettiva e consideriamo la seguente funzione dipendente da $x$
$$
F_{x}(t)=R(t)\omega_{n+1}(x)-\omega_{n+1}(t)R(x)
$$
$$

F_{x}(t)=(f(t)-P_{n}(t))\omega_{n+1}(x)-\omega_{n+1}(t)(f(x)-P_{n}(x))
$$

Siccome sappiamo che $\omega_{n+1}(x)$ si annulla per $x \in[x_{0},x_{1},\dots, x_{n}]$  e non si annulla per $x \notin [x_{0},x_{1},\dots,x_{n}]$  e siccome sappiamo che $f(x)-P_{n}(x) = 0$ quando $x \in [x_{0},x_{1},\dots,x_{n}]$ (e questo perché il polinomio interpola quei nodi, quindi ci si aspetta che il valore del polinomio calcolato nei nodi noti sia uguale al valore calcolato nella funzione) 
Allora possiamo dire che sicuramente $F_{n}(t)$ si annulla negli $n+2$ punti, ossia per tutte le $t = x \in [x_{0},x_{1},\dots ,x_{n}]$, e quando $t=x \notin [x_{0},x_{1},\dots,x_{n}]$ si annulla comunque, il perché non l'ho ancora capito, però a quanto pare è cosi. 

Ora da come è stata costruita $F_{n}(t)$ sappiamo che sicuramente è derivabile $n+1$ volte visto che $f$ a sua volta è derivabile $n+1$ volte e il resto della roba sono polinomi.

Quindi per il teorema di Rolle possiamo dire che $F_{n}^{'}(t)$ si annulla $n+1$ volte.
Applicando il teorema di Rolle ripetutamente la derivata $n+1$ esima di $F_{x}(t)$ si annulla almeno un volta in un punto $\xi$  tale per cui vale$\min(x,x_{0},x_{1}\dots x_{n}) < \xi< \max(x,x_{0},x_{1}\dots x_{n})$  


Ora siccome se deriviamo $n+1$ volte $F_{x}(t)$ otteniamo 
$$
F_{x}^{n+1}(t)=f^{n+1}(t)\omega_{n+1}(x)-(n+1)!R(x)
$$
la quale calcolata in $\xi$ risulta essere appunto
$$
0=F^{n+1}(\xi)=f^{n+1}(\xi)\omega_{n+1}(x)-(n+1)!R(x)
$$
da cui possiamo ricavare l'errore 
$$
R(x)=\frac{f^{^{n+1}}(\xi)\omega_{n+1}(x)}{(n+1)!}
$$
> si potrebbe pensare che siccome $n$ si trova al denominatore aumentare il numero di nodi comporterà necessariamente una riduzione dell'errore, ma come vedremo non è esattamente così perché all'aumentare dei nodi aumenterà anche l'[[Errore di propagazione]]


#calcolo-numerico #teoria #dimostrazione   