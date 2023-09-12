### Intuizione
Nascono dalla domanda, "esistono nodi che minimizzano l'errore?"
sono la scelta migliore di nodi che si possano prendere per avere il minimo errore e la stabilità algoritmica migliore per il [[Polinomio di Lagrange]] e questa scelta di nodi crea un polinomio ottimale che, appunto, è detto [[Polinomio di Chebyschev]] 
L'idea è che, tramite la ricerca di questi punti ottimali, vedremo che tutti si trovano esattamente nell'intersezione tra due curve relative 
Questo pattern ci permetterà di scrivere la relazione di ricorrenza di tali nodi

Ps. si pronuncia "*Cebicev*"
### Formalmente

- Nel caso in cui l'insieme $[a,b] = [-1,1]$ allora il polinomio di chebychev è cosi descritto dai seguenti $L_{k}$ che si chiameranno $T_{k}$: 
  $$
T_{n}(x) = \cos(n \arccos (x)) 
$$
Dove $T_{n}(x)$ è data da 
$$
\begin{align}
&T_0(x)=1 \\
&T_1(x)=x  \\
&T_{n+1}(x)=2xT_n(x)-T_{n-1}(x)
\end{align}
$$
E gli zeri sono dati dalla risoluzione di quest equazione 
$$
x_n=\cos\frac{(2k-1)}{2n}\pi 
$$
- Nel caso in cui l'insieme sia un generico $[a,b]$ l'equazione degli zeri è data da questa relazione. 
  $$
x_k=\dfrac{a+b}{2}+\dfrac{b-a}{2}\cos\biggl(\dfrac{2k-1}{2n}\pi\biggr)
$$
Normalmente l'insieme di appartenenza è $[-1,1]$ dato che abbiamo un coseno, ma appunto possiamo usare una traslazione lineare per ricondurre un caso generale al caso $[-1,1]$

## Dimostrazione
Nel caso di $n=1$ con $n$ ovviamente intendiamo il grado del polinomio. 
I polinomi di chebychev godono di una particolare proprietà, che ci permette di sapere a priori il coefficiente del termine con grado più alto, e questo ci concede di studiare il problema min max, che a quanto si tratta di minimizzare l'errore massimo


Abbiamo quindi un polinomio di grado $n$ e per trovare il punto migliore tale per cui l'[[Errore di discretizzazione]] sia minimo 

Dobbiamo quindi risolvere il seguente problema di minimo 
$$
\operatorname*{min}_{x_{0},x_{1}\in[a,b]}\operatorname*{max}_{x\in[a,b]}\big|(x-x_{0})(x-x_{1})\big|
$$
In poche parole cerchiamo i più piccoli nodi $x_{0},x_{1}$ tali per cui otteniamo il massimo del prodotto ${|(x-x_{0})(x-x_{1})|}$ che a quanto pare dovrebbe darci la stima dei nodi che minimizzano l'errore, ma ancora non ho capito perché.  
Forse significa che cerchiamo i nodi migliori tali per cui qualunque $x$ presa nell'intervallo otteniamo il massimo valore, che significa (e ancora, non so perché) minimizzare l'errore 

Comunque possiamo senza perdere di generalità considerare il caso $[a,b] = [-1,1]$ non perdiamo di generalità perché con una traslazione possiamo ricondurci al caso generale

Per distribuire uniformemente l'informazione faremo si che un punto sia in $[-1,0]$ e che l'altro sia in $[0,1]$

facciamo che $x_{1}\in[0,1]$ allora visto che l'altro sarà simmetrico (si trova dall'altro lato) diremo che $x_{0}=-x_{1}$

Facciamo tutto questo per toglierci di mezzo una $x$ perché difatti, per risolvere il problema dovremmo solo trovare $x_{1}$ visto che $x_{0}$ è simmetrica rispetto a $x_{1}$ 
Il problema diventa quindi 

![[diagram-20230903.svg#invert_B]]

Notiamo che ${|x^{2}-x_{1}^{2}|}$ assume valore massimo in $x = 0$ e in $x = \pm 1$ 
Quindi il problema diventa 
$$
\max_{x\in[-1,1]}\Bigl|x^2-x_1^2\Bigr|=\max_{x_1\in[0,1]}\Bigl\{x_1^2,1-x_1^2\Bigr\}
$$
Ps. nelle slides c'è $\max_{x_{1}\in [0,1]}$ ma a me sembra ci debba essere $\min$ 


Comunque alla fine esce fuori, appunto, che il punto minimo è caratterizzato dall'intersezione delle due rette $x_{1}^{2}$ e $1-x_{1}^{2}$ 

$$
\begin{align}
&x_{1}^{2} = 1-x_{1}^{2} \\
&x_{1} = \frac{1}{\sqrt{ 2 }}  \\
& x_{0} = -\frac{1}{\sqrt{ 2 }}
\end{align}
$$
#calcolo-numerico #dimostrazione #teoria  #non-ho-capito
