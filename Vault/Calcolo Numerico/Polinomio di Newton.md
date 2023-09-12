### Intuizione
Il polinomio interpolante di newton ha diversi vantaggi rispetto a lagrange, nello specifico definisce i suoi coefficienti tramite il metodo delle differenze divise, che, come vedremo dopo è un algoritmo ricorsivo, quindi a differenza di lagrange ([[Complessità del metodo di Lagrange]]) qui non dobbiamo ricalcolare nulla in caso volessimo aggiungere un nodo 

Segue una veloce rappresentazione grafica del metodo delle differenze divise 
![[diagram-20230909 (2).svg#invert_B]]

### Formalmente
Allora immaginiamo di avere due punti $(x_{0},y_{0})$ e $(x_{1},y_{1})$ 
Se volessimo interpolare solo il primo punto il nostro polinomio, di grado $0$ dovrà necessariamente essere nella forma 
$$
P_{n}(x_{0}) = y_{0}
$$ 
ora se invece volessimo calcolarlo in $x_{1}$ allora ci servirebbe un altro coefficiente per indicarci dove andare giusto? 
dovremmo avere qualcosa del tipo 
$$
P_{n}(x_{1}) = y_{1} = y_{0} + f[x_{0},x_{1}] (x_{1}-x_{0}) 
$$
dove quello che cerchiamo è proprio $f[x_{0},x_{1}]$ 

> Ricordiamo che $(x-x_{0})$ dove noi abbiamo calcolato di sopra in $x =x_{1}$ ci serve a non invalidare il fatto che, quel polinomio, calcolato in $x_{0}$ dovrà sempre darci $y_{0}$ 
> Se avessimo messo solo $x$ il polinomio non avrebbe più interpolato $x_{0}$ correttamente 

ora data la definizione scritta sopra possiamo ricavare che
$$
\begin{align}
&y_{0}+f[x_{0},x_{1}](x_{1}-x_{0}) = y_{1} \\
& f[x_{0},x_{1}] =\frac{ y_{1}-y_{0}}{x_{1}-x_{0}}
\end{align}
$$
ossia 
$$
f[x_{0},x_{1}] =\frac{ f[x_{1}] - f[x_{0}]}{x_{1}-x_{0}}
$$

Se facessimo lo stesso ragionamento con il termine successivo  avremo 
$$
P_{2} (x_{2}) = y_{2} = y_{0}+f[x_{0},x_{1}](x_{1}-x_{0}) + f[x_{0},x_{1},x_{2}](x_{2}-x_{0}) - (x_{2}-x_{1}) 
$$
ossia ....

Ecco cosi che otteniamo la seguente formula ricorsiva delle differenze divise 
$$
\begin{aligned}
f[x_{k}] & =y_{k}  \\
f[x_{k},x_{k+1}]& =\frac{f[x_{k+1}]-f[x_{k}]}{x_{k+1}-x_{k}}  \\
f[x_{k},x_{k+1},x_{k+2}]& |=\frac{f[x_{k+1},x_{k+2}]-f[x_{k},x_{k+1}]}{x_{k+2}-x_{k}}  \\
f[x_{k},x_{k+1},\ldots,x_{k+i},x_{k+i+1}]& =\frac{f[x_{k+1},\ldots,x_{k+i+1}]-f[x_{k},\ldots,x_{k+i}]}{x_{k+i+1}-x_{k}} 
\end{aligned}
$$
Ottimo, sappiamo ricavare i coefficienti, quindi ora scriveremo la formula completa del polinomio interpolante di newton 

$$
P_{n}(x) = f[x_{0}] + f[x_{0},x_{1}](x-x_{0})+ f[x_{0},x_{1},x_{2}](x-x_{0})(x-x_{1})+  \cdots f[x_{0}, \cdots x_{n}] (x-x_{0}) \cdots (x-x_{n})
$$

Tuttavia anche con in lagrange la funzione non è data solo dal polinomio ma anche da un errore $f(x) = P_{n}(x) + E_{n}(x)$ chiamato [[Errore del polinomio interpolante di Newton]]

#calcolo-numerico #teoria  