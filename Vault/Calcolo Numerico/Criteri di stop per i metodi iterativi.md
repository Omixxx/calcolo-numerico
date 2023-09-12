### Intuizione
Solitamente ci si ferma per due ragioni 
1. Sicurezza (qualora non convergesse oppure convergesse molto lentamente)
2. Quando la soluzione approssimata raggiunge un livello per noi accettabile(useremo l'[[Errore relativo]] o l'[[Errore assoluto]] per capire quando questo avviene )

### Formalmente
1. scelto un $k_{max}$ allora deve valere che $k < k_{max}$ ovvero, facciamo al più $k_{max}$ iterate
2. sia $\varepsilon >0$ un numero piccolo a piacere, allora deve valere: 
$$
e_{abs} = {\| x^{(k+1)} - x^{(k)} \| < \varepsilon }
$$
Oppure 

$$
e_{rel} = {\frac{\| x^{(k+1)} -x^{(k)} \|}{{\| x^{(k+1)} \|}}} < \varepsilon 
$$

#calcolo-numerico #teoria  