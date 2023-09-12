### Intuizione
Un autovalore è lo scalare responsabile della trasformazione lineare di un [[Autovettore]] 
Trovare gli autovalori e gli autovettori ci serve per capire che applicare la trasformazione lineare $A$ al nostro autovettore $v$ è la stessa cosa che scalarlo di un certo valore $\lambda$  


### Formalmente
Sia $v\neq 0$ un autovettore e $\lambda$ l'autovalore associato ad $v$ allora deve valere 
$$
Av = \lambda v
$$
Cerchiamo ora di ricavarci gli autovalori, e per fare questo dobbiamo moltiplicare per $I$ 
ottenendo 
$$
Av = (\lambda \cdot I)v
$$
Spostiamo tutto a sinistra
$$
Av-(\lambda \cdot I)v = 0
$$
e raccogliamo l'autovettore $v$ 
$$
(A-\lambda I)v = 0
$$

Questo prodotto farà zero solo se $\det(A-\lambda I)=0$ 
Il perché lo si può intuire da questa rappresentazione grafica della trasformazione lineare che avviene al variare di $\lambda$ 
![[diagram-20230825 (3).svg#invert_B]]
Nel caso sottostante, quello per cui $\lambda = -2$ otteniamo che il piano collassa su se stesso e regrediamo di una dimensione, avendo come risultato che il vettore $v$, che era diverso da $0$ diventerà proprio $0$ 

Abbiamo usato questo giochetto del determinante per ricavarci i valori di $\lambda$ 

Ovviamente come è possibile notare, per trovare i valori di $\lambda$ bisogna inevitabilmente risolvere il polinomio (di secondo grado in questo caso) dato da 
$$
(1-\lambda)(5-\lambda)- 20 = 0
$$

#calcolo-numerico #teoria  