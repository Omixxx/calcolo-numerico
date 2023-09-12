### Intuizione
Questo 🦡 ci serve per indicare quanto velocemente un metodo converge, e a differenza del [[Velocità di convergenza di un metodo iterativo]] questo misura l'effettiva velocità, mentre quell'altro misura la riduzione asintotica media dell'errore passo dopo passo. 

Questo tasso inoltre ci servirà anche per capire quante iterate ci servono per ridurre l'errore di una certa quantità 

### Formalmente
il *Tasso asintotico di convergenza* è definito come segue: 
$$
	R_{\infty} = -\log_{10}\rho(T)
$$
Per ridurre l'errore di un fattore $\gamma$ rispetto all'errore iniziale servono circa il seguente numero di iterate:
$$
 k \approx -\frac{\log_{10}\gamma}{R_{\infty }}
$$



#calcolo-numerico #teoria  