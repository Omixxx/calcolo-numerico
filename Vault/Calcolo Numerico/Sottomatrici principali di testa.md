### Intuizione
E' una sottomatrice che condivide gli elementi della diagonale con gli elementi della diagonale della matrice principale
Ad esempio: 

```tikz
\begin{document}


\tikzset{every picture/.style={line width=0.75pt}} %set default line width to 0.75pt        

\begin{tikzpicture}[x=0.75pt,y=0.75pt,yscale=-1,xscale=1]
%uncomment if require: \path (0,341); %set diagram left start at 0, and has height of 341

%Shape: Grid [id:dp23465265899552734] 
\draw  [draw opacity=0] (120,114.2) -- (200.28,114.2) -- (200.28,194.87) -- (120,194.87) -- cycle ; \draw   (120,114.2) -- (120,194.87)(140,114.2) -- (140,194.87)(160,114.2) -- (160,194.87)(180,114.2) -- (180,194.87)(200,114.2) -- (200,194.87) ; \draw   (120,114.2) -- (200.28,114.2)(120,134.2) -- (200.28,134.2)(120,154.2) -- (200.28,154.2)(120,174.2) -- (200.28,174.2)(120,194.2) -- (200.28,194.2) ; \draw    ;
%Curve Lines [id:da9339570557486847] 
\draw    (180,194.2) .. controls (180.72,253.79) and (238.52,241.42) .. (249.44,232.32) ;
\draw [shift={(250.76,230.92)}, rotate = 123.69] [color={rgb, 255:red, 0; green, 0; blue, 0 }  ][line width=0.75]    (10.93,-3.29) .. controls (6.95,-1.4) and (3.31,-0.3) .. (0,0) .. controls (3.31,0.3) and (6.95,1.4) .. (10.93,3.29)   ;
%Shape: Grid [id:dp5346314142662867] 
\draw  [draw opacity=0] (268.28,182.2) -- (308.76,182.2) -- (308.76,222.92) -- (268.28,222.92) -- cycle ; \draw   (268.28,182.2) -- (268.28,222.92)(288.28,182.2) -- (288.28,222.92)(308.28,182.2) -- (308.28,222.92) ; \draw   (268.28,182.2) -- (308.76,182.2)(268.28,202.2) -- (308.76,202.2)(268.28,222.2) -- (308.76,222.2) ; \draw    ;
%Shape: Grid [id:dp9776778954610494] 
\draw  [draw opacity=0] (266.76,84.92) -- (307.24,84.92) -- (307.24,125.65) -- (266.76,125.65) -- cycle ; \draw   (266.76,84.92) -- (266.76,125.65)(286.76,84.92) -- (286.76,125.65)(306.76,84.92) -- (306.76,125.65) ; \draw   (266.76,84.92) -- (307.24,84.92)(266.76,104.92) -- (307.24,104.92)(266.76,124.92) -- (307.24,124.92) ; \draw    ;
%Curve Lines [id:da1113676345379142] 
\draw    (180,114.2) .. controls (179.77,74.93) and (233.95,73) .. (251.48,92.39) ;
\draw [shift={(252.76,93.92)}, rotate = 232.7] [color={rgb, 255:red, 0; green, 0; blue, 0 }  ][line width=0.75]    (10.93,-3.29) .. controls (6.95,-1.4) and (3.31,-0.3) .. (0,0) .. controls (3.31,0.3) and (6.95,1.4) .. (10.93,3.29)   ;

% Text Node
\draw (122,117.2) node [anchor=north west][inner sep=0.75pt]   [align=left] {2};
% Text Node
\draw (142,117.2) node [anchor=north west][inner sep=0.75pt]   [align=left] {1};
% Text Node
\draw (162,117.2) node [anchor=north west][inner sep=0.75pt]   [align=left] {1};
% Text Node
\draw (182,137.2) node [anchor=north west][inner sep=0.75pt]   [align=left] {6};
% Text Node
\draw (182,117.2) node [anchor=north west][inner sep=0.75pt]   [align=left] {4};
% Text Node
\draw (122,137.2) node [anchor=north west][inner sep=0.75pt]   [align=left] {6};
% Text Node
\draw (142,137.2) node [anchor=north west][inner sep=0.75pt]   [align=left] {2};
% Text Node
\draw (162,137.2) node [anchor=north west][inner sep=0.75pt]   [align=left] {0};
% Text Node
\draw (122,157.2) node [anchor=north west][inner sep=0.75pt]   [align=left] {2};
% Text Node
\draw (142,157.2) node [anchor=north west][inner sep=0.75pt]   [align=left] {4};
% Text Node
\draw (162,177.2) node [anchor=north west][inner sep=0.75pt]   [align=left] {3};
% Text Node
\draw (162,157.2) node [anchor=north west][inner sep=0.75pt]   [align=left] {3};
% Text Node
\draw (182,157.2) node [anchor=north west][inner sep=0.75pt]   [align=left] {5};
% Text Node
\draw (182,177.2) node [anchor=north west][inner sep=0.75pt]   [align=left] {1};
% Text Node
\draw (122,177.2) node [anchor=north west][inner sep=0.75pt]   [align=left] {7};
% Text Node
\draw (142,177.2) node [anchor=north west][inner sep=0.75pt]   [align=left] {7};
% Text Node
\draw (268.76,87.92) node [anchor=north west][inner sep=0.75pt]   [align=left] {1};
% Text Node
\draw (288.76,87.92) node [anchor=north west][inner sep=0.75pt]   [align=left] {4};
% Text Node
\draw (288.76,107.92) node [anchor=north west][inner sep=0.75pt]   [align=left] {6};
% Text Node
\draw (268.76,107.92) node [anchor=north west][inner sep=0.75pt]   [align=left] {0};
% Text Node
\draw (270.28,185.2) node [anchor=north west][inner sep=0.75pt]   [align=left] {3};
% Text Node
\draw (290.28,205.2) node [anchor=north west][inner sep=0.75pt]   [align=left] {1};
% Text Node
\draw (270.28,205.2) node [anchor=north west][inner sep=0.75pt]   [align=left] {3};
% Text Node
\draw (290.28,185.2) node [anchor=north west][inner sep=0.75pt]   [align=left] {5};
% Text Node
\draw (317,96) node [anchor=north west][inner sep=0.75pt]   [align=left] {NON è una sottomatrice principale di testa di $\displaystyle A$};
% Text Node
\draw (319,192) node [anchor=north west][inner sep=0.75pt]   [align=left] {E' una sottomatrice principale di testa di $\displaystyle A$};
% Text Node
\draw (79,142.4) node [anchor=north west][inner sep=0.75pt]    {$A\ =$};


\end{tikzpicture}

\end{document}```


### Formalmente


#calcolo-numerico #teoria #⏳ 