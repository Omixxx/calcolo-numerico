### Intuizione
L'algoritmo di lagrange è sempre un algoritmo, e numericamente non si distacca dagli altri algoritmi, infatti nel tentativo di calcolare il polinomio $P_{n}(x)$ finiremo per calcolare $\overline{P}_{n}(x)$ 
L'obiettivo qui è capire quanto distante sia $P_{n}(x)$ da $\overline{P}_{n}(x)$ 
Parleremo quindi, indirettamente della stabilità del nostro algoritmo

L'idea è di "sporcare volontariamente" i dati, in modo da osservare come l'algoritmo si comporta su dati leggermente invalidati  

### Formalmente
Sia $y_{i}$ l'ordinata a nostra disposizione, utilizziamo invece $\overline{y}_{j} = y_{i}+\varepsilon _{j}$ dove $\varepsilon _{i}$ è una piccola variazione sui dati, definiamo l' [[Errore relativo]] di propagazione e l'[[Errore assoluto]] di propagazione
$$
\begin{align}
&e_{rel}=\frac{\left\|P_n(x)-\overline{P_n(x)}\right\|_\infty}{\|P_n(x)\|_\infty}\leq\Lambda_n\frac{\|\varepsilon\|_\infty}{\|y\|_\infty} \\
& e_{abs}=\left\|P_n(x)-\overline{P_n(x)}\right\|_\infty\leq\Lambda_n\|\varepsilon\|_\infty 
\end{align}
$$
dove $\Lambda_n=\left\|\sum_{k=0}^nL_k(x)\right\|_\infty$  e 
## Dimostrazione 
Sia $y_{i}$ l'ordinata a nostra disposizione, utilizziamo invece $\overline{y}_{j} = y_{i}+\varepsilon _{j}$ dove $\varepsilon _{i}$ è una piccola variazione sui dati. 
Consideriamo ora il polinomio risultante da questa variazione 
$$
\overline{P_{n}(x)} = \sum_{j = 0}^{n}\overline{y}_{j}L_{j}(x)
$$

Otteniamo quindi che la formula dell'errore sarà cosi descritta 
$$
P_{n}(x)-\overline{P_{n}(x)}=\sum_{k=0}^{n}y_{k}\cdot L_{k}(x)-\sum_{k=0}^{n}\overline{y_{k}}\cdot L_{k}(x)=\sum_{k=0}^{n}(y_{k}-\overline{y_{k}})\cdot L_{k}(x)
$$

Applicando la funzione norma otteniamo 
$$
\left\|P_n(x)-\overline{P_n(x)}\right\|_\infty =\left\|\sum_{k=0}^n(y_k-\overline{y_k})\cdot L_k(x)\right\|_\infty 
$$
E per la proprietà della [[Disuguaglianza triangolare delle norme]] possiamo spezzare il prodotto e trovare una quantità che sicuramente è più grande dell'errore, andando cosi a maggiorare
$$
 {\| P_{n}(x)-\overline{P_{n}(x)} \|}_{\infty } \leq\left\|\sum_{k=0}^{n}L_{k}(x)\right\|_{\infty}\cdot\left\|\sum_{k=0}^{n}(y_{k}-\overline{y_{k}})\right\|_{\infty}
$$
Ora siccome sappiamo, per la [[Polinomio di Lagrange]], che $L_{k}(x) = 0 \lor L_{k}(x)=1$ e siccome la somma è finita possiamo sostituire questa con una costante chiamata *costante di Lebesgue (pronunciato "lebeg")* cosi definita 
$$
\Lambda _{n} = \left\|\sum_{k=0}^{n}L_{k}(x)\right\|_{\infty}
$$
Abbiamo quindi che 
$$
 {\| P_{n}(x)-\overline{P_{n}(x)} \|} \leq \Lambda _{n}\cdot\left\|\sum_{k=0}^{n}(y_{k}-\overline{y_{k}})\right\|_{\infty}
$$
Ora, per l'ultimo membro a quanto pare (e non ho capito il perché) è possibile maggiorare (se non uguagliare, non so, visto che già siamo in una maggiorazione quindi il $\leq$ è già giustificato) con la norma infinito del vettore dato dalla sottrazione dei dati originali con i dati perturbati  (dato che $y_{k} - \overline{y_{k}} = \varepsilon_{k}$)

$$
	e_{abs} = {\| P_{n}(x)-\overline{P_{n}(x)} \|} \leq \Lambda _{n}\cdot {\| \varepsilon \|}_{\infty } 
$$
E con questo siamo a cavallo per quanto riguarda l'errore assoluto. 
Per quello relativo ci servirebbe il termine ${\| {P_{n}(x)} \|}_{\infty}$ 

Per averlo dobbiamo considerare che, per definizione di [[Norma di funzione]] abbiamo
$$
{\|   P_{n}(x) \|_{\infty }} = \max_{x \in [a,b]} P_{n}(x) \geq  \max_{0\leq i\leq n} P_{n} (x_{i})  
$$
Questa maggiorazione ci dice che preso una qualunque $x$ nell'intervallo, avremo sicuramente una risultato maggiore o uguale rispetto che prendere il massimo di una $x_{i}$ ossia un punto di interpolazione. 
Segue quindi 

$$
\max_{0\leq i\leq n}P_{n}(x_{i}) = \max_{0\leq i\leq n}y_{i} = {\| y \|_{\infty }}
$$

Ps.  La costante di Lebesgue $\Lambda _{n}$ definita prima oscilla tra due valori 

$\Lambda _{n} \approx \mathcal{O}(\log(n))$ in caso di *nodi di chebychev* 
$\Lambda _{n} \approx \mathcal{O(e^{})}$ in caso di *nodi equispaziati*

#calcolo-numerico #teoria #dimostrazione   