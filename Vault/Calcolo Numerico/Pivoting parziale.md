### Intuizione
Modifichiamo la matrice sulla quale dobbiamo applicare il [[Metodo di Gauss Naive]] in modo tale da ottenere come elemento pivot l'elemento più grande della colonna. 
Per fare questo ovviamente effettuiamo uno scambio di riga. 

```tikz
\begin{document}


\tikzset{every picture/.style={line width=0.75pt}} %set default line width to 0.75pt        

\begin{tikzpicture}[x=0.75pt,y=0.75pt,yscale=-1,xscale=1]
%uncomment if require: \path (0,300); %set diagram left start at 0, and has height of 300

%Shape: Grid [id:dp5193617948002267] 
\draw  [draw opacity=0] (100,99.59) -- (180.28,99.59) -- (180.28,180.26) -- (100,180.26) -- cycle ; \draw   (100,99.59) -- (100,180.26)(120,99.59) -- (120,180.26)(140,99.59) -- (140,180.26)(160,99.59) -- (160,180.26)(180,99.59) -- (180,180.26) ; \draw   (100,99.59) -- (180.28,99.59)(100,119.59) -- (180.28,119.59)(100,139.59) -- (180.28,139.59)(100,159.59) -- (180.28,159.59)(100,179.59) -- (180.28,179.59) ; \draw    ;
%Shape: Rectangle [id:dp03383866405725344] 
\draw  [color={rgb, 255:red, 255; green, 255; blue, 255 }  ,draw opacity=0 ][fill={rgb, 255:red, 74; green, 144; blue, 226 }  ,fill opacity=1 ][line width=1.5]  (142,142.31) -- (157.73,142.31) -- (157.73,157.23) -- (142,157.23) -- cycle ;
%Shape: Rectangle [id:dp9448857892876763] 
\draw  [color={rgb, 255:red, 255; green, 255; blue, 255 }  ,draw opacity=0 ][fill={rgb, 255:red, 74; green, 144; blue, 226 }  ,fill opacity=1 ][line width=1.5]  (162.73,142.31) -- (177.73,142.31) -- (177.73,157.31) -- (162.73,157.31) -- cycle ;
%Shape: Rectangle [id:dp21873567192754284] 
\draw  [color={rgb, 255:red, 255; green, 255; blue, 255 }  ,draw opacity=0 ][fill={rgb, 255:red, 74; green, 144; blue, 226 }  ,fill opacity=1 ][line width=1.5]  (162,162.31) -- (177.73,162.31) -- (177.73,177.23) -- (162,177.23) -- cycle ;
%Shape: Rectangle [id:dp8271186452573736] 
\draw  [color={rgb, 255:red, 255; green, 255; blue, 255 }  ,draw opacity=0 ][fill={rgb, 255:red, 74; green, 144; blue, 226 }  ,fill opacity=1 ][line width=1.5]  (122.73,122.31) -- (137.73,122.31) -- (137.73,137.31) -- (122.73,137.31) -- cycle ;
%Shape: Rectangle [id:dp1630695825435582] 
\draw  [color={rgb, 255:red, 255; green, 255; blue, 255 }  ,draw opacity=0 ][fill={rgb, 255:red, 74; green, 144; blue, 226 }  ,fill opacity=1 ][line width=1.5]  (142.73,122.31) -- (157.73,122.31) -- (157.73,137.31) -- (142.73,137.31) -- cycle ;
%Shape: Rectangle [id:dp08690427814104407] 
\draw  [color={rgb, 255:red, 255; green, 255; blue, 255 }  ,draw opacity=0 ][fill={rgb, 255:red, 74; green, 144; blue, 226 }  ,fill opacity=1 ][line width=1.5]  (162.73,122.31) -- (177.73,122.31) -- (177.73,137.31) -- (162.73,137.31) -- cycle ;
%Shape: Rectangle [id:dp21743345640437584] 
\draw  [color={rgb, 255:red, 255; green, 255; blue, 255 }  ,draw opacity=0 ][fill={rgb, 255:red, 74; green, 144; blue, 226 }  ,fill opacity=1 ][line width=1.5]  (122.73,142.31) -- (137.73,142.31) -- (137.73,157.31) -- (122.73,157.31) -- cycle ;
%Shape: Rectangle [id:dp5408526267340388] 
\draw  [color={rgb, 255:red, 255; green, 255; blue, 255 }  ,draw opacity=0 ][fill={rgb, 255:red, 74; green, 144; blue, 226 }  ,fill opacity=1 ][line width=1.5]  (142.73,162.31) -- (157.73,162.31) -- (157.73,177.31) -- (142.73,177.31) -- cycle ;
%Shape: Rectangle [id:dp8781516985368056] 
\draw  [color={rgb, 255:red, 255; green, 255; blue, 255 }  ,draw opacity=0 ][fill={rgb, 255:red, 74; green, 144; blue, 226 }  ,fill opacity=1 ][line width=1.5]  (122.73,162.31) -- (137.73,162.31) -- (137.73,177.31) -- (122.73,177.31) -- cycle ;
%Shape: Rectangle [id:dp7593268421166448] 
\draw  [color={rgb, 255:red, 255; green, 255; blue, 255 }  ,draw opacity=0 ][fill={rgb, 255:red, 74; green, 144; blue, 226 }  ,fill opacity=1 ][line width=1.5]  (123,102.59) -- (138,102.59) -- (138,117.59) -- (123,117.59) -- cycle ;
%Shape: Rectangle [id:dp717888491163601] 
\draw  [color={rgb, 255:red, 255; green, 255; blue, 255 }  ,draw opacity=0 ][fill={rgb, 255:red, 74; green, 144; blue, 226 }  ,fill opacity=1 ][line width=1.5]  (143,102.59) -- (158,102.59) -- (158,117.59) -- (143,117.59) -- cycle ;
%Shape: Rectangle [id:dp8323114263885667] 
\draw  [color={rgb, 255:red, 255; green, 255; blue, 255 }  ,draw opacity=0 ][fill={rgb, 255:red, 74; green, 144; blue, 226 }  ,fill opacity=1 ][line width=1.5]  (163,102.59) -- (178,102.59) -- (178,117.59) -- (163,117.59) -- cycle ;
%Curve Lines [id:da17725901119099552] 
\draw    (97.35,148.41) .. controls (32.86,157.84) and (47.69,97.01) .. (96.16,109.31) ;
\draw [shift={(98.39,109.92)}, rotate = 196.39] [fill={rgb, 255:red, 0; green, 0; blue, 0 }  ][line width=0.08]  [draw opacity=0] (8.93,-4.29) -- (0,0) -- (8.93,4.29) -- cycle    ;
\draw [shift={(100.39,147.92)}, rotate = 170.13] [fill={rgb, 255:red, 0; green, 0; blue, 0 }  ][line width=0.08]  [draw opacity=0] (8.93,-4.29) -- (0,0) -- (8.93,4.29) -- cycle    ;
%Straight Lines [id:da6949441587245431] 
\draw    (211.99,138.09) -- (273.39,137.75)(212.01,141.09) -- (273.4,140.75) ;
\draw [shift={(281.39,139.21)}, rotate = 179.69] [color={rgb, 255:red, 0; green, 0; blue, 0 }  ][line width=0.75]    (10.93,-3.29) .. controls (6.95,-1.4) and (3.31,-0.3) .. (0,0) .. controls (3.31,0.3) and (6.95,1.4) .. (10.93,3.29)   ;
%Shape: Grid [id:dp018024155101074024] 
\draw  [draw opacity=0] (310,100) -- (390.28,100) -- (390.28,180.67) -- (310,180.67) -- cycle ; \draw   (310,100) -- (310,180.67)(330,100) -- (330,180.67)(350,100) -- (350,180.67)(370,100) -- (370,180.67)(390,100) -- (390,180.67) ; \draw   (310,100) -- (390.28,100)(310,120) -- (390.28,120)(310,140) -- (390.28,140)(310,160) -- (390.28,160)(310,180) -- (390.28,180) ; \draw    ;
%Shape: Rectangle [id:dp7305976074094924] 
\draw  [color={rgb, 255:red, 255; green, 255; blue, 255 }  ,draw opacity=0 ][fill={rgb, 255:red, 74; green, 144; blue, 226 }  ,fill opacity=1 ][line width=1.5]  (352,142.72) -- (367.73,142.72) -- (367.73,157.64) -- (352,157.64) -- cycle ;
%Shape: Rectangle [id:dp02318426709543364] 
\draw  [color={rgb, 255:red, 255; green, 255; blue, 255 }  ,draw opacity=0 ][fill={rgb, 255:red, 74; green, 144; blue, 226 }  ,fill opacity=1 ][line width=1.5]  (372.73,142.72) -- (387.73,142.72) -- (387.73,157.72) -- (372.73,157.72) -- cycle ;
%Shape: Rectangle [id:dp9048065362843503] 
\draw  [color={rgb, 255:red, 255; green, 255; blue, 255 }  ,draw opacity=0 ][fill={rgb, 255:red, 74; green, 144; blue, 226 }  ,fill opacity=1 ][line width=1.5]  (372,162.72) -- (387.73,162.72) -- (387.73,177.64) -- (372,177.64) -- cycle ;
%Shape: Rectangle [id:dp4393305267322487] 
\draw  [color={rgb, 255:red, 255; green, 255; blue, 255 }  ,draw opacity=0 ][fill={rgb, 255:red, 74; green, 144; blue, 226 }  ,fill opacity=1 ][line width=1.5]  (332.73,122.72) -- (347.73,122.72) -- (347.73,137.72) -- (332.73,137.72) -- cycle ;
%Shape: Rectangle [id:dp686364438565406] 
\draw  [color={rgb, 255:red, 255; green, 255; blue, 255 }  ,draw opacity=0 ][fill={rgb, 255:red, 74; green, 144; blue, 226 }  ,fill opacity=1 ][line width=1.5]  (352.73,122.72) -- (367.73,122.72) -- (367.73,137.72) -- (352.73,137.72) -- cycle ;
%Shape: Rectangle [id:dp9179582843741865] 
\draw  [color={rgb, 255:red, 255; green, 255; blue, 255 }  ,draw opacity=0 ][fill={rgb, 255:red, 74; green, 144; blue, 226 }  ,fill opacity=1 ][line width=1.5]  (372.73,122.72) -- (387.73,122.72) -- (387.73,137.72) -- (372.73,137.72) -- cycle ;
%Shape: Rectangle [id:dp8670348640282106] 
\draw  [color={rgb, 255:red, 255; green, 255; blue, 255 }  ,draw opacity=0 ][fill={rgb, 255:red, 74; green, 144; blue, 226 }  ,fill opacity=1 ][line width=1.5]  (332.73,142.72) -- (347.73,142.72) -- (347.73,157.72) -- (332.73,157.72) -- cycle ;
%Shape: Rectangle [id:dp20669484319524334] 
\draw  [color={rgb, 255:red, 255; green, 255; blue, 255 }  ,draw opacity=0 ][fill={rgb, 255:red, 74; green, 144; blue, 226 }  ,fill opacity=1 ][line width=1.5]  (352.73,162.72) -- (367.73,162.72) -- (367.73,177.72) -- (352.73,177.72) -- cycle ;
%Shape: Rectangle [id:dp41177302620333966] 
\draw  [color={rgb, 255:red, 255; green, 255; blue, 255 }  ,draw opacity=0 ][fill={rgb, 255:red, 74; green, 144; blue, 226 }  ,fill opacity=1 ][line width=1.5]  (332.73,162.72) -- (347.73,162.72) -- (347.73,177.72) -- (332.73,177.72) -- cycle ;
%Shape: Rectangle [id:dp3863513764950115] 
\draw  [color={rgb, 255:red, 255; green, 255; blue, 255 }  ,draw opacity=0 ][fill={rgb, 255:red, 74; green, 144; blue, 226 }  ,fill opacity=1 ][line width=1.5]  (333,103) -- (348,103) -- (348,118) -- (333,118) -- cycle ;
%Shape: Rectangle [id:dp14722444780384314] 
\draw  [color={rgb, 255:red, 255; green, 255; blue, 255 }  ,draw opacity=0 ][fill={rgb, 255:red, 74; green, 144; blue, 226 }  ,fill opacity=1 ][line width=1.5]  (353,103) -- (368,103) -- (368,118) -- (353,118) -- cycle ;
%Shape: Rectangle [id:dp1353626725912085] 
\draw  [color={rgb, 255:red, 255; green, 255; blue, 255 }  ,draw opacity=0 ][fill={rgb, 255:red, 74; green, 144; blue, 226 }  ,fill opacity=1 ][line width=1.5]  (373,103) -- (388,103) -- (388,118) -- (373,118) -- cycle ;

% Text Node
\draw (102,122.59) node [anchor=north west][inner sep=0.75pt]   [align=left] {4};
% Text Node
\draw (102,142.59) node [anchor=north west][inner sep=0.75pt]  [color={rgb, 255:red, 208; green, 2; blue, 27 }  ,opacity=1 ] [align=left] {9};
% Text Node
\draw (102,162.59) node [anchor=north west][inner sep=0.75pt]   [align=left] {1};
% Text Node
\draw (312,123) node [anchor=north west][inner sep=0.75pt]   [align=left] {4};
% Text Node
\draw (312,163) node [anchor=north west][inner sep=0.75pt]   [align=left] {1};
% Text Node
\draw (312,103) node [anchor=north west][inner sep=0.75pt]  [color={rgb, 255:red, 208; green, 2; blue, 27 }  ,opacity=1 ] [align=left] {9};
% Text Node
\draw (102,102.59) node [anchor=north west][inner sep=0.75pt]   [align=left] {5};
% Text Node
\draw (312,143) node [anchor=north west][inner sep=0.75pt]   [align=left] {5};


\end{tikzpicture}

\end{document}
```
Questo processo pre-eliminazione va fatto ogni volta che si passa da un elemento pivot al successivo, ossia dopo che si è finito di annullare la colonna corrente e si passa alla prossima. 

Il pivoting parziale, siccome fa questo gioco di controllare gli elementi su di una colonna e fare lo scambio con la riga avente l'elemento più grande, e lo fa per tutte le colonne, avrà un costo di $n \cdot n$ ossia $\mathcal{O}(n^{2})$ 

### Formalmente


#calcolo-numerico #teoria  