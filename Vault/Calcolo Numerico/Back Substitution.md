### Intuizione
l'algoritmo di back substitution è molto semplice e si applica a matrici triangolari inferiori (forward substitution per le matrici triangolari superiori) 

Immaginiamo quindi di avere una matrice triangolare inferiore come segue

```tikz

\begin{document}



\tikzset{every picture/.style={line width=0.75pt}} %set default line width to 0.75pt        

\begin{tikzpicture}[x=0.75pt,y=0.75pt,yscale=-1,xscale=1]
%uncomment if require: \path (0,341); %set diagram left start at 0, and has height of 341

%Shape: Grid [id:dp8723064748019718] 
\draw  [draw opacity=0] (256,90) -- (336.22,90) -- (336.22,170.33) -- (256,170.33) -- cycle ; \draw   (256,90) -- (256,170.33)(276,90) -- (276,170.33)(296,90) -- (296,170.33)(316,90) -- (316,170.33)(336,90) -- (336,170.33) ; \draw   (256,90) -- (336.22,90)(256,110) -- (336.22,110)(256,130) -- (336.22,130)(256,150) -- (336.22,150)(256,170) -- (336.22,170) ; \draw    ;
%Shape: Grid [id:dp5507653338680485] 
\draw  [draw opacity=0] (342,89.4) -- (362.2,89.4) -- (362.2,170) -- (342,170) -- cycle ; \draw   (342,89.4) -- (342,170)(362,89.4) -- (362,170) ; \draw   (342,89.4) -- (362.2,89.4)(342,109.4) -- (362.2,109.4)(342,129.4) -- (362.2,129.4)(342,149.4) -- (362.2,149.4)(342,169.4) -- (362.2,169.4) ; \draw    ;
%Curve Lines [id:da973203380858624] 
\draw    (362,129) .. controls (377.05,115.93) and (409.54,84.63) .. (358.76,65.57) ;
\draw [shift={(357.2,65)}, rotate = 19.72] [color={rgb, 255:red, 0; green, 0; blue, 0 }  ][line width=0.75]    (10.93,-3.29) .. controls (6.95,-1.4) and (3.31,-0.3) .. (0,0) .. controls (3.31,0.3) and (6.95,1.4) .. (10.93,3.29)   ;
%Curve Lines [id:da52465259450165] 
\draw    (256.09,109.51) .. controls (254.21,109.8) and (207.67,72.38) .. (287.98,65.11) ;
\draw [shift={(289.2,65)}, rotate = 175.12] [color={rgb, 255:red, 0; green, 0; blue, 0 }  ][line width=0.75]    (10.93,-3.29) .. controls (6.95,-1.4) and (3.31,-0.3) .. (0,0) .. controls (3.31,0.3) and (6.95,1.4) .. (10.93,3.29)   ;

% Text Node
\draw (260,92) node [anchor=north west][inner sep=0.75pt]   [align=left] {5};
% Text Node
\draw (280,112) node [anchor=north west][inner sep=0.75pt]   [align=left] {4};
% Text Node
\draw (300,131) node [anchor=north west][inner sep=0.75pt]   [align=left] {8};
% Text Node
\draw (320,152) node [anchor=north west][inner sep=0.75pt]   [align=left] {4};
% Text Node
\draw (280,92) node [anchor=north west][inner sep=0.75pt]   [align=left] {1};
% Text Node
\draw (300,112) node [anchor=north west][inner sep=0.75pt]   [align=left] {6};
% Text Node
\draw (320,132) node [anchor=north west][inner sep=0.75pt]   [align=left] {3};
% Text Node
\draw (300,93) node [anchor=north west][inner sep=0.75pt]   [align=left] {9};
% Text Node
\draw (320,113) node [anchor=north west][inner sep=0.75pt]   [align=left] {1};
% Text Node
\draw (320,93) node [anchor=north west][inner sep=0.75pt]   [align=left] {7};
% Text Node
\draw (261,112) node [anchor=north west][inner sep=0.75pt]   [align=left] {\textcolor[rgb]{0.82,0.01,0.11}{0}};
% Text Node
\draw (281,132) node [anchor=north west][inner sep=0.75pt]   [align=left] {\textcolor[rgb]{0.82,0.01,0.11}{0}};
% Text Node
\draw (301,152) node [anchor=north west][inner sep=0.75pt]   [align=left] {\textcolor[rgb]{0.82,0.01,0.11}{0}};
% Text Node
\draw (262,132) node [anchor=north west][inner sep=0.75pt]   [align=left] {\textcolor[rgb]{0.82,0.01,0.11}{0}};
% Text Node
\draw (282,152) node [anchor=north west][inner sep=0.75pt]   [align=left] {\textcolor[rgb]{0.82,0.01,0.11}{0}};
% Text Node
\draw (263,152) node [anchor=north west][inner sep=0.75pt]   [align=left] {\textcolor[rgb]{0.82,0.01,0.11}{0}};
% Text Node
\draw (295,57) node [anchor=north west][inner sep=0.75pt]   [align=left] {A};
% Text Node
\draw (346,56) node [anchor=north west][inner sep=0.75pt]   [align=left] {b};
% Text Node
\draw (346,92) node [anchor=north west][inner sep=0.75pt]   [align=left] {2};
% Text Node
\draw (346,112) node [anchor=north west][inner sep=0.75pt]   [align=left] {7};
% Text Node
\draw (346,132) node [anchor=north west][inner sep=0.75pt]   [align=left] {4};
% Text Node
\draw (346,152) node [anchor=north west][inner sep=0.75pt]   [align=left] {9};


\end{tikzpicture}

\end{document}
```

Per risolvere questa e ottenere il vettore $x$ tale per cui effettuando l'operazione $Ax$ otteniamo $b$ dobbiamo risolvere il seguente sistema lineare 

$$
\begin{cases}
    5x_1 + 1x_2 + 9x_{3} + 7x_{4} = 2 \\
    4x_2 + 6x_{3} + 1x_{4} = 7 \\
    8x_3 + 3x_4 = 4 \\
    4x_4 = 9 \\
\end{cases}
$$
Le operazioni che facciamo sono quindi: 

1. Spostiamo i termini che non sono legati alle incognite a destra, nel primo caso non si fa niente
2. Isoliamo la $x$ dividendo ciò che c'è a destra con il termine che affianca l'incognita. nel primo caso ragioniamo con $x_{4}$ ottenendo $x_{4} = \frac{9}{4}$ 
3. Ripetiamo il passo $1$ avendo cura di sostituire la $x$ che abbiamo trovato nel passo $2$  

Quindi quello che facciamo è:
Prendiamo la $x$ che si trova sulla colonna $k$, ossia la $x$ sulla diagonale, spostiamo tutto ciò che non è quella $x$ a destra (visto che partiamo dal basso siamo sicuri che le x dopo sono già state trovate, quindi a destra andranno numeri e mai incognite) e dividiamo per il coefficiente della $x_{k}$ 

### Formalmente
$$
x_{k}=\frac{1}{a_{kk}^{(k-1)}}\Bigg[a_{kn+1}^{(k-1)}-\sum_{j=k+1}^{n}a_{kj}^{(k-1)}x_{j}\Bigg]
$$
Di nuovo, niente panico, sembra un formulone ma sostanzialmente fa ciò che abbiamo detto prima. 

- $x_{k}$  è la $x$ corrente che vogliamo ricavare, usiamo $k$ e non $i$ perché le $x$ che vogliamo ricavare sono sulla diagonale fondamentalmente

- $\frac{1}{a_{kk}^{(k-1)}}$ è il coefficiente che stava accanto alla nostra $x_{k}$

- $a_{k n+1}^{(k-1)}$ è l'elemento dopo che sta dopo il simbolo uguale. Notiamo di nuovo che si trova in posizione $k \ k+1$ ossia si trova nella colonna del vettore dei termini noti $b$ 

- $\sum_{j=k+1}^{n}a_{kj}^{(k-1)}x_{j}$  questa parte fa riferimento al passo 1 della sezione *intuizione* e non è altro che la somma di tutti gli elementi di cui è nota la $x$ che poi vengono spostati a destra e sottratti all'elemento noto 

per quanto riguarda gli indici: 

usiamo $k$ perché le $x$ che ricaviamo sono sulla diagonale. Basta guardare il disegno ad inizio sezione per rendersi conto che operiamo sulla diagonale, e ricordandoci l'[[Eliminazione di Gauss]] $k$ è l'indice della diagonale pivot 

$j$ invece lo usiamo per proseguire sulle colonne nella fase di somma, e arriviamo ad $n$ ossia l'elemento immediatamente prima il vettore dei termini noti. 

### Codice 

```c 
for(k = n,..., 1){
	for(j = k+1,...,n){
		d += a_kj * x_kj
	}
	x_kk = (a_kn+1 - d)/a_kk
}
```

#calcolo-numerico #teoria  