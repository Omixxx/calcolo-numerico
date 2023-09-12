### Intuizione
Questo metodo segue le orme del fratello [[Metodo di Jacobi]] tuttavia approccia in modo leggermente differente al problema regalandoci un miglior uso dei dati in nostro possesso. 
Questo metodo sfrutta infatti le informazioni appena ricavate per ottenere un'approssimazione migliore (ma non sempre più veloce) 


### Formalmente

##### Forma Scalare 
$$
x_i^{(k+1)}=\frac{b_i-\sum_{j=1}^{i-1}a_{ij}x_j^{(k+1)}-\sum_{j=i+1}^na_{ij}x_j^{(k)}}{a_{ii}},\quad i=1,\ldots,n
$$
Ancora, l'approccio scalare, apparentemente complicato alla fine non lo è. 
Simile al metodo di Jacobi, l'unica differenza qui è che la sommatoria è spaccata in due, nella prima parte sommiamo effettuando il prodotto con le $x_{j}$ aggiornate, ossia le $x$ che ci siamo calcolati nei passi (non iterate eh!) precedenti. 

Segue una rappresentazione pseudo-grafica per schiarire le idee: 
![[diagram-20230825 (6).svg#invert_B]]
Come vediamo in questo caso, a differenza di Jacobi, andiamo ad utilizzare le informazioni aggiornate dei vari pezzetti che abbiamo già. 
Nel metodo di Jacobi utilizziamo sempre e comunque le $x$ dell'iterata precedente, mentre qui no, se troviamo qualcosa non aspettiamo la prossima iterata per usarla ma la usiamo subito. 
Come vediamo nella parte indicata dalla freccia colorata, noi siamo in possesso già della $x$ aggiornata, quindi non usiamo quella del vettore risultato precedente ma usiamo quella aggiornata. 

Per far partire questo metodo iniziamo, come al solito, con il vettore $x^{(0)} = [0,0,0]$ 

#### Forma matriciale 
Per l'approccio matriciale anche qui ci rifacciamo all'idea dei [[Metodi iterativi]] solo che a differenza del [[Metodo di Jacobi]] la scelta di $D$ non sarà la matrice diagonale ma la matrice triangolare (inferiore).
Se preferite potete usare lettere e nomenclature differenti.

$$
\begin{align}
& T_{GS} = -D^{-1}C  \\
& c = D^{-1} b
\end{align}
$$
dove $D$ come già detto è la matrice triangolare inferiore, e $C$ è il complemento di $D$
Segue un esempio numerico: 

$$
A=\begin{pmatrix}1&2&3\\4&5&6\\7&8&9\end{pmatrix}\quad D=\begin{pmatrix}1&0&0\\4&5&0\\7&8&9\end{pmatrix}\quad
C=\begin{pmatrix}{0}&2&3\\0&{0}&{6}\\{0}&{0}&{0}\end{pmatrix}
-D^{-1}= \text{ foreward substitution} 
$$
Come indicato nella rappresentazione di sopra il calcolo dell'inversa di $D$ è abbastanza intuitivo, difatti possiamo usare la [[Forward substitution]] 
Il calcolo delle iterate è uguale, di fatto, a Jacobi 

$$
x^{(k+1)} = Tx^{(k)}+c
$$
#calcolo-numerico #teoria  