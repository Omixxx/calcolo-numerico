### Intuizione

Questa tecnica consiste nel trasformare una matrice in una matrice triangolare (ossia una matrice avente tutti gli elementi sopra (o anche sotto) la diagonale pari a $\hspace{0pt}0$)

```tikz

\begin{document}
\tikzset{every picture/.style={line width=0.75pt}} %set default line width to 0.75pt        

\begin{tikzpicture}[x=0.75pt,y=0.75pt,yscale=-1,xscale=1]
%uncomment if require: \path (0,341); %set diagram left start at 0, and has height of 341

%Shape: Grid [id:dp7570509389716] 
\draw  [draw opacity=0] (147,65) -- (227.22,65) -- (227.22,145.33) -- (147,145.33) -- cycle ; \draw   (147,65) -- (147,145.33)(167,65) -- (167,145.33)(187,65) -- (187,145.33)(207,65) -- (207,145.33)(227,65) -- (227,145.33) ; \draw   (147,65) -- (227.22,65)(147,85) -- (227.22,85)(147,105) -- (227.22,105)(147,125) -- (227.22,125)(147,145) -- (227.22,145) ; \draw    ;
%Shape: Grid [id:dp7227428012852071] 
\draw  [draw opacity=0] (376,64) -- (456.22,64) -- (456.22,144.33) -- (376,144.33) -- cycle ; \draw   (376,64) -- (376,144.33)(396,64) -- (396,144.33)(416,64) -- (416,144.33)(436,64) -- (436,144.33)(456,64) -- (456,144.33) ; \draw   (376,64) -- (456.22,64)(376,84) -- (456.22,84)(376,104) -- (456.22,104)(376,124) -- (456.22,124)(376,144) -- (456.22,144) ; \draw    ;
%Straight Lines [id:da9075672417523477] 
\draw    (247,104) -- (357.04,104.04) ;
\draw [shift={(359.04,104.04)}, rotate = 180.02] [color={rgb, 255:red, 0; green, 0; blue, 0 }  ][line width=0.75]    (10.93,-3.29) .. controls (6.95,-1.4) and (3.31,-0.3) .. (0,0) .. controls (3.31,0.3) and (6.95,1.4) .. (10.93,3.29)   ;

% Text Node
\draw (149,68) node [anchor=north west][inner sep=0.75pt]   [align=left] {2};
% Text Node
\draw (169,68) node [anchor=north west][inner sep=0.75pt]   [align=left] {5};
% Text Node
\draw (189,68) node [anchor=north west][inner sep=0.75pt]   [align=left] {6};
% Text Node
\draw (209,68) node [anchor=north west][inner sep=0.75pt]   [align=left] {7};
% Text Node
\draw (149,88) node [anchor=north west][inner sep=0.75pt]   [align=left] {1};
% Text Node
\draw (169,108) node [anchor=north west][inner sep=0.75pt]   [align=left] {4};
% Text Node
\draw (189,128) node [anchor=north west][inner sep=0.75pt]   [align=left] {5};
% Text Node
\draw (189,88) node [anchor=north west][inner sep=0.75pt]   [align=left] {3};
% Text Node
\draw (209,108) node [anchor=north west][inner sep=0.75pt]   [align=left] {0};
% Text Node
\draw (169,88) node [anchor=north west][inner sep=0.75pt]   [align=left] {3};
% Text Node
\draw (189,108) node [anchor=north west][inner sep=0.75pt]   [align=left] {6};
% Text Node
\draw (209,128) node [anchor=north west][inner sep=0.75pt]   [align=left] {2};
% Text Node
\draw (149,108) node [anchor=north west][inner sep=0.75pt]   [align=left] {5};
% Text Node
\draw (149,128) node [anchor=north west][inner sep=0.75pt]   [align=left] {3};
% Text Node
\draw (169,128) node [anchor=north west][inner sep=0.75pt]   [align=left] {4};
% Text Node
\draw (209,88) node [anchor=north west][inner sep=0.75pt]   [align=left] {11};
% Text Node
\draw (378,67) node [anchor=north west][inner sep=0.75pt]   [align=left] {2};
% Text Node
\draw (398,67) node [anchor=north west][inner sep=0.75pt]   [align=left] {5};
% Text Node
\draw (418,67) node [anchor=north west][inner sep=0.75pt]   [align=left] {6};
% Text Node
\draw (438,67) node [anchor=north west][inner sep=0.75pt]   [align=left] {7};
% Text Node
\draw (378,87) node [anchor=north west][inner sep=0.75pt]   [align=left] {\textcolor[rgb]{0.82,0.01,0.11}{0}};
% Text Node
\draw (398,107) node [anchor=north west][inner sep=0.75pt]   [align=left] {\textcolor[rgb]{0.82,0.01,0.11}{0}};
% Text Node
\draw (418,127) node [anchor=north west][inner sep=0.75pt]   [align=left] {\textcolor[rgb]{0.82,0.01,0.11}{0}};
% Text Node
\draw (418,87) node [anchor=north west][inner sep=0.75pt]   [align=left] {3};
% Text Node
\draw (438,107) node [anchor=north west][inner sep=0.75pt]   [align=left] {0};
% Text Node
\draw (398,87) node [anchor=north west][inner sep=0.75pt]   [align=left] {3};
% Text Node
\draw (419,107) node [anchor=north west][inner sep=0.75pt]   [align=left] {6};
% Text Node
\draw (438,127) node [anchor=north west][inner sep=0.75pt]   [align=left] {2};
% Text Node
\draw (378,107) node [anchor=north west][inner sep=0.75pt]   [align=left] {\textcolor[rgb]{0.82,0.01,0.11}{0}};
% Text Node
\draw (378,127) node [anchor=north west][inner sep=0.75pt]   [align=left] {\textcolor[rgb]{0.82,0.01,0.11}{0}};
% Text Node
\draw (398,127) node [anchor=north west][inner sep=0.75pt]   [align=left] {\textcolor[rgb]{0.82,0.01,0.11}{0}};
% Text Node
\draw (438,87) node [anchor=north west][inner sep=0.75pt]   [align=left] {11};


\end{tikzpicture}
\end{document}
```

Per ottenere quanto sopra indicato, ciò che dovremmo effettivamente fare è, per ogni colonna, rendere tutti gli elementi sotto la diagonale pari a $\hspace{0pt}0$, quindi dobbiamo sistematicamente fare operazioni tra righe in modo da rendere $\hspace{0pt}0$ l'elemento di nostra interesse. 
Prendiamo quindi l'esempio di sopra, e cerchiamo di rendere l'$\hspace{0pt}1$ sotto il $\hspace{0pt}2$ uno $\hspace{0pt}0$. 
Per fare ciò dobbiamo sottrarre la alla seconda riga la prima moltiplicata per $\frac{1}{2}$ 
Quindi $R_{2} = R_{2}-\frac{1}{2}R_{1}$ e otteniamo così 
```tikz
\begin{document}


\tikzset{every picture/.style={line width=0.75pt}} %set default line width to 0.75pt        

\begin{tikzpicture}[x=0.75pt,y=0.75pt,yscale=-1,xscale=1]
%uncomment if require: \path (0,341); %set diagram left start at 0, and has height of 341

%Shape: Grid [id:dp7570509389716] 
\draw  [draw opacity=0] (268,70) -- (348.22,70) -- (348.22,150.33) -- (268,150.33) -- cycle ; \draw   (268,70) -- (268,150.33)(288,70) -- (288,150.33)(308,70) -- (308,150.33)(328,70) -- (328,150.33)(348,70) -- (348,150.33) ; \draw   (268,70) -- (348.22,70)(268,90) -- (348.22,90)(268,110) -- (348.22,110)(268,130) -- (348.22,130)(268,150) -- (348.22,150) ; \draw    ;

% Text Node
\draw (270,73) node [anchor=north west][inner sep=0.75pt]   [align=left] {2};
% Text Node
\draw (290,73) node [anchor=north west][inner sep=0.75pt]   [align=left] {5};
% Text Node
\draw (310,73) node [anchor=north west][inner sep=0.75pt]   [align=left] {6};
% Text Node
\draw (330,73) node [anchor=north west][inner sep=0.75pt]   [align=left] {7};
% Text Node
\draw (270,93) node [anchor=north west][inner sep=0.75pt]   [align=left] {\textcolor[rgb]{0.82,0.01,0.11}{0}};
% Text Node
\draw (290,113) node [anchor=north west][inner sep=0.75pt]   [align=left] {4};
% Text Node
\draw (310,133) node [anchor=north west][inner sep=0.75pt]   [align=left] {5};
% Text Node
\draw (310,92) node [anchor=north west][inner sep=0.75pt]   [align=left] {0};
% Text Node
\draw (330,113) node [anchor=north west][inner sep=0.75pt]   [align=left] {0};
% Text Node
\draw (288,94) node [anchor=north west][inner sep=0.75pt]  [font=\footnotesize] [align=left] {0.5};
% Text Node
\draw (310,113) node [anchor=north west][inner sep=0.75pt]   [align=left] {6};
% Text Node
\draw (330,133) node [anchor=north west][inner sep=0.75pt]   [align=left] {2};
% Text Node
\draw (270,113) node [anchor=north west][inner sep=0.75pt]   [align=left] {5};
% Text Node
\draw (270,133) node [anchor=north west][inner sep=0.75pt]   [align=left] {3};
% Text Node
\draw (290,133) node [anchor=north west][inner sep=0.75pt]   [align=left] {4};
% Text Node
\draw (328.1,93.78) node [anchor=north west][inner sep=0.75pt]  [font=\footnotesize,rotate=-1.1,xslant=-0.01] [align=left] {7.5};


\end{tikzpicture}

\end{document}

```
Per il $\hspace{0pt}5$ ? Facciamo essenzialmente la stessa cosa. 
Il pattern è dunque il seguente: 

1. Cerchiamo il moltiplicatore(l'$\frac{1}{2}$ di prima per capirci) che è pari a l'elemento-da-rendere-zero / elemento-pivot-della-colonna 
2. Effettuiamo la sottrazione tra righe utilizzando il moltiplicatore prima calcolato
3. Ripetiamo il processo fino ad esaurimento degli elementi della colonna 
4. Ripetiamo, fino a raggiungere l'$n$-esima colonna 
### Formalmente
$$
a_{ij}^{(k)}=a_{ij}^{(k-1)}-\frac{a_{ik}^{(k-1)}}{a_{kk}^{(k-1)}}a_{kj}^{(k-1)}\quad i=k+1,...,n\quad j=k+1,...,n+1
$$
Quindi il nuovo elemento sulla riga $a_{ij}^{(k)}$ è dato dall'operazione di sottrazione tra lo stesso $a_{ij}^{(k-1)}$ ($(k-1)$ fa riferimento all'iterata dell'iterata precedente, ma alla fine è lo stesso valore) e il moltiplicatore $\frac{a_{ik}^{(k-1)}}{a_{kk}^{(k-1)}}$ per l'elemento della riga pivot (che è essenzialmente la riga dell'elemento in diagonale) $a_{kj}^{(k-1)}$  

Molto semplice.
Cerchiamo ora di capire meglio i vari pezzettini 

- $a_{ij}^{k}$ è il nuovo elemento, e su questo non ci piove. 

- $a_{ij}^{(k-1)}$ è l'elemento corrente della riga. Ricordiamo che l'operazione di sottrazione avviene per tutta la riga, quindi questo valore ci indicherà tutti gli elementi della data riga che riceverà la sottrazione. (ovviamente, come già sappiamo, uno di questi diventerà $\hspace{0pt}0$).

- $a_{ik}^{(k-1)}$ questo è l'elemento che vogliamo diventi $\hspace{0pt}0$. Se facciamo caso all'esempio di prima, nella sezione *Intuizione* possiamo renderci conto che questo non cambia mai, ecco perché ha degli indici diversi. A differenza di $a_{ij}^{k-1}$ sappiamo che questo non cambierà mai, Il moltiplicatore difatti rimane sempre lo stesso durante tutto il processo di sottrazione della riga. Qui l'indice $k$ ci indica la colonna dell'elemento che vogliamo diventi $0$ ossia la colonna pivot.  la $i$ invece ci indica che l'operazione continuerà fino alla fine della colonna. Infatti nell'esempio di prima, per la seconda riga il nostro moltiplicatore era $\frac{1}{2}$ e così è stato per tutta l'operazione sulla seconda riga, ma poi siamo andati avanti con la terza riga e il moltiplicatore è diventato $\frac{5}{2}$  
  Notiamo come stiamo andando man mano più in fondo fino al raggiungimento della fine della colonna. 

- $a_{kk}^{(k-1)}$ questo elemento è l'elemento pivot, ossia l'elemento sulla diagonale. Questo elemento rimane lo stesso per tutta la trasformazione della colonna, difatti come abbiamo visto prima, cambia solo l'elemento al numeratore, non al denominatore. 
  Poi una volta che si cambia colonna allora cambia anche il denominatore. 

ora diamo attenzione agli indici:

$i$ e $j$ sappiamo che partono da $k+1$ perché ci interessa agire sulle righe sotto l'elemento pivot $k$ e sulle colonne dopo l'elemento pivot $k$ 

```tikz
\begin{document}

\tikzset{every picture/.style={line width=0.75pt}} %set default line width to 0.75pt        

\begin{tikzpicture}[x=0.75pt,y=0.75pt,yscale=-1,xscale=1]
%uncomment if require: \path (0,300); %set diagram left start at 0, and has height of 300

%Shape: Brace [id:dp35434774570686534] 
\draw   (360.26,119.9) .. controls (355.59,119.9) and (353.26,122.23) .. (353.26,126.9) -- (353.26,130.73) .. controls (353.26,137.4) and (350.93,140.73) .. (346.26,140.73) .. controls (350.93,140.73) and (353.26,144.06) .. (353.26,150.73)(353.26,147.73) -- (353.26,152.9) .. controls (353.26,157.57) and (355.59,159.9) .. (360.26,159.9) ;
%Shape: Grid [id:dp7824683229751401] 
\draw  [draw opacity=0] (360,80) -- (440.03,80) -- (440.03,160.57) -- (360,160.57) -- cycle ; \draw   (360,80) -- (360,160.57)(380,80) -- (380,160.57)(400,80) -- (400,160.57)(420,80) -- (420,160.57)(440,80) -- (440,160.57) ; \draw   (360,80) -- (440.03,80)(360,100) -- (440.03,100)(360,120) -- (440.03,120)(360,140) -- (440.03,140)(360,160) -- (440.03,160) ; \draw    ;
%Shape: Square [id:dp3696491974453222] 
\draw  [color={rgb, 255:red, 0; green, 0; blue, 0 }  ,draw opacity=0 ][fill={rgb, 255:red, 74; green, 144; blue, 226 }  ,fill opacity=1 ] (401.03,121.19) -- (419,121.19) -- (419,139.16) -- (401.03,139.16) -- cycle ;
%Shape: Square [id:dp5792315794166343] 
\draw  [color={rgb, 255:red, 0; green, 0; blue, 0 }  ,draw opacity=0 ][fill={rgb, 255:red, 74; green, 144; blue, 226 }  ,fill opacity=1 ] (421.03,141.19) -- (439,141.19) -- (439,159.16) -- (421.03,159.16) -- cycle ;
%Shape: Square [id:dp29925797749828953] 
\draw  [color={rgb, 255:red, 0; green, 0; blue, 0 }  ,draw opacity=0 ][fill={rgb, 255:red, 74; green, 144; blue, 226 }  ,fill opacity=1 ] (401.03,141.19) -- (419,141.19) -- (419,159.16) -- (401.03,159.16) -- cycle ;
%Shape: Square [id:dp9802091213748065] 
\draw  [color={rgb, 255:red, 0; green, 0; blue, 0 }  ,draw opacity=0 ][fill={rgb, 255:red, 74; green, 144; blue, 226 }  ,fill opacity=1 ] (421.03,121.19) -- (439,121.19) -- (439,139.16) -- (421.03,139.16) -- cycle ;
%Shape: Brace [id:dp4692927143907737] 
\draw   (400.14,159.57) .. controls (400.14,164.24) and (402.47,166.57) .. (407.14,166.57) -- (410.81,166.57) .. controls (417.48,166.57) and (420.81,168.9) .. (420.81,173.57) .. controls (420.81,168.9) and (424.14,166.57) .. (430.81,166.57)(427.81,166.57) -- (433.14,166.57) .. controls (437.81,166.57) and (440.14,164.24) .. (440.14,159.57) ;

% Text Node
\draw (271,132.4) node [anchor=north west][inner sep=0.75pt]    {$i\ =\ k+1$};
% Text Node
\draw (387,182.4) node [anchor=north west][inner sep=0.75pt]    {$j\ =\ k+1$};
% Text Node
\draw (382,103.4) node [anchor=north west][inner sep=0.75pt]    {$\textcolor[rgb]{0.82,0.01,0.11}{k}$};


\end{tikzpicture}
\end{document}```

$j$ parte da $k+1$ e non da $k$  perché sappiamo già che gli elementi su quella colonna $k$ saranno necessariamente $\hspace{0pt}0$ quindi risparmiamo operazioni.

Inoltre $j$ andrà fino a $n+1$ perché? 
Perché le operazioni si fanno anche sul vettore dei termini noti $b$ quindi, la matrice che abbiamo visto di esempio prima avrà un'altra colonna per includere il vettore $b$ 



### Codice 
```c
det = 1
for(k = 1,..,n) {
	det = det * a_kk //ci calcoliamo il determinante "on the fly"
	for(i = k+1,..,n){
		moltiplicatore = a_ik/a_kk 
		for(j = k+1,..,n+1){
			a_ij = a_ij - moltiplicatore * a_kj
		}
	}
}
```

Ricordiamo che è possibile fare il calcolo del determinante tramite l'operazione di prodotto tra gli elementi della diagonale solo se la matrice è una matrice triangolare. Siccome sappiamo che al termine dell'operazione lo sarà, e siccome sappiamo anche che gli elementi sulla diagonale non cambieranno facciamo questo prodotto nel mentre che la trasformiamo 😀

#calcolo-numerico #teoria  