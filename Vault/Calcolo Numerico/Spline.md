### Intuizione
L'idea è di avere dei polinomi che si attaccano tra di loro in maniera uniforme e derivabile. 
E' una versione potenziata della tecnica dell' [[Interpolazione a tratti]]


### Formalmente
Sia $[a,b]$ un insieme finito contenente i punti $x_{i}$ per $i = 0,1,\dots,n$ e quindi vale $a \equiv x_{0}<x_{1}<x_{2}<\dots <x_{n}\equiv b$  

Una funzione spline di grado $d$ associata ai punti è una funzione polinomiale a tratti $s(x)$ che soddisfa le seguenti proprietà 

1. $s(x)$ è derivabile $d-1$ volte in ogni punto $x_{i}$ per $i = 0,1\dots n$ 
2. su ogni sotto-intervallo $[x_{i},x_{i+1}]$, con $i=0,\dots,n-1$ $s(x)$ è un polinomio di grado $\leq d$ 

In pratica garantiamo la derivabilità per ogni punto e diciamo che ogni tratto, da un punto all'altro non può essere coperto da un polinomio con grado maggiore di $d$


#calcolo-numerico #teoria  