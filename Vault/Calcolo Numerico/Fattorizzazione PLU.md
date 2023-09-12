### Intuizione
Nella fattorizzazione PLU seguiamo la stessa tecnica della [[Fattorizzazione LU]] solo che in questo caso avremo una matrice aggiuntiva, $P$, che si occuperà di registrare eventuali scambi di righe o colonne. 
$P$ non è altro che una matrice identità, che ci servirà a registrare questi scambi. 
Ad esempio :
```tikz
\begin{document}


\tikzset{every picture/.style={line width=0.75pt}} %set default line width to 0.75pt        

\begin{tikzpicture}[x=0.75pt,y=0.75pt,yscale=-1,xscale=1]
%uncomment if require: \path (0,341); %set diagram left start at 0, and has height of 341

%Shape: Grid [id:dp21110706005598634] 
\draw  [draw opacity=0] (50.72,79) -- (131,79) -- (131,159.67) -- (50.72,159.67) -- cycle ; \draw   (50.72,79) -- (50.72,159.67)(70.72,79) -- (70.72,159.67)(90.72,79) -- (90.72,159.67)(110.72,79) -- (110.72,159.67)(130.72,79) -- (130.72,159.67) ; \draw   (50.72,79) -- (131,79)(50.72,99) -- (131,99)(50.72,119) -- (131,119)(50.72,139) -- (131,139)(50.72,159) -- (131,159) ; \draw    ;
%Shape: Grid [id:dp4370865609381964] 
\draw  [draw opacity=0] (183.72,79) -- (264,79) -- (264,159.67) -- (183.72,159.67) -- cycle ; \draw   (183.72,79) -- (183.72,159.67)(203.72,79) -- (203.72,159.67)(223.72,79) -- (223.72,159.67)(243.72,79) -- (243.72,159.67)(263.72,79) -- (263.72,159.67) ; \draw   (183.72,79) -- (264,79)(183.72,99) -- (264,99)(183.72,119) -- (264,119)(183.72,139) -- (264,139)(183.72,159) -- (264,159) ; \draw    ;
%Curve Lines [id:da34457252289126994] 
\draw    (43.11,108.81) .. controls (-8.41,107.16) and (18.04,89.23) .. (45.49,88.86) ;
\draw [shift={(48.48,88.89)}, rotate = 181.97] [fill={rgb, 255:red, 0; green, 0; blue, 0 }  ][line width=0.08]  [draw opacity=0] (8.93,-4.29) -- (0,0) -- (8.93,4.29) -- cycle    ;
\draw [shift={(46.48,108.89)}, rotate = 180.99] [fill={rgb, 255:red, 0; green, 0; blue, 0 }  ][line width=0.08]  [draw opacity=0] (8.93,-4.29) -- (0,0) -- (8.93,4.29) -- cycle    ;
%Curve Lines [id:da8815871403285593] 
\draw    (177.42,108.74) .. controls (122.37,104.31) and (149.34,86.59) .. (178.31,88.74) ;
\draw [shift={(181,89)}, rotate = 186.71] [fill={rgb, 255:red, 0; green, 0; blue, 0 }  ][line width=0.08]  [draw opacity=0] (8.93,-4.29) -- (0,0) -- (8.93,4.29) -- cycle    ;
\draw [shift={(181,109)}, rotate = 183.76] [fill={rgb, 255:red, 0; green, 0; blue, 0 }  ][line width=0.08]  [draw opacity=0] (8.93,-4.29) -- (0,0) -- (8.93,4.29) -- cycle    ;
%Shape: Grid [id:dp9644200461556043] 
\draw  [draw opacity=0] (391.72,76) -- (472,76) -- (472,156.67) -- (391.72,156.67) -- cycle ; \draw   (391.72,76) -- (391.72,156.67)(411.72,76) -- (411.72,156.67)(431.72,76) -- (431.72,156.67)(451.72,76) -- (451.72,156.67)(471.72,76) -- (471.72,156.67) ; \draw   (391.72,76) -- (472,76)(391.72,96) -- (472,96)(391.72,116) -- (472,116)(391.72,136) -- (472,136)(391.72,156) -- (472,156) ; \draw    ;
%Shape: Grid [id:dp014599917215453395] 
\draw  [draw opacity=0] (524.72,76) -- (605,76) -- (605,156.67) -- (524.72,156.67) -- cycle ; \draw   (524.72,76) -- (524.72,156.67)(544.72,76) -- (544.72,156.67)(564.72,76) -- (564.72,156.67)(584.72,76) -- (584.72,156.67)(604.72,76) -- (604.72,156.67) ; \draw   (524.72,76) -- (605,76)(524.72,96) -- (605,96)(524.72,116) -- (605,116)(524.72,136) -- (605,136)(524.72,156) -- (605,156) ; \draw    ;
%Straight Lines [id:da5741118719976284] 
\draw    (280,118.5) -- (342,118.5)(280,121.5) -- (342,121.5) ;
\draw [shift={(350,120)}, rotate = 180] [color={rgb, 255:red, 0; green, 0; blue, 0 }  ][line width=0.75]    (10.93,-3.29) .. controls (6.95,-1.4) and (3.31,-0.3) .. (0,0) .. controls (3.31,0.3) and (6.95,1.4) .. (10.93,3.29)   ;

% Text Node
\draw (12,122) node [anchor=north west][inner sep=0.75pt]   [align=left] {A = };
% Text Node
\draw (52.72,82) node [anchor=north west][inner sep=0.75pt]   [align=left] {2};
% Text Node
\draw (72.72,82) node [anchor=north west][inner sep=0.75pt]   [align=left] {1};
% Text Node
\draw (92.72,82) node [anchor=north west][inner sep=0.75pt]   [align=left] {2};
% Text Node
\draw (112.72,102) node [anchor=north west][inner sep=0.75pt]   [align=left] {2};
% Text Node
\draw (112.72,82) node [anchor=north west][inner sep=0.75pt]   [align=left] {4};
% Text Node
\draw (52.72,102) node [anchor=north west][inner sep=0.75pt]   [align=left] {6};
% Text Node
\draw (72.72,102) node [anchor=north west][inner sep=0.75pt]   [align=left] {2};
% Text Node
\draw (92.72,102) node [anchor=north west][inner sep=0.75pt]   [align=left] {0};
% Text Node
\draw (52.72,122) node [anchor=north west][inner sep=0.75pt]   [align=left] {2};
% Text Node
\draw (72.72,122) node [anchor=north west][inner sep=0.75pt]   [align=left] {4};
% Text Node
\draw (92.72,142) node [anchor=north west][inner sep=0.75pt]   [align=left] {3};
% Text Node
\draw (92.72,122) node [anchor=north west][inner sep=0.75pt]   [align=left] {3};
% Text Node
\draw (112.72,122) node [anchor=north west][inner sep=0.75pt]   [align=left] {5};
% Text Node
\draw (112.72,142) node [anchor=north west][inner sep=0.75pt]   [align=left] {1};
% Text Node
\draw (52.72,142) node [anchor=north west][inner sep=0.75pt]   [align=left] {7};
% Text Node
\draw (72.72,142) node [anchor=north west][inner sep=0.75pt]   [align=left] {7};
% Text Node
\draw (151,122) node [anchor=north west][inner sep=0.75pt]   [align=left] {P = };
% Text Node
\draw (185.72,82) node [anchor=north west][inner sep=0.75pt]   [align=left] {1};
% Text Node
\draw (205.72,102) node [anchor=north west][inner sep=0.75pt]   [align=left] {1};
% Text Node
\draw (225.72,122) node [anchor=north west][inner sep=0.75pt]   [align=left] {1};
% Text Node
\draw (245.72,142) node [anchor=north west][inner sep=0.75pt]   [align=left] {1};
% Text Node
\draw (366,109) node [anchor=north west][inner sep=0.75pt]   [align=left] {A = };
% Text Node
\draw (393.72,99) node [anchor=north west][inner sep=0.75pt]   [align=left] {2};
% Text Node
\draw (413.72,99) node [anchor=north west][inner sep=0.75pt]   [align=left] {1};
% Text Node
\draw (433.72,99) node [anchor=north west][inner sep=0.75pt]   [align=left] {2};
% Text Node
\draw (453.72,79) node [anchor=north west][inner sep=0.75pt]   [align=left] {2};
% Text Node
\draw (453.72,99) node [anchor=north west][inner sep=0.75pt]   [align=left] {4};
% Text Node
\draw (393.72,79) node [anchor=north west][inner sep=0.75pt]   [align=left] {6};
% Text Node
\draw (413.72,79) node [anchor=north west][inner sep=0.75pt]   [align=left] {2};
% Text Node
\draw (433.72,79) node [anchor=north west][inner sep=0.75pt]   [align=left] {0};
% Text Node
\draw (393.72,119) node [anchor=north west][inner sep=0.75pt]   [align=left] {2};
% Text Node
\draw (413.72,119) node [anchor=north west][inner sep=0.75pt]   [align=left] {4};
% Text Node
\draw (433.72,139) node [anchor=north west][inner sep=0.75pt]   [align=left] {3};
% Text Node
\draw (433.72,119) node [anchor=north west][inner sep=0.75pt]   [align=left] {3};
% Text Node
\draw (453.72,119) node [anchor=north west][inner sep=0.75pt]   [align=left] {5};
% Text Node
\draw (453.72,139) node [anchor=north west][inner sep=0.75pt]   [align=left] {1};
% Text Node
\draw (393.72,139) node [anchor=north west][inner sep=0.75pt]   [align=left] {7};
% Text Node
\draw (413.72,139) node [anchor=north west][inner sep=0.75pt]   [align=left] {7};
% Text Node
\draw (496,108) node [anchor=north west][inner sep=0.75pt]   [align=left] {P = };
% Text Node
\draw (526.72,99) node [anchor=north west][inner sep=0.75pt]   [align=left] {1};
% Text Node
\draw (546.72,79) node [anchor=north west][inner sep=0.75pt]   [align=left] {1};
% Text Node
\draw (566.72,119) node [anchor=north west][inner sep=0.75pt]   [align=left] {1};
% Text Node
\draw (586.72,139) node [anchor=north west][inner sep=0.75pt]   [align=left] {1};


\end{tikzpicture}

\end{document}
```

Con questa tecnica mettiamo a frutto l'ottimizzazione della [[Fattorizzazione]] cosi come l'ottimizzazione del [[Pivoting]]

Il calcolo del terminante in questo caso è 
$$
\det(A) = \frac{\det(L) \cdot \det U}{\det(P)} 
$$
Dove $\det(P) = (-1)^{\theta }$ con $\theta= \text{numero di scambi effettuai}$


### Formalmente


#calcolo-numerico #teoria  