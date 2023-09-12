### Intuizione
Questo metodo mira ad approssimare la soluzione del sistema lineare $Ax=b$ usando due possibili approcci, uno scalare e uno matriciale


### Formalmente

##### Forma scalare 
Nella forma scalare il metodo di Jacobi si presenta in questa forma. 
$$
{x_{i}^{(k+1)}} =\frac{{b_{i}} -\sum _{j=1,j\neq i}^{n}{a_{ij} x_{j}^{(k)}}}{{a_{ii}}} ,\ \ i=1,\dotsc ,n
$$
Può sembrare complicato ma alla fin fine non fa nulla di strano, 
Osserviamo quindi una rappresentazione pseudo-grafica di quello che succede. 
![[diagram-20230825 (4).svg#invert_B]]
Come vediamo alla fine fine ci ricaviamo le varie $x_{i}$ e poi andiamo a risolvere il sistema in questa nuova forma. 
Per risolverlo useremo un primo vettore di approssimazione $x^{(0)} = [0,0,0]^{T}$  
e andiamo a sostituire quindi $x, y$ e $z$ con $0$ e ci ricaviamo i nuovi valori $x^{(1)}$ con cui poi andremo a eseguire nuovamente le iterate


##### Forma matriciale
Per quanto riguarda la forma matriciale sfruttiamo il concetto di base dei [[Metodi iterativi]] 
e quindi andiamo riprendere la forma $x = Tx+c$ e adattiamola  a questo metodo 
Avremo quindi 
$$
\begin{align}
& T_{j} = -D^{-1}  C \\
& c = D^{-1}   b


\end{align}
$$
Dove $D$ per Jacobi è la matrice diagonale (di cui l'inversa sappiamo essere facilmente calcolabile) e $C$ è il complemento di $D$ ossia tutto ciò che non sta in $D$
Ad esempio: 

$$
A=\begin{pmatrix}1&2&3\\4&5&6\\7&8&9\end{pmatrix}\quad D=\begin{pmatrix}1&0&0\\0&5&0\\0&0&9\end{pmatrix}\quad
C=\begin{pmatrix}{0}&2&3\\4&{0}&{6}\\{7}&{8}&{0}\end{pmatrix}
-D^{-1}=\begin{pmatrix}-\frac11&{0}&{0}\\{0}&-\frac15&{0}\\{0}&{0}&-\frac19\end{pmatrix}\quad\quad 
$$
Per ottenere quindi le approssimazioni di $x$ dobbiamo procedere eseguendo le iterate 
$$
x^{(k+1)} = T_{j}x^{(k)} + c
$$
Come per il caso di prima si può usare come primo vettore di prima approssimazione $x^{(0)}=[0,0,0]$ 
#calcolo-numerico #teoria  