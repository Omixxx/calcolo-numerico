### Intuizione


### Formalmente
$$
E_{n}(x) = (x-x_{0})(x-x_{1}) \cdots (x-x_{n})f[x_{0},x_{1}\cdots x_{n}]
$$
Un utile risultato è il [[Teorema sulle differenze divise]] che ci da un valore per $f[x_{0},x_{1},\cdots x_{n} ]$ 
## Dimostrazione 

Guardando alla formula delle differenze divise possiamo notare che 
$$
f[x,x_{0}] =\frac{ f[x_{0}] -f[x]}{x_{0}-x} 
$$
Possiamo notare che 
$$
\begin{aligned}f[x,x_0]=\frac{f(x_0)-f(x)}{x_0-x}\Rightarrow f(x)=\underbrace{f(x_0)}_{\begin{array}{c}P_0(x)\\\end{array}}+\underbrace{(x-x_0)f[x,x_0]}_{\begin{array}{c}f(x)-P_0(x)\\\end{array}}\\\text{errore}\end{aligned}
$$
e proseguendo su questa linea abbiamo che 
$$
\begin{align}
&  f[x,x_{0},x_{1}] =\frac{ f[x_{0},x_{1}] - f[x,x_{0}]}{x_{1}-x} \implies    \\
& \underbrace{f[x_{0}]+ f[x_{0},x_{1}](x-x_{0})}_{P_{1}(x)} + \underbrace{f[x,x_{0},x_{1}](x-x_{0})(x-x_{1})}_{\text{Errore } f(x)- P(x)}
\end{align}
$$

cosi continuando arriveremo ad ottenere $f(x) = P_{n}(x) + E_{n}(x)$
dove $E_{n}(x)$ è quanto indicato nella sezione *formalmente*
#calcolo-numerico #teoria #dimostrazione   