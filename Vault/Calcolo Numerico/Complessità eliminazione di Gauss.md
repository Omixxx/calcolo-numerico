### Intuizione
Per mostrare quanto ci costa usare questo metodo basterebbe prendere il codice che abbiamo analizzato nel [[Eliminazione di Gauss]] e noteremmo immediatamente i tre cicli. 
Questo già da se dovrebbe bastarci per dire che la complessità è cubica. 

Tuttavia se volessimo visualizzarlo graficamente ci basterebbe notare che per mettere una colonna di zeri dovremmo necessariamente permutare la sotto matrice che si ottiene togliendo la prima riga, quella pivot, e la prima colonna 

```tikz 
\begin{document}


\tikzset{every picture/.style={line width=0.75pt}} %set default line width to 0.75pt        

\begin{tikzpicture}[x=0.75pt,y=0.75pt,yscale=-1,xscale=1]
%uncomment if require: \path (0,300); %set diagram left start at 0, and has height of 300

%Shape: Grid [id:dp6194789530837899] 
\draw  [draw opacity=0] (100,99.59) -- (180.28,99.59) -- (180.28,180.26) -- (100,180.26) -- cycle ; \draw   (100,99.59) -- (100,180.26)(120,99.59) -- (120,180.26)(140,99.59) -- (140,180.26)(160,99.59) -- (160,180.26)(180,99.59) -- (180,180.26) ; \draw   (100,99.59) -- (180.28,99.59)(100,119.59) -- (180.28,119.59)(100,139.59) -- (180.28,139.59)(100,159.59) -- (180.28,159.59)(100,179.59) -- (180.28,179.59) ; \draw    ;
%Shape: Rectangle [id:dp678061111645256] 
\draw  [color={rgb, 255:red, 255; green, 255; blue, 255 }  ,draw opacity=0 ][fill={rgb, 255:red, 74; green, 144; blue, 226 }  ,fill opacity=1 ][line width=1.5]  (142,142.31) -- (157.73,142.31) -- (157.73,157.23) -- (142,157.23) -- cycle ;
%Shape: Rectangle [id:dp05037388514199148] 
\draw  [color={rgb, 255:red, 255; green, 255; blue, 255 }  ,draw opacity=0 ][fill={rgb, 255:red, 74; green, 144; blue, 226 }  ,fill opacity=1 ][line width=1.5]  (162.73,142.31) -- (177.73,142.31) -- (177.73,157.31) -- (162.73,157.31) -- cycle ;
%Shape: Rectangle [id:dp8137153411433045] 
\draw  [color={rgb, 255:red, 255; green, 255; blue, 255 }  ,draw opacity=0 ][fill={rgb, 255:red, 74; green, 144; blue, 226 }  ,fill opacity=1 ][line width=1.5]  (162,162.31) -- (177.73,162.31) -- (177.73,177.23) -- (162,177.23) -- cycle ;
%Shape: Rectangle [id:dp7054283783328124] 
\draw  [color={rgb, 255:red, 255; green, 255; blue, 255 }  ,draw opacity=0 ][fill={rgb, 255:red, 74; green, 144; blue, 226 }  ,fill opacity=1 ][line width=1.5]  (122.73,122.31) -- (137.73,122.31) -- (137.73,137.31) -- (122.73,137.31) -- cycle ;
%Shape: Rectangle [id:dp2506287161184564] 
\draw  [color={rgb, 255:red, 255; green, 255; blue, 255 }  ,draw opacity=0 ][fill={rgb, 255:red, 74; green, 144; blue, 226 }  ,fill opacity=1 ][line width=1.5]  (142.73,122.31) -- (157.73,122.31) -- (157.73,137.31) -- (142.73,137.31) -- cycle ;
%Shape: Rectangle [id:dp7676399454881686] 
\draw  [color={rgb, 255:red, 255; green, 255; blue, 255 }  ,draw opacity=0 ][fill={rgb, 255:red, 74; green, 144; blue, 226 }  ,fill opacity=1 ][line width=1.5]  (162.73,122.31) -- (177.73,122.31) -- (177.73,137.31) -- (162.73,137.31) -- cycle ;
%Shape: Rectangle [id:dp7315967663315421] 
\draw  [color={rgb, 255:red, 255; green, 255; blue, 255 }  ,draw opacity=0 ][fill={rgb, 255:red, 74; green, 144; blue, 226 }  ,fill opacity=1 ][line width=1.5]  (122.73,142.31) -- (137.73,142.31) -- (137.73,157.31) -- (122.73,157.31) -- cycle ;
%Shape: Rectangle [id:dp867529797251537] 
\draw  [color={rgb, 255:red, 255; green, 255; blue, 255 }  ,draw opacity=0 ][fill={rgb, 255:red, 74; green, 144; blue, 226 }  ,fill opacity=1 ][line width=1.5]  (142.73,162.31) -- (157.73,162.31) -- (157.73,177.31) -- (142.73,177.31) -- cycle ;
%Shape: Rectangle [id:dp9604369972783497] 
\draw  [color={rgb, 255:red, 255; green, 255; blue, 255 }  ,draw opacity=0 ][fill={rgb, 255:red, 74; green, 144; blue, 226 }  ,fill opacity=1 ][line width=1.5]  (122.73,162.31) -- (137.73,162.31) -- (137.73,177.31) -- (122.73,177.31) -- cycle ;
%Shape: Grid [id:dp7976463457049678] 
\draw  [draw opacity=0] (323,101) -- (403.28,101) -- (403.28,181.67) -- (323,181.67) -- cycle ; \draw   (323,101) -- (323,181.67)(343,101) -- (343,181.67)(363,101) -- (363,181.67)(383,101) -- (383,181.67)(403,101) -- (403,181.67) ; \draw   (323,101) -- (403.28,101)(323,121) -- (403.28,121)(323,141) -- (403.28,141)(323,161) -- (403.28,161)(323,181) -- (403.28,181) ; \draw    ;
%Shape: Rectangle [id:dp5708012269382281] 
\draw  [color={rgb, 255:red, 255; green, 255; blue, 255 }  ,draw opacity=0 ][fill={rgb, 255:red, 74; green, 144; blue, 226 }  ,fill opacity=1 ][line width=1.5]  (365,143.72) -- (380.73,143.72) -- (380.73,158.64) -- (365,158.64) -- cycle ;
%Shape: Rectangle [id:dp8251651662885462] 
\draw  [color={rgb, 255:red, 255; green, 255; blue, 255 }  ,draw opacity=0 ][fill={rgb, 255:red, 74; green, 144; blue, 226 }  ,fill opacity=1 ][line width=1.5]  (385.73,143.72) -- (400.73,143.72) -- (400.73,158.72) -- (385.73,158.72) -- cycle ;
%Shape: Rectangle [id:dp12957493970670853] 
\draw  [color={rgb, 255:red, 255; green, 255; blue, 255 }  ,draw opacity=0 ][fill={rgb, 255:red, 74; green, 144; blue, 226 }  ,fill opacity=1 ][line width=1.5]  (385,163.72) -- (400.73,163.72) -- (400.73,178.64) -- (385,178.64) -- cycle ;
%Shape: Rectangle [id:dp21329238378110071] 
\draw  [color={rgb, 255:red, 255; green, 255; blue, 255 }  ,draw opacity=0 ][fill={rgb, 255:red, 74; green, 144; blue, 226 }  ,fill opacity=1 ][line width=1.5]  (365.73,163.72) -- (380.73,163.72) -- (380.73,178.72) -- (365.73,178.72) -- cycle ;
%Shape: Grid [id:dp3564160429843799] 
\draw  [draw opacity=0] (543,101) -- (623.28,101) -- (623.28,181.67) -- (543,181.67) -- cycle ; \draw   (543,101) -- (543,181.67)(563,101) -- (563,181.67)(583,101) -- (583,181.67)(603,101) -- (603,181.67)(623,101) -- (623,181.67) ; \draw   (543,101) -- (623.28,101)(543,121) -- (623.28,121)(543,141) -- (623.28,141)(543,161) -- (623.28,161)(543,181) -- (623.28,181) ; \draw    ;
%Shape: Rectangle [id:dp2751981436230242] 
\draw  [color={rgb, 255:red, 255; green, 255; blue, 255 }  ,draw opacity=0 ][fill={rgb, 255:red, 74; green, 144; blue, 226 }  ,fill opacity=1 ][line width=1.5]  (605,163.72) -- (620.73,163.72) -- (620.73,178.64) -- (605,178.64) -- cycle ;
%Straight Lines [id:da20649424654856907] 
\draw    (210,138.5) -- (282,138.5)(210,141.5) -- (282,141.5) ;
\draw [shift={(290,140)}, rotate = 180] [color={rgb, 255:red, 0; green, 0; blue, 0 }  ][line width=0.75]    (10.93,-3.29) .. controls (6.95,-1.4) and (3.31,-0.3) .. (0,0) .. controls (3.31,0.3) and (6.95,1.4) .. (10.93,3.29)   ;
%Straight Lines [id:da6268977579682169] 
\draw    (440,138.5) -- (512,138.5)(440,141.5) -- (512,141.5) ;
\draw [shift={(520,140)}, rotate = 180] [color={rgb, 255:red, 0; green, 0; blue, 0 }  ][line width=0.75]    (10.93,-3.29) .. controls (6.95,-1.4) and (3.31,-0.3) .. (0,0) .. controls (3.31,0.3) and (6.95,1.4) .. (10.93,3.29)   ;

% Text Node
\draw (102,122.59) node [anchor=north west][inner sep=0.75pt]   [align=left] {0};
% Text Node
\draw (102,142.59) node [anchor=north west][inner sep=0.75pt]   [align=left] {0};
% Text Node
\draw (102,162.59) node [anchor=north west][inner sep=0.75pt]   [align=left] {0};
% Text Node
\draw (325,124) node [anchor=north west][inner sep=0.75pt]   [align=left] {0};
% Text Node
\draw (325,144) node [anchor=north west][inner sep=0.75pt]   [align=left] {0};
% Text Node
\draw (325,164) node [anchor=north west][inner sep=0.75pt]   [align=left] {0};
% Text Node
\draw (345,144) node [anchor=north west][inner sep=0.75pt]   [align=left] {0};
% Text Node
\draw (345,164) node [anchor=north west][inner sep=0.75pt]   [align=left] {0};
% Text Node
\draw (545,124) node [anchor=north west][inner sep=0.75pt]   [align=left] {0};
% Text Node
\draw (545,144) node [anchor=north west][inner sep=0.75pt]   [align=left] {0};
% Text Node
\draw (545,164) node [anchor=north west][inner sep=0.75pt]   [align=left] {0};
% Text Node
\draw (565,144) node [anchor=north west][inner sep=0.75pt]   [align=left] {0};
% Text Node
\draw (565,164) node [anchor=north west][inner sep=0.75pt]   [align=left] {0};
% Text Node
\draw (585,164) node [anchor=north west][inner sep=0.75pt]   [align=left] {0};


\end{tikzpicture}

\end{document}
```

Quindi dobbiamo fare $n$ volte $(n-i)(n-i)$ per $i = 1\dots n$ 
Ossia $\mathcal{O}(n^{3})$ 
### Formalmente
$$
\begin{aligned}
&\sum_{k=1}^{n-1}2(n-k)^2+(n-k)=\sum_{k=1}^{n-1}2k^2+k=2\sum_{k=1}^{n-1}k^2+\sum_{k=1}^{n-1}k=\\ 
&=2\cdot\frac16n(n-1)(2n)(2n-1)+\frac{n(n-1)}2=\frac23n^3+\mathcal{O}(n^2)\end{aligned}
$$

Cerchiamo ora di capire perché succede questo macello. 
Allora partiamo dal fatto che dobbiamo, prima della permutazione di una riga, calcolare il moltiplicatore che ci permetterà di ottenere il magico $0$ 

Il calcolo di $m$ non è complesso, ma il il fatto che dobbiamo fare $R_{i} - m \cdot R_{k}$ significa che dobbiamo prima moltiplicare e poi sottrarre, quindi dobbiamo fare $2$ volte $(n-i)$ per ottenere una riga, di conseguenza, per permutare tutta una sotto matrice, dobbiamo fare questo gioco $(n-i)$  volte
Cosi si spiega il $2(n-i)^{2}$ 

Avevamo detto che il calcolo di $m$ non è complesso, tuttavia, per correttezza, lo dobbiamo aggiungere al calderone, difatti $m$ lo calcoliamo $(n-1)$ volte.  

$$
\sum_{i=1}^{n-1}2(n-i)^{2} + (n-i) 
$$
E' quindi è spiegata la prima parte. 
Se ora sostituiamo $n-i$ con $k$ otteniamo 
$$
\sum_{k=1}^{n-1}2k^{2} + k 
$$
Spezziamo adesso il tutto per ottenere 
$$
2\sum_{k=1}^{n-1}k^{2} + \sum_{k=1}^{n-1}k
$$
Possiamo ora usare le relazioni note [[Sommatoria di un quadrato]] e [[Sommatoria di k]] e sostituire, ma non ha senso farlo perché, sempre in base alle relazioni, basta notare che $\sum_{k=1}^{n-q}k^{2}$ è chiaramente cubica.
E' quindi spiegato $\mathcal{O}(n^{3})$ 

#calcolo-numerico #teoria  