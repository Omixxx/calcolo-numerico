### Intuizione
Calcoliamo la distanza della nostra matrice dei coefficienti da tutte le matrici singolari e quindi mal poste. 
Per fare questo sfruttiamo il fatto che un [[Indice di condizionamento]] infinito indica che abbiamo indubbiamente a che fare con un [[Problema mal posto]], quindi più sarà grande il nostro indice di condizionamento più ci avvicineremo a matrici mal poste (e quindi con determinate pari a $0$) 
### Formalmente

$$
\left.\frac1{K(A)}=\min\left\{\frac{\|A-B\|}{\|A\|}:B\in\mathbb{R}^{n\times n}\right. \  e\  \det(B)=0\right\}
$$

#calcolo-numerico #teoria  