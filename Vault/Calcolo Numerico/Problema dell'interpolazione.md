### Intuizione
Il problema dell'interpolazione, a quanto ho capito, è trovare una funzione che approssima un'altra funzione usando l'interpolazione, ossia l'intersecare dei punti a disposizione tramite la nostra funzione approssimante 

### Formalmente
Dati gli $n + 1$ punti $(x_{0},y_{0}),\dots (x_{n},y_{n})$  si vuole determinare una funzione $f^{\star }$ tale per cui vale che $f^{\star}(x_{i})=y_{i}$ con $i=0,\dots n$ 

sia $x^{\star} \neq x_{i}$ per $i=0,\dots n$ allora se $f^{\star}(x^{\star})$ è ottenuto per $x^{\star}\in [x_{1},\dots x_{n}]$ allora si dirà *interpolazione* altrimenti, se $x^{\star} \notin [x_{1}\dots x_{n}]$ allora si dirà di *estrapolazione*

#calcolo-numerico #teoria  