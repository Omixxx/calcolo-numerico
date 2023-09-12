### Intuizione
Le spline cubiche sono una versione particolare delle [[Spline]] che utilizza per ogni intervallo un polinomio di terzo grado.
Sono largamente utilizzate 

![[diagram-20230903 (2).svg#invert_B]]

### Formalmente
Dati $(n+1)$ punti $(x_{0},y_{0}), (x_{1},y_{1})\dots (x_{n},y_{n})$  una spline cubica $s(x)$ è una funzione che rispetta le seguenti proprietà: 
- $s(x)$ è un polinomio cubico $s_{i}(x)$ per ogni sottointervallo $[x_{i},x_{i+1}]$ 
- $s(x_{i}) = y_{i}$ per ogni $i =0,\dots ,n$ ossia deve interpolare effettivamente i punti 
- $s_{i}(x_{i}) = s_{i+1}(x_{i})$ questo garantisce la continuità perché ci dice che due polinomi immediatamente successivi, e che quindi descrivono due tratti immediatamente successivi devono avere lo stesso valore se calcolati nel punto comune di giunzione $x_{i}$ 
- $s'_{i}(x_{i}) = s'_{i+1}(x_{i})$ ci da la proprietà della derivabilità ossia, la derivata nel punto in comune deve esistere e deve essere uguale per i (due) polinomi che hanno in comune quel punto. 
- $s''_{i}(x_{i}) = s''_{i+1}(x_{i})$ ci da la proprietà di concavità (che non ho esattamente capito a che serve)


Come vediamo, se abbiamo a che fare con un insieme di $3$ punti ad esempio, dovremmo inevitabilmente avere $2$ polinomi di terzo grado, con un totale di $6$ incognite 

Abbiamo quindi $4n$ incognite e solamente $4n-2$ condizioni. (il $-2$ credo derivi dal fatto che le condizioni sono valide su tutti i punti tranne che sul primo e sull'ultimo) 
Ecco perché possiamo aggiungere altre condizioni (una sola di queste):

- ${s''(x_{0}) = s''(x_{n})}$ *spline naturale* 
  geometricamente significa che nel punto iniziale e finale la spline termina con concavità nulla e quindi delle rette![[diagram-20230903 (4).svg#invert_B]] 
- $s'(x_{0})=f'(x_{0})$ e $s'(x_{n}) = f'(x_{n})$ *spline vincolata* 
- $s’(x_0)=s’(x_n)\text{ e }s’’(x_0)=s’’(x_n)$ *spline periodica* 
 qui direzione e curvatura sono uguali nel primo e nell'ultimo punto 

Le spline cubiche ci piacciono in particolare perché sono le uniche spline che minimizzano l'energia elastica, ossia tali per cui 
$$
\int_{x_0}^{x_n}[f^{\prime\prime}(x)]^2dx
$$

L'energia elastica si riferisce all'energia accumulata in un sistema elastico quando viene deformato. Nell'ambito delle spline cubiche, l'"energia elastica" rappresenta una misura della curvatura o della flessibilità della curva. Quando diciamo che una spline cubica minimizza l'energia elastica, stiamo cercando una curva che sia il più possibile "rigida" o "liscia" nel contesto specifico dell'applicazione.

La spline cubica che minimizza l'energia elastica è quella curva che si piega il meno possibile mentre attraversa tutti i punti di controllo specificati. In altre parole, cerca di mantenere la curvatura (o flessibilità) della curva il più bassa possibile, rendendo la curva il più simile possibile a una retta tra due punti di controllo consecutivi. Questo comportamento è utile in molte applicazioni, ad esempio nell'animazione computerizzata per ottenere movimenti fluidi o nella progettazione assistita da computer per creare curve o superfici lisce.

#calcolo-numerico #teoria  