### Intuizione
Vogliamo capire a che velocità converge un metodo iterativo (eg. [[Metodo di Gauss Seidel]] , [[Metodo di Jacobi]]). 
Per fare questo useremo i calcoli dell'errore per i metodi e ricaveremo, tramite la media geometrica, la riduzione media dell'errore passo per passo. 

Poi, tramite relazioni note dalla dimostrazione della [[Condizione necessaria e sufficiente per la convergenza di un metodo iterativo]] potremmo arrivare a dire che è il [[Raggio spettrale]] il valore che ci indicherà quanto il metodo converge velocemente.   

### Formalmente
Dalle relazioni ottenute dalla dimostrazione della [[Condizione necessaria e sufficiente per la convergenza di un metodo iterativo]] possiamo esprimere l'errore al passo $k-$esimo come 
$$
e^{(k)} = T^{k} e^{0} 
$$
Siccome parliamo sempre di vettori applichiamo la funzione norma ${\| \cdot \|}$ per ricavare dei numeri 
$$
{\| e^{(k)} \|} = {\| T^{(k)}}e^{0 }\| 
$$
e per la [[Disuguaglianza triangolare delle norme]] otteniamo la seguente maggiorazione dell'errore 
$$
{\| e^{(k)} \|} \leq {\| T^{(k)} \|}\cdot {\| e^{0} \|}
$$
Tuttavia il seguente valore non ci piace poiché potrebbe essere inadatta a valutare la velocità di convergenza, essendo solo il valore dell'errore dopo $k$ iterate 

Proseguiamo quindi a utilizzare un altro approccio, ossia guardare alla riduzione dell'errore al passo $k-$esimo definita come segue. 
$$
\frac{{\| e^{(k)} \|}}{{\| e^{(k-1)} \|}} \quad \text{con } e^{(k-1)} \neq 0
$$
E utilizzarla nella media geometrica per definire la *riduzione media dell'errore al passo $k-$esimo* $\sigma_{k}$   
$$
\sigma_{k} = \sqrt[k]{\frac{{\| e^{1} \|}}{{\| e^{0} \|}}\cdot \frac{{\| e^{2} \|}}{{\| e^{1} \|}} \cdot \frac{{\| e^{2} \|}}{{\| e^{1} \|}} \cdots \frac{{\| e^{(k)} \|}}{{\| e^{(k-1)} \|}}} = \sqrt[k]{ \frac{{\| e^{k} \|}}{{\| e^{0} \|}} }
$$
quel prodotta fa $\sqrt[k]{ \frac{{\| e^{k} \|}}{{\| e^{0} \|}} }$ perché se guardiamo bene si ripete fino alla fine questo pattern
$$
\frac{\cancel{{\| e^{1} \|}}}{{\| e^{0} \|}} \cdot \frac{{\cancel{{\| e^{2} \|}}}}{{\cancel{{\| e^{1} \|}}}} \cdot \frac{{\| e^{3} \|}}{{\cancel{\| e^{2} \|}}}\cdots \frac{{\| e^{k} \|}}{{\| e^{0} \|}} 
$$
facendo cosi rimanere solo il primo termine al denominatore, ossia ${\| e^{0} \|}$ e quello all'ultimo termine, al numeratore, ${\| e^{k} \|}$


So good so far, abbiamo ricavato questo tasso di variazione $\sigma_{k}$ e vista la relazione dell'errore 
$$
{\| e^{(k)} \|} = {\| T^{(k)}}e^{0 }\| \leq {\| T^{(k)} \|}\cdot {\| e^{0} \|}
$$
Possiamo fare questo giochino 
$$
\sigma_{k} = \sqrt [k]{ \frac{{\| e^{k} \|}}{{\| e^{0} \|}} }\leq \sqrt[k]{ \frac{{\| T^{(k)} \|}}{{\| e^{0} \|}} \cdot \frac{{\| e^{0} \|}}{1} } = \sqrt[k]{ {\| T^{(k)} \|} }
$$
Ora, visto che stiamo misurando la velocità di convergenza sappiamo allora, per la [[Condizione necessaria e sufficiente per la convergenza di un metodo iterativo]] che $\rho(T) < 1$
e, per una relazione nota che non spiegheremo, vale che
$$
\lim_{k\to\infty}\sqrt[k]{\left\|T^k\right\|}=\rho(T)
$$
Quindi più il raggio spettrale misura la velocità di convergenza, e più piccolo è più il metodo converge velocemente.

#calcolo-numerico #teoria  