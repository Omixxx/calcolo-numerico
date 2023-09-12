### Intuizione

Sfruttiamo la definizione di errore per per mostrare che esso tende a $0$ visto che  $T^{(k)}$ tende a $0$ per $k\to \infty$ se $\rho(T)<1$ 
Questo impiccio ci permetterà di sbirciare al [[Raggio spettrale]] della matrice di iterazione e capire se il metodo converge o meno.


### Formalmente
$$
x^{(k+1)} = Tx^{(k)} + c\quad \forall k \geq 0, c\neq 0 
\text{ converge ad unica soluzione }x = Tx + c  
\iff \rho(T) < 1
$$

## Dimostrazione 

Partiamo dalla definizione di errore assoluto $e^{(k+1)}$
$$
\begin{aligned}
&e^{(k+1)}=x-x^{(k+1)}=(Tx+c)-(Tx^{(k)}+c)= \\
& =Tx+c{\ -Tx^{(k)}-c}=Tx+Tx^{(k)}=  &  \\
& = T(x-x^{(k)})=Te^{(k)},\quad \quad k=1,2,\ldots
\end{aligned}
$$
Otteniamo quindi $e^{(k+1)} = Te^{(k)}$ e applichiamo questa definizione ricorsivamente partendo da $0$
$$
\begin{aligned}
&e^{(0)}&& =x-x^{(0)}  \\
&e^{(1)}&& =Te^{(0)}  \\
&e^{(2)}&& =Te^{(1)}=TTe^{(0)}=T^{2}e^{(0)}  \\
&e^{(3)}&& =Te^{(2)}=TT^2e^{(0)}=T^3e^{(0)}  \\
&&&...&   \\
&e^{(k+1)}&& =Te^{(k)}=TT^{k}e^{(0)}=T^{k+1}e^{(0)} 
\end{aligned}
$$
ottenendo questa importante relazione  

$$
e^{(k+1)} = Te^{(k)} = T^{k+1}e^{(0)}
$$
Ora possiamo usare il [[Lemma sul limite della matrice di iterazione ]] e il modo in cui abbiamo definito l'errore possiamo dire che $T^{k+1}e^{(0)}=0 \text{ per } k \to \infty$
e visto che l'errore tenderà ad annullarsi con l'aumentare delle iterate possiamo dire che il metodo converge all'unica soluzione  $x=Tx+c \iff \rho(T) <1$ 

#calcolo-numerico #teoria #dimostrazione   