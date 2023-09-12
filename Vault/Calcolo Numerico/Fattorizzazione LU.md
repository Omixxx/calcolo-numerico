### Intuizione
Vogliamo applicare la [[Fattorizzazione]] per ottenere le due matrici che, moltiplicate tra di loro, daranno di rimpetto la matrice di partenza.
Vogliamo fare questo per un semplice motivo di convenienza.  
Se abbiamo $A = LU$ dove $L$ e $U$ sono rispettivamente $Lower$ e $Upper$ ossia una matrice triangolare inferiore e una matrice triangolare superiore

![[diagram-20230912 (1).svg#invert_B]]

Possiamo risolvere il sistema lineare  $Ax = b$ in quest'altro modo, $LUx = b$
e se sostituissimo $Ux = y$  possiamo risolvere $Ly=b$
Ovviamente questo comporta che dobbiamo risolvere $Ux = y$ prima. 

Il vantaggio è che dobbiamo eseguire l'eliminazione di gauss una sola volta (per ottenere $L$ e $U$) e poi possiamo risolvere in $\mathcal{O}(n^{2})$ tutti i sistemi $Ax = \hat{b}$ dove $\hat{b}$ è un vettore dei termini noti qualsiasi. 

Per ottenere quindi $L$ e $U$ dobbiamo spendere un po di monetine, e applicare l'eliminazione di gauss come segue 

1. prendiamo la matrice $A$ e l'affianchiamo alla matrice identità
2. eseguiamo l'[[Eliminazione di Gauss]] per ottenere a destra una matrice triangolare superiore. Fare questo comporta il calcolo ovviamente dei nostri moltiplicatori $m$
3. memorizziamo i moltiplicatori $m$ nella matrice identità. Li mettiamo ripsettivamente nella posizione dello zero che si siamo andati a ricavare. 

Ricordiamo che, i moltiplicatori non devono essere alterati di segno. ad esempio se abbiamo $R_{2} = R_{2}-(-2)R_{1}$ non dobbiamo fare $R_{2} = R_{2} + 2R_{1}$
$m$ deve rimanere $-2$ 

La matrice identità di sinistra serve solo a conservare i moltiplicatori, niente di più. 

Segue un esempio di fattorizzazione LU:


```tikz
\begin{document}


\tikzset{every picture/.style={line width=0.75pt}} %set default line width to 0.75pt        

\begin{tikzpicture}[x=0.75pt,y=0.75pt,yscale=-1,xscale=1]
%uncomment if require: \path (0,636); %set diagram left start at 0, and has height of 636

%Shape: Grid [id:dp8367285893553345] 
\draw  [draw opacity=0] (179.72,9) -- (260,9) -- (260,89.67) -- (179.72,89.67) -- cycle ; \draw   (179.72,9) -- (179.72,89.67)(199.72,9) -- (199.72,89.67)(219.72,9) -- (219.72,89.67)(239.72,9) -- (239.72,89.67)(259.72,9) -- (259.72,89.67) ; \draw   (179.72,9) -- (260,9)(179.72,29) -- (260,29)(179.72,49) -- (260,49)(179.72,69) -- (260,69)(179.72,89) -- (260,89) ; \draw    ;
%Shape: Grid [id:dp48350957097650293] 
\draw  [draw opacity=0] (29.72,9) -- (110,9) -- (110,89.67) -- (29.72,89.67) -- cycle ; \draw   (29.72,9) -- (29.72,89.67)(49.72,9) -- (49.72,89.67)(69.72,9) -- (69.72,89.67)(89.72,9) -- (89.72,89.67)(109.72,9) -- (109.72,89.67) ; \draw   (29.72,9) -- (110,9)(29.72,29) -- (110,29)(29.72,49) -- (110,49)(29.72,69) -- (110,69)(29.72,89) -- (110,89) ; \draw    ;
%Straight Lines [id:da24315962137427705] 
\draw    (290,48.5) -- (412,48.5)(290,51.5) -- (412,51.5) ;
\draw [shift={(420,50)}, rotate = 180] [color={rgb, 255:red, 0; green, 0; blue, 0 }  ][line width=0.75]    (10.93,-3.29) .. controls (6.95,-1.4) and (3.31,-0.3) .. (0,0) .. controls (3.31,0.3) and (6.95,1.4) .. (10.93,3.29)   ;
%Shape: Grid [id:dp6087677041675905] 
\draw  [draw opacity=0] (560,9) -- (640.28,9) -- (640.28,89.67) -- (560,89.67) -- cycle ; \draw   (560,9) -- (560,89.67)(580,9) -- (580,89.67)(600,9) -- (600,89.67)(620,9) -- (620,89.67)(640,9) -- (640,89.67) ; \draw   (560,9) -- (640.28,9)(560,29) -- (640.28,29)(560,49) -- (640.28,49)(560,69) -- (640.28,69)(560,89) -- (640.28,89) ; \draw    ;
%Shape: Grid [id:dp38235701433685176] 
\draw  [draw opacity=0] (459.72,9.33) -- (540,9.33) -- (540,90) -- (459.72,90) -- cycle ; \draw   (459.72,9.33) -- (459.72,90)(479.72,9.33) -- (479.72,90)(499.72,9.33) -- (499.72,90)(519.72,9.33) -- (519.72,90)(539.72,9.33) -- (539.72,90) ; \draw   (459.72,9.33) -- (540,9.33)(459.72,29.33) -- (540,29.33)(459.72,49.33) -- (540,49.33)(459.72,69.33) -- (540,69.33)(459.72,89.33) -- (540,89.33) ; \draw    ;
%Shape: Grid [id:dp40387314641114247] 
\draw  [draw opacity=0] (179.72,119) -- (260,119) -- (260,199.67) -- (179.72,199.67) -- cycle ; \draw   (179.72,119) -- (179.72,199.67)(199.72,119) -- (199.72,199.67)(219.72,119) -- (219.72,199.67)(239.72,119) -- (239.72,199.67)(259.72,119) -- (259.72,199.67) ; \draw   (179.72,119) -- (260,119)(179.72,139) -- (260,139)(179.72,159) -- (260,159)(179.72,179) -- (260,179)(179.72,199) -- (260,199) ; \draw    ;
%Shape: Grid [id:dp9561154645596792] 
\draw  [draw opacity=0] (30,119.33) -- (110.28,119.33) -- (110.28,200) -- (30,200) -- cycle ; \draw   (30,119.33) -- (30,200)(50,119.33) -- (50,200)(70,119.33) -- (70,200)(90,119.33) -- (90,200)(110,119.33) -- (110,200) ; \draw   (30,119.33) -- (110.28,119.33)(30,139.33) -- (110.28,139.33)(30,159.33) -- (110.28,159.33)(30,179.33) -- (110.28,179.33)(30,199.33) -- (110.28,199.33) ; \draw    ;
%Straight Lines [id:da9591626257611305] 
\draw    (290,168.5) -- (412,168.5)(290,171.5) -- (412,171.5) ;
\draw [shift={(420,170)}, rotate = 180] [color={rgb, 255:red, 0; green, 0; blue, 0 }  ][line width=0.75]    (10.93,-3.29) .. controls (6.95,-1.4) and (3.31,-0.3) .. (0,0) .. controls (3.31,0.3) and (6.95,1.4) .. (10.93,3.29)   ;
%Shape: Grid [id:dp005015663555084426] 
\draw  [draw opacity=0] (560.28,119) -- (640.56,119) -- (640.56,199.67) -- (560.28,199.67) -- cycle ; \draw   (560.28,119) -- (560.28,199.67)(580.28,119) -- (580.28,199.67)(600.28,119) -- (600.28,199.67)(620.28,119) -- (620.28,199.67)(640.28,119) -- (640.28,199.67) ; \draw   (560.28,119) -- (640.56,119)(560.28,139) -- (640.56,139)(560.28,159) -- (640.56,159)(560.28,179) -- (640.56,179)(560.28,199) -- (640.56,199) ; \draw    ;
%Shape: Grid [id:dp7314019023700438] 
\draw  [draw opacity=0] (460,119.33) -- (540.28,119.33) -- (540.28,200) -- (460,200) -- cycle ; \draw   (460,119.33) -- (460,200)(480,119.33) -- (480,200)(500,119.33) -- (500,200)(520,119.33) -- (520,200)(540,119.33) -- (540,200) ; \draw   (460,119.33) -- (540.28,119.33)(460,139.33) -- (540.28,139.33)(460,159.33) -- (540.28,159.33)(460,179.33) -- (540.28,179.33)(460,199.33) -- (540.28,199.33) ; \draw    ;
%Shape: Grid [id:dp4944737330289717] 
\draw  [draw opacity=0] (179.72,229) -- (260,229) -- (260,309.67) -- (179.72,309.67) -- cycle ; \draw   (179.72,229) -- (179.72,309.67)(199.72,229) -- (199.72,309.67)(219.72,229) -- (219.72,309.67)(239.72,229) -- (239.72,309.67)(259.72,229) -- (259.72,309.67) ; \draw   (179.72,229) -- (260,229)(179.72,249) -- (260,249)(179.72,269) -- (260,269)(179.72,289) -- (260,289)(179.72,309) -- (260,309) ; \draw    ;
%Shape: Grid [id:dp5430155864072668] 
\draw  [draw opacity=0] (30,229.33) -- (110.28,229.33) -- (110.28,310) -- (30,310) -- cycle ; \draw   (30,229.33) -- (30,310)(50,229.33) -- (50,310)(70,229.33) -- (70,310)(90,229.33) -- (90,310)(110,229.33) -- (110,310) ; \draw   (30,229.33) -- (110.28,229.33)(30,249.33) -- (110.28,249.33)(30,269.33) -- (110.28,269.33)(30,289.33) -- (110.28,289.33)(30,309.33) -- (110.28,309.33) ; \draw    ;
%Straight Lines [id:da6488651969014998] 
\draw    (290,278.5) -- (412,278.5)(290,281.5) -- (412,281.5) ;
\draw [shift={(420,280)}, rotate = 180] [color={rgb, 255:red, 0; green, 0; blue, 0 }  ][line width=0.75]    (10.93,-3.29) .. controls (6.95,-1.4) and (3.31,-0.3) .. (0,0) .. controls (3.31,0.3) and (6.95,1.4) .. (10.93,3.29)   ;
%Shape: Grid [id:dp7824188314139935] 
\draw  [draw opacity=0] (560,230) -- (640.28,230) -- (640.28,310.67) -- (560,310.67) -- cycle ; \draw   (560,230) -- (560,310.67)(580,230) -- (580,310.67)(600,230) -- (600,310.67)(620,230) -- (620,310.67)(640,230) -- (640,310.67) ; \draw   (560,230) -- (640.28,230)(560,250) -- (640.28,250)(560,270) -- (640.28,270)(560,290) -- (640.28,290)(560,310) -- (640.28,310) ; \draw    ;
%Shape: Grid [id:dp9863057559970645] 
\draw  [draw opacity=0] (460,230.33) -- (540.28,230.33) -- (540.28,311) -- (460,311) -- cycle ; \draw   (460,230.33) -- (460,311)(480,230.33) -- (480,311)(500,230.33) -- (500,311)(520,230.33) -- (520,311)(540,230.33) -- (540,311) ; \draw   (460,230.33) -- (540.28,230.33)(460,250.33) -- (540.28,250.33)(460,270.33) -- (540.28,270.33)(460,290.33) -- (540.28,290.33)(460,310.33) -- (540.28,310.33) ; \draw    ;
%Shape: Grid [id:dp0026314749902207613] 
\draw  [draw opacity=0] (179,339) -- (259.28,339) -- (259.28,419.67) -- (179,419.67) -- cycle ; \draw   (179,339) -- (179,419.67)(199,339) -- (199,419.67)(219,339) -- (219,419.67)(239,339) -- (239,419.67)(259,339) -- (259,419.67) ; \draw   (179,339) -- (259.28,339)(179,359) -- (259.28,359)(179,379) -- (259.28,379)(179,399) -- (259.28,399)(179,419) -- (259.28,419) ; \draw    ;
%Shape: Grid [id:dp6743066083747864] 
\draw  [draw opacity=0] (30,339.33) -- (110.28,339.33) -- (110.28,420) -- (30,420) -- cycle ; \draw   (30,339.33) -- (30,420)(50,339.33) -- (50,420)(70,339.33) -- (70,420)(90,339.33) -- (90,420)(110,339.33) -- (110,420) ; \draw   (30,339.33) -- (110.28,339.33)(30,359.33) -- (110.28,359.33)(30,379.33) -- (110.28,379.33)(30,399.33) -- (110.28,399.33)(30,419.33) -- (110.28,419.33) ; \draw    ;
%Straight Lines [id:da893220720968094] 
\draw    (292,398.5) -- (414,398.5)(292,401.5) -- (414,401.5) ;
\draw [shift={(422,400)}, rotate = 180] [color={rgb, 255:red, 0; green, 0; blue, 0 }  ][line width=0.75]    (10.93,-3.29) .. controls (6.95,-1.4) and (3.31,-0.3) .. (0,0) .. controls (3.31,0.3) and (6.95,1.4) .. (10.93,3.29)   ;
%Shape: Grid [id:dp35199569943632514] 
\draw  [draw opacity=0] (559,339) -- (639.28,339) -- (639.28,419.67) -- (559,419.67) -- cycle ; \draw   (559,339) -- (559,419.67)(579,339) -- (579,419.67)(599,339) -- (599,419.67)(619,339) -- (619,419.67)(639,339) -- (639,419.67) ; \draw   (559,339) -- (639.28,339)(559,359) -- (639.28,359)(559,379) -- (639.28,379)(559,399) -- (639.28,399)(559,419) -- (639.28,419) ; \draw    ;
%Shape: Grid [id:dp13030534742031818] 
\draw  [draw opacity=0] (459,339.33) -- (539.28,339.33) -- (539.28,420) -- (459,420) -- cycle ; \draw   (459,339.33) -- (459,420)(479,339.33) -- (479,420)(499,339.33) -- (499,420)(519,339.33) -- (519,420)(539,339.33) -- (539,420) ; \draw   (459,339.33) -- (539.28,339.33)(459,359.33) -- (539.28,359.33)(459,379.33) -- (539.28,379.33)(459,399.33) -- (539.28,399.33)(459,419.33) -- (539.28,419.33) ; \draw    ;
%Shape: Circle [id:dp37316156024093017] 
\draw  [fill={rgb, 255:red, 0; green, 0; blue, 0 }  ,fill opacity=1 ] (60.75,435.38) .. controls (60.75,432.82) and (62.82,430.75) .. (65.38,430.75) .. controls (67.93,430.75) and (70,432.82) .. (70,435.38) .. controls (70,437.93) and (67.93,440) .. (65.38,440) .. controls (62.82,440) and (60.75,437.93) .. (60.75,435.38) -- cycle ;
%Shape: Circle [id:dp9423091971599962] 
\draw  [fill={rgb, 255:red, 0; green, 0; blue, 0 }  ,fill opacity=1 ] (60.75,455.38) .. controls (60.75,452.82) and (62.82,450.75) .. (65.38,450.75) .. controls (67.93,450.75) and (70,452.82) .. (70,455.38) .. controls (70,457.93) and (67.93,460) .. (65.38,460) .. controls (62.82,460) and (60.75,457.93) .. (60.75,455.38) -- cycle ;
%Shape: Circle [id:dp9114767635448406] 
\draw  [fill={rgb, 255:red, 0; green, 0; blue, 0 }  ,fill opacity=1 ] (60.75,474.62) .. controls (60.75,472.07) and (62.82,470) .. (65.38,470) .. controls (67.93,470) and (70,472.07) .. (70,474.62) .. controls (70,477.18) and (67.93,479.25) .. (65.38,479.25) .. controls (62.82,479.25) and (60.75,477.18) .. (60.75,474.62) -- cycle ;
%Shape: Circle [id:dp28305350708237675] 
\draw  [fill={rgb, 255:red, 0; green, 0; blue, 0 }  ,fill opacity=1 ] (60.75,494.62) .. controls (60.75,492.07) and (62.82,490) .. (65.38,490) .. controls (67.93,490) and (70,492.07) .. (70,494.62) .. controls (70,497.18) and (67.93,499.25) .. (65.38,499.25) .. controls (62.82,499.25) and (60.75,497.18) .. (60.75,494.62) -- cycle ;
%Shape: Ellipse [id:dp3989311842575869] 
\draw  [fill={rgb, 255:red, 0; green, 0; blue, 0 }  ,fill opacity=1 ] (210,436.13) .. controls (210,433.58) and (212.24,431.51) .. (215,431.51) .. controls (217.76,431.51) and (220,433.58) .. (220,436.13) .. controls (220,438.68) and (217.76,440.75) .. (215,440.75) .. controls (212.24,440.75) and (210,438.68) .. (210,436.13) -- cycle ;
%Shape: Ellipse [id:dp5292393036737648] 
\draw  [fill={rgb, 255:red, 0; green, 0; blue, 0 }  ,fill opacity=1 ] (210,456.13) .. controls (210,453.58) and (212.24,451.51) .. (215,451.51) .. controls (217.76,451.51) and (220,453.58) .. (220,456.13) .. controls (220,458.68) and (217.76,460.75) .. (215,460.75) .. controls (212.24,460.75) and (210,458.68) .. (210,456.13) -- cycle ;
%Shape: Ellipse [id:dp16120526571591842] 
\draw  [fill={rgb, 255:red, 0; green, 0; blue, 0 }  ,fill opacity=1 ] (210,475.38) .. controls (210,472.82) and (212.24,470.75) .. (215,470.75) .. controls (217.76,470.75) and (220,472.82) .. (220,475.38) .. controls (220,477.93) and (217.76,480) .. (215,480) .. controls (212.24,480) and (210,477.93) .. (210,475.38) -- cycle ;
%Shape: Ellipse [id:dp5946958316584339] 
\draw  [fill={rgb, 255:red, 0; green, 0; blue, 0 }  ,fill opacity=1 ] (210,495.38) .. controls (210,492.82) and (212.24,490.75) .. (215,490.75) .. controls (217.76,490.75) and (220,492.82) .. (220,495.38) .. controls (220,497.93) and (217.76,500) .. (215,500) .. controls (212.24,500) and (210,497.93) .. (210,495.38) -- cycle ;
%Shape: Circle [id:dp8233081226797161] 
\draw  [fill={rgb, 255:red, 0; green, 0; blue, 0 }  ,fill opacity=1 ] (490,435.38) .. controls (490,432.82) and (492.07,430.75) .. (494.62,430.75) .. controls (497.18,430.75) and (499.25,432.82) .. (499.25,435.38) .. controls (499.25,437.93) and (497.18,440) .. (494.62,440) .. controls (492.07,440) and (490,437.93) .. (490,435.38) -- cycle ;
%Shape: Circle [id:dp9822899998679124] 
\draw  [fill={rgb, 255:red, 0; green, 0; blue, 0 }  ,fill opacity=1 ] (490,455.38) .. controls (490,452.82) and (492.07,450.75) .. (494.62,450.75) .. controls (497.18,450.75) and (499.25,452.82) .. (499.25,455.38) .. controls (499.25,457.93) and (497.18,460) .. (494.62,460) .. controls (492.07,460) and (490,457.93) .. (490,455.38) -- cycle ;
%Shape: Circle [id:dp062598016908745] 
\draw  [fill={rgb, 255:red, 0; green, 0; blue, 0 }  ,fill opacity=1 ] (490,474.62) .. controls (490,472.07) and (492.07,470) .. (494.62,470) .. controls (497.18,470) and (499.25,472.07) .. (499.25,474.62) .. controls (499.25,477.18) and (497.18,479.25) .. (494.62,479.25) .. controls (492.07,479.25) and (490,477.18) .. (490,474.62) -- cycle ;
%Shape: Circle [id:dp7977295104815454] 
\draw  [fill={rgb, 255:red, 0; green, 0; blue, 0 }  ,fill opacity=1 ] (490,494.62) .. controls (490,492.07) and (492.07,490) .. (494.62,490) .. controls (497.18,490) and (499.25,492.07) .. (499.25,494.62) .. controls (499.25,497.18) and (497.18,499.25) .. (494.62,499.25) .. controls (492.07,499.25) and (490,497.18) .. (490,494.62) -- cycle ;
%Shape: Ellipse [id:dp4952653213253435] 
\draw  [fill={rgb, 255:red, 0; green, 0; blue, 0 }  ,fill opacity=1 ] (600,436.13) .. controls (600,433.58) and (602.24,431.51) .. (605,431.51) .. controls (607.76,431.51) and (610,433.58) .. (610,436.13) .. controls (610,438.68) and (607.76,440.75) .. (605,440.75) .. controls (602.24,440.75) and (600,438.68) .. (600,436.13) -- cycle ;
%Shape: Ellipse [id:dp9899132622433124] 
\draw  [fill={rgb, 255:red, 0; green, 0; blue, 0 }  ,fill opacity=1 ] (600,456.13) .. controls (600,453.58) and (602.24,451.51) .. (605,451.51) .. controls (607.76,451.51) and (610,453.58) .. (610,456.13) .. controls (610,458.68) and (607.76,460.75) .. (605,460.75) .. controls (602.24,460.75) and (600,458.68) .. (600,456.13) -- cycle ;
%Shape: Ellipse [id:dp514243841183061] 
\draw  [fill={rgb, 255:red, 0; green, 0; blue, 0 }  ,fill opacity=1 ] (600,475.38) .. controls (600,472.82) and (602.24,470.75) .. (605,470.75) .. controls (607.76,470.75) and (610,472.82) .. (610,475.38) .. controls (610,477.93) and (607.76,480) .. (605,480) .. controls (602.24,480) and (600,477.93) .. (600,475.38) -- cycle ;
%Shape: Ellipse [id:dp18854204497618277] 
\draw  [fill={rgb, 255:red, 0; green, 0; blue, 0 }  ,fill opacity=1 ] (600,495.38) .. controls (600,492.82) and (602.24,490.75) .. (605,490.75) .. controls (607.76,490.75) and (610,492.82) .. (610,495.38) .. controls (610,497.93) and (607.76,500) .. (605,500) .. controls (602.24,500) and (600,497.93) .. (600,495.38) -- cycle ;
%Shape: Grid [id:dp9718058142598394] 
\draw  [draw opacity=0] (250,520) -- (330.28,520) -- (330.28,600.67) -- (250,600.67) -- cycle ; \draw   (250,520) -- (250,600.67)(270,520) -- (270,600.67)(290,520) -- (290,600.67)(310,520) -- (310,600.67)(330,520) -- (330,600.67) ; \draw   (250,520) -- (330.28,520)(250,540) -- (330.28,540)(250,560) -- (330.28,560)(250,580) -- (330.28,580)(250,600) -- (330.28,600) ; \draw    ;
%Shape: Rectangle [id:dp8030051904641833] 
\draw  [color={rgb, 255:red, 255; green, 255; blue, 255 }  ,draw opacity=0 ][fill={rgb, 255:red, 74; green, 144; blue, 226 }  ,fill opacity=1 ][line width=1.5]  (292,562.72) -- (307.73,562.72) -- (307.73,577.64) -- (292,577.64) -- cycle ;
%Shape: Rectangle [id:dp8649600273679863] 
\draw  [color={rgb, 255:red, 255; green, 255; blue, 255 }  ,draw opacity=0 ][fill={rgb, 255:red, 74; green, 144; blue, 226 }  ,fill opacity=1 ][line width=1.5]  (312,582.72) -- (327.73,582.72) -- (327.73,597.64) -- (312,597.64) -- cycle ;
%Shape: Rectangle [id:dp02660305968056753] 
\draw  [color={rgb, 255:red, 255; green, 255; blue, 255 }  ,draw opacity=0 ][fill={rgb, 255:red, 74; green, 144; blue, 226 }  ,fill opacity=1 ][line width=1.5]  (272.73,542.72) -- (287.73,542.72) -- (287.73,557.72) -- (272.73,557.72) -- cycle ;
%Shape: Rectangle [id:dp05299730674323788] 
\draw  [color={rgb, 255:red, 255; green, 255; blue, 255 }  ,draw opacity=0 ][fill={rgb, 255:red, 74; green, 144; blue, 226 }  ,fill opacity=1 ][line width=1.5]  (272.73,562.72) -- (287.73,562.72) -- (287.73,577.72) -- (272.73,577.72) -- cycle ;
%Shape: Rectangle [id:dp3046375717719574] 
\draw  [color={rgb, 255:red, 255; green, 255; blue, 255 }  ,draw opacity=0 ][fill={rgb, 255:red, 74; green, 144; blue, 226 }  ,fill opacity=1 ][line width=1.5]  (292.73,582.72) -- (307.73,582.72) -- (307.73,597.72) -- (292.73,597.72) -- cycle ;
%Shape: Rectangle [id:dp9071789571630715] 
\draw  [color={rgb, 255:red, 255; green, 255; blue, 255 }  ,draw opacity=0 ][fill={rgb, 255:red, 74; green, 144; blue, 226 }  ,fill opacity=1 ][line width=1.5]  (272.73,582.72) -- (287.73,582.72) -- (287.73,597.72) -- (272.73,597.72) -- cycle ;
%Shape: Rectangle [id:dp39692649262167623] 
\draw  [color={rgb, 255:red, 255; green, 255; blue, 255 }  ,draw opacity=0 ][fill={rgb, 255:red, 74; green, 144; blue, 226 }  ,fill opacity=1 ][line width=1.5]  (252.73,522.72) -- (267.73,522.72) -- (267.73,537.72) -- (252.73,537.72) -- cycle ;
%Shape: Rectangle [id:dp9925249640915332] 
\draw  [color={rgb, 255:red, 255; green, 255; blue, 255 }  ,draw opacity=0 ][fill={rgb, 255:red, 74; green, 144; blue, 226 }  ,fill opacity=1 ][line width=1.5]  (252.73,542.72) -- (267.73,542.72) -- (267.73,557.72) -- (252.73,557.72) -- cycle ;
%Shape: Rectangle [id:dp9539640902142732] 
\draw  [color={rgb, 255:red, 255; green, 255; blue, 255 }  ,draw opacity=0 ][fill={rgb, 255:red, 74; green, 144; blue, 226 }  ,fill opacity=1 ][line width=1.5]  (252.73,562.72) -- (267.73,562.72) -- (267.73,577.72) -- (252.73,577.72) -- cycle ;
%Shape: Rectangle [id:dp08434452103301182] 
\draw  [color={rgb, 255:red, 255; green, 255; blue, 255 }  ,draw opacity=0 ][fill={rgb, 255:red, 74; green, 144; blue, 226 }  ,fill opacity=1 ][line width=1.5]  (252.73,582.72) -- (267.73,582.72) -- (267.73,597.72) -- (252.73,597.72) -- cycle ;
%Shape: Grid [id:dp21751675060199305] 
\draw  [draw opacity=0] (399.72,520) -- (480,520) -- (480,600.67) -- (399.72,600.67) -- cycle ; \draw   (399.72,520) -- (399.72,600.67)(419.72,520) -- (419.72,600.67)(439.72,520) -- (439.72,600.67)(459.72,520) -- (459.72,600.67)(479.72,520) -- (479.72,600.67) ; \draw   (399.72,520) -- (480,520)(399.72,540) -- (480,540)(399.72,560) -- (480,560)(399.72,580) -- (480,580)(399.72,600) -- (480,600) ; \draw    ;
%Shape: Rectangle [id:dp7508445252582492] 
\draw  [color={rgb, 255:red, 255; green, 255; blue, 255 }  ,draw opacity=0 ][fill={rgb, 255:red, 74; green, 144; blue, 226 }  ,fill opacity=1 ][line width=1.5]  (441.72,562.72) -- (457.45,562.72) -- (457.45,577.64) -- (441.72,577.64) -- cycle ;
%Shape: Rectangle [id:dp8581468072799006] 
\draw  [color={rgb, 255:red, 255; green, 255; blue, 255 }  ,draw opacity=0 ][fill={rgb, 255:red, 74; green, 144; blue, 226 }  ,fill opacity=1 ][line width=1.5]  (462.45,562.72) -- (477.45,562.72) -- (477.45,577.72) -- (462.45,577.72) -- cycle ;
%Shape: Rectangle [id:dp9759447436360109] 
\draw  [color={rgb, 255:red, 255; green, 255; blue, 255 }  ,draw opacity=0 ][fill={rgb, 255:red, 74; green, 144; blue, 226 }  ,fill opacity=1 ][line width=1.5]  (461.72,582.72) -- (477.45,582.72) -- (477.45,597.64) -- (461.72,597.64) -- cycle ;
%Shape: Rectangle [id:dp6285914790702207] 
\draw  [color={rgb, 255:red, 255; green, 255; blue, 255 }  ,draw opacity=0 ][fill={rgb, 255:red, 74; green, 144; blue, 226 }  ,fill opacity=1 ][line width=1.5]  (422.45,542.72) -- (437.45,542.72) -- (437.45,557.72) -- (422.45,557.72) -- cycle ;
%Shape: Rectangle [id:dp9650209761301565] 
\draw  [color={rgb, 255:red, 255; green, 255; blue, 255 }  ,draw opacity=0 ][fill={rgb, 255:red, 74; green, 144; blue, 226 }  ,fill opacity=1 ][line width=1.5]  (442.45,542.72) -- (457.45,542.72) -- (457.45,557.72) -- (442.45,557.72) -- cycle ;
%Shape: Rectangle [id:dp5607203060857566] 
\draw  [color={rgb, 255:red, 255; green, 255; blue, 255 }  ,draw opacity=0 ][fill={rgb, 255:red, 74; green, 144; blue, 226 }  ,fill opacity=1 ][line width=1.5]  (462.45,542.72) -- (477.45,542.72) -- (477.45,557.72) -- (462.45,557.72) -- cycle ;
%Shape: Rectangle [id:dp930744324564059] 
\draw  [color={rgb, 255:red, 255; green, 255; blue, 255 }  ,draw opacity=0 ][fill={rgb, 255:red, 74; green, 144; blue, 226 }  ,fill opacity=1 ][line width=1.5]  (402.45,522.72) -- (417.45,522.72) -- (417.45,537.72) -- (402.45,537.72) -- cycle ;
%Shape: Rectangle [id:dp6123281231851667] 
\draw  [color={rgb, 255:red, 255; green, 255; blue, 255 }  ,draw opacity=0 ][fill={rgb, 255:red, 74; green, 144; blue, 226 }  ,fill opacity=1 ][line width=1.5]  (422.45,522.72) -- (437.45,522.72) -- (437.45,537.72) -- (422.45,537.72) -- cycle ;
%Shape: Rectangle [id:dp3447876175649933] 
\draw  [color={rgb, 255:red, 255; green, 255; blue, 255 }  ,draw opacity=0 ][fill={rgb, 255:red, 74; green, 144; blue, 226 }  ,fill opacity=1 ][line width=1.5]  (442.45,522.72) -- (457.45,522.72) -- (457.45,537.72) -- (442.45,537.72) -- cycle ;
%Shape: Rectangle [id:dp9359053573909184] 
\draw  [color={rgb, 255:red, 255; green, 255; blue, 255 }  ,draw opacity=0 ][fill={rgb, 255:red, 74; green, 144; blue, 226 }  ,fill opacity=1 ][line width=1.5]  (462.45,522.72) -- (477.45,522.72) -- (477.45,537.72) -- (462.45,537.72) -- cycle ;

% Text Node
\draw (151,41) node [anchor=north west][inner sep=0.75pt]   [align=left] {A = };
% Text Node
\draw (181.72,12) node [anchor=north west][inner sep=0.75pt]   [align=left] {2};
% Text Node
\draw (201.72,12) node [anchor=north west][inner sep=0.75pt]   [align=left] {1};
% Text Node
\draw (221.72,12) node [anchor=north west][inner sep=0.75pt]   [align=left] {2};
% Text Node
\draw (241.72,32) node [anchor=north west][inner sep=0.75pt]   [align=left] {2};
% Text Node
\draw (241.72,12) node [anchor=north west][inner sep=0.75pt]   [align=left] {4};
% Text Node
\draw (181.72,32) node [anchor=north west][inner sep=0.75pt]   [align=left] {6};
% Text Node
\draw (201.72,32) node [anchor=north west][inner sep=0.75pt]   [align=left] {2};
% Text Node
\draw (221.72,32) node [anchor=north west][inner sep=0.75pt]   [align=left] {0};
% Text Node
\draw (181.72,52) node [anchor=north west][inner sep=0.75pt]   [align=left] {2};
% Text Node
\draw (201.72,52) node [anchor=north west][inner sep=0.75pt]   [align=left] {4};
% Text Node
\draw (221.72,72) node [anchor=north west][inner sep=0.75pt]   [align=left] {3};
% Text Node
\draw (221.72,52) node [anchor=north west][inner sep=0.75pt]   [align=left] {3};
% Text Node
\draw (241.72,52) node [anchor=north west][inner sep=0.75pt]   [align=left] {5};
% Text Node
\draw (241.72,72) node [anchor=north west][inner sep=0.75pt]   [align=left] {1};
% Text Node
\draw (181.72,72) node [anchor=north west][inner sep=0.75pt]   [align=left] {7};
% Text Node
\draw (201.72,72) node [anchor=north west][inner sep=0.75pt]   [align=left] {7};
% Text Node
\draw (1,41) node [anchor=north west][inner sep=0.75pt]   [align=left] {I = };
% Text Node
\draw (31.72,12) node [anchor=north west][inner sep=0.75pt]   [align=left] {1};
% Text Node
\draw (51.72,32) node [anchor=north west][inner sep=0.75pt]   [align=left] {1};
% Text Node
\draw (71.72,52) node [anchor=north west][inner sep=0.75pt]   [align=left] {1};
% Text Node
\draw (91.72,72) node [anchor=north west][inner sep=0.75pt]   [align=left] {1};
% Text Node
\draw (91.72,72) node [anchor=north west][inner sep=0.75pt]   [align=left] {1};
% Text Node
\draw (291,22) node [anchor=north west][inner sep=0.75pt]   [align=left] {$ $$\displaystyle R_{2} \ =\ R_{2} \ -\ ( 3) R_{1}$};
% Text Node
\draw (562,12) node [anchor=north west][inner sep=0.75pt]   [align=left] {2};
% Text Node
\draw (582,12) node [anchor=north west][inner sep=0.75pt]   [align=left] {1};
% Text Node
\draw (602,12) node [anchor=north west][inner sep=0.75pt]   [align=left] {2};
% Text Node
\draw (622,32) node [anchor=north west][inner sep=0.75pt]   [align=left] {2};
% Text Node
\draw (622,12) node [anchor=north west][inner sep=0.75pt]   [align=left] {4};
% Text Node
\draw (562,32) node [anchor=north west][inner sep=0.75pt]   [align=left] {0};
% Text Node
\draw (582,32) node [anchor=north west][inner sep=0.75pt]   [align=left] {\mbox{-}1};
% Text Node
\draw (602,32) node [anchor=north west][inner sep=0.75pt]   [align=left] {0};
% Text Node
\draw (562,52) node [anchor=north west][inner sep=0.75pt]   [align=left] {2};
% Text Node
\draw (582,52) node [anchor=north west][inner sep=0.75pt]   [align=left] {4};
% Text Node
\draw (602,72) node [anchor=north west][inner sep=0.75pt]   [align=left] {3};
% Text Node
\draw (602,52) node [anchor=north west][inner sep=0.75pt]   [align=left] {3};
% Text Node
\draw (622,52) node [anchor=north west][inner sep=0.75pt]   [align=left] {5};
% Text Node
\draw (622,72) node [anchor=north west][inner sep=0.75pt]   [align=left] {1};
% Text Node
\draw (562,72) node [anchor=north west][inner sep=0.75pt]   [align=left] {7};
% Text Node
\draw (582,72) node [anchor=north west][inner sep=0.75pt]   [align=left] {7};
% Text Node
\draw (461.72,12) node [anchor=north west][inner sep=0.75pt]   [align=left] {1};
% Text Node
\draw (481.72,32) node [anchor=north west][inner sep=0.75pt]   [align=left] {1};
% Text Node
\draw (501.72,52) node [anchor=north west][inner sep=0.75pt]   [align=left] {1};
% Text Node
\draw (521.72,72) node [anchor=north west][inner sep=0.75pt]   [align=left] {1};
% Text Node
\draw (521.72,72) node [anchor=north west][inner sep=0.75pt]   [align=left] {1};
% Text Node
\draw (461.72,32.33) node [anchor=north west][inner sep=0.75pt]   [align=left] {3};
% Text Node
\draw (181.72,122) node [anchor=north west][inner sep=0.75pt]   [align=left] {2};
% Text Node
\draw (201.72,122) node [anchor=north west][inner sep=0.75pt]   [align=left] {1};
% Text Node
\draw (221.72,122) node [anchor=north west][inner sep=0.75pt]   [align=left] {2};
% Text Node
\draw (241.72,142) node [anchor=north west][inner sep=0.75pt]   [align=left] {2};
% Text Node
\draw (241.72,122) node [anchor=north west][inner sep=0.75pt]   [align=left] {11};
% Text Node
\draw (181.72,142) node [anchor=north west][inner sep=0.75pt]   [align=left] {0};
% Text Node
\draw (201.72,142) node [anchor=north west][inner sep=0.75pt]   [align=left] {\mbox{-}1};
% Text Node
\draw (221.72,142) node [anchor=north west][inner sep=0.75pt]   [align=left] {0};
% Text Node
\draw (181.72,162) node [anchor=north west][inner sep=0.75pt]   [align=left] {2};
% Text Node
\draw (201.72,162) node [anchor=north west][inner sep=0.75pt]   [align=left] {4};
% Text Node
\draw (221.72,182) node [anchor=north west][inner sep=0.75pt]   [align=left] {3};
% Text Node
\draw (221.72,162) node [anchor=north west][inner sep=0.75pt]   [align=left] {2};
% Text Node
\draw (241.72,162) node [anchor=north west][inner sep=0.75pt]   [align=left] {5};
% Text Node
\draw (241.72,182) node [anchor=north west][inner sep=0.75pt]   [align=left] {1};
% Text Node
\draw (181.72,182) node [anchor=north west][inner sep=0.75pt]   [align=left] {7};
% Text Node
\draw (201.72,182) node [anchor=north west][inner sep=0.75pt]   [align=left] {7};
% Text Node
\draw (32,122) node [anchor=north west][inner sep=0.75pt]   [align=left] {1};
% Text Node
\draw (52,142) node [anchor=north west][inner sep=0.75pt]   [align=left] {1};
% Text Node
\draw (72,162) node [anchor=north west][inner sep=0.75pt]   [align=left] {1};
% Text Node
\draw (92,182) node [anchor=north west][inner sep=0.75pt]   [align=left] {1};
% Text Node
\draw (92,182) node [anchor=north west][inner sep=0.75pt]   [align=left] {1};
% Text Node
\draw (32,142.33) node [anchor=north west][inner sep=0.75pt]   [align=left] {3};
% Text Node
\draw (291,142) node [anchor=north west][inner sep=0.75pt]   [align=left] {$ $$\displaystyle R_{3} \ =\ R_{3} \ -\ ( 1) R_{1}$};
% Text Node
\draw (562.28,122) node [anchor=north west][inner sep=0.75pt]   [align=left] {2};
% Text Node
\draw (582.28,122) node [anchor=north west][inner sep=0.75pt]   [align=left] {1};
% Text Node
\draw (602.28,122) node [anchor=north west][inner sep=0.75pt]   [align=left] {2};
% Text Node
\draw (622.28,142) node [anchor=north west][inner sep=0.75pt]   [align=left] {2};
% Text Node
\draw (622.28,122) node [anchor=north west][inner sep=0.75pt]   [align=left] {4};
% Text Node
\draw (562.28,142) node [anchor=north west][inner sep=0.75pt]   [align=left] {0};
% Text Node
\draw (582.28,142) node [anchor=north west][inner sep=0.75pt]   [align=left] {\mbox{-}1};
% Text Node
\draw (602.28,142) node [anchor=north west][inner sep=0.75pt]   [align=left] {0};
% Text Node
\draw (562.28,162) node [anchor=north west][inner sep=0.75pt]   [align=left] {0};
% Text Node
\draw (582.28,162) node [anchor=north west][inner sep=0.75pt]   [align=left] {3};
% Text Node
\draw (602.28,182) node [anchor=north west][inner sep=0.75pt]   [align=left] {3};
% Text Node
\draw (602.28,162) node [anchor=north west][inner sep=0.75pt]   [align=left] {1};
% Text Node
\draw (622.28,162) node [anchor=north west][inner sep=0.75pt]   [align=left] {1};
% Text Node
\draw (622.28,182) node [anchor=north west][inner sep=0.75pt]   [align=left] {1};
% Text Node
\draw (562.28,182) node [anchor=north west][inner sep=0.75pt]   [align=left] {7};
% Text Node
\draw (582.28,182) node [anchor=north west][inner sep=0.75pt]   [align=left] {7};
% Text Node
\draw (462,122) node [anchor=north west][inner sep=0.75pt]   [align=left] {1};
% Text Node
\draw (482,142) node [anchor=north west][inner sep=0.75pt]   [align=left] {1};
% Text Node
\draw (502,162) node [anchor=north west][inner sep=0.75pt]   [align=left] {1};
% Text Node
\draw (522,182) node [anchor=north west][inner sep=0.75pt]   [align=left] {1};
% Text Node
\draw (522,182) node [anchor=north west][inner sep=0.75pt]   [align=left] {1};
% Text Node
\draw (462,142.33) node [anchor=north west][inner sep=0.75pt]   [align=left] {3};
% Text Node
\draw (462,162.33) node [anchor=north west][inner sep=0.75pt]   [align=left] {1};
% Text Node
\draw (181.72,232) node [anchor=north west][inner sep=0.75pt]   [align=left] {2};
% Text Node
\draw (201.72,232) node [anchor=north west][inner sep=0.75pt]   [align=left] {1};
% Text Node
\draw (221.72,232) node [anchor=north west][inner sep=0.75pt]   [align=left] {2};
% Text Node
\draw (241.72,252) node [anchor=north west][inner sep=0.75pt]   [align=left] {2};
% Text Node
\draw (241.72,232) node [anchor=north west][inner sep=0.75pt]   [align=left] {4};
% Text Node
\draw (181.72,252) node [anchor=north west][inner sep=0.75pt]   [align=left] {0};
% Text Node
\draw (201.72,252) node [anchor=north west][inner sep=0.75pt]   [align=left] {\mbox{-}1};
% Text Node
\draw (221.72,252) node [anchor=north west][inner sep=0.75pt]   [align=left] {0};
% Text Node
\draw (181.72,272) node [anchor=north west][inner sep=0.75pt]   [align=left] {0};
% Text Node
\draw (201.72,272) node [anchor=north west][inner sep=0.75pt]   [align=left] {3};
% Text Node
\draw (221.72,292) node [anchor=north west][inner sep=0.75pt]   [align=left] {3};
% Text Node
\draw (221.72,272) node [anchor=north west][inner sep=0.75pt]   [align=left] {1};
% Text Node
\draw (241.72,272) node [anchor=north west][inner sep=0.75pt]   [align=left] {1};
% Text Node
\draw (241.72,292) node [anchor=north west][inner sep=0.75pt]   [align=left] {1};
% Text Node
\draw (181.72,292) node [anchor=north west][inner sep=0.75pt]   [align=left] {7};
% Text Node
\draw (201.72,292) node [anchor=north west][inner sep=0.75pt]   [align=left] {7};
% Text Node
\draw (32,232) node [anchor=north west][inner sep=0.75pt]   [align=left] {1};
% Text Node
\draw (52,252) node [anchor=north west][inner sep=0.75pt]   [align=left] {1};
% Text Node
\draw (72,272) node [anchor=north west][inner sep=0.75pt]   [align=left] {1};
% Text Node
\draw (92,292) node [anchor=north west][inner sep=0.75pt]   [align=left] {1};
% Text Node
\draw (92,292) node [anchor=north west][inner sep=0.75pt]   [align=left] {1};
% Text Node
\draw (32,252.33) node [anchor=north west][inner sep=0.75pt]   [align=left] {3};
% Text Node
\draw (32,272.33) node [anchor=north west][inner sep=0.75pt]   [align=left] {1};
% Text Node
\draw (291,222) node [anchor=north west][inner sep=0.75pt]   [align=left] {$ $$\displaystyle R_{4} \ =\ R_{4} \ -\ \left(\frac{7}{2}\right) R_{1}$};
% Text Node
\draw (562,233) node [anchor=north west][inner sep=0.75pt]   [align=left] {2};
% Text Node
\draw (582,233) node [anchor=north west][inner sep=0.75pt]   [align=left] {1};
% Text Node
\draw (602,233) node [anchor=north west][inner sep=0.75pt]   [align=left] {2};
% Text Node
\draw (622,253) node [anchor=north west][inner sep=0.75pt]   [align=left] {2};
% Text Node
\draw (622,233) node [anchor=north west][inner sep=0.75pt]   [align=left] {4};
% Text Node
\draw (562,253) node [anchor=north west][inner sep=0.75pt]   [align=left] {0};
% Text Node
\draw (582,253) node [anchor=north west][inner sep=0.75pt]   [align=left] {\mbox{-}1};
% Text Node
\draw (602,253) node [anchor=north west][inner sep=0.75pt]   [align=left] {0};
% Text Node
\draw (562,273) node [anchor=north west][inner sep=0.75pt]   [align=left] {0};
% Text Node
\draw (582,273) node [anchor=north west][inner sep=0.75pt]   [align=left] {3};
% Text Node
\draw (602,293) node [anchor=north west][inner sep=0.75pt]   [align=left] {\mbox{-}4};
% Text Node
\draw (602,273) node [anchor=north west][inner sep=0.75pt]   [align=left] {1};
% Text Node
\draw (622,273) node [anchor=north west][inner sep=0.75pt]   [align=left] {1};
% Text Node
\draw (622,293) node [anchor=north west][inner sep=0.75pt]  [font=\footnotesize] [align=left] {\mbox{-}13};
% Text Node
\draw (562,293) node [anchor=north west][inner sep=0.75pt]   [align=left] {0};
% Text Node
\draw (582,293) node [anchor=north west][inner sep=0.75pt]  [font=\footnotesize] [align=left] {7/2};
% Text Node
\draw (462,233) node [anchor=north west][inner sep=0.75pt]   [align=left] {1};
% Text Node
\draw (482,253) node [anchor=north west][inner sep=0.75pt]   [align=left] {1};
% Text Node
\draw (502,273) node [anchor=north west][inner sep=0.75pt]   [align=left] {1};
% Text Node
\draw (522,293) node [anchor=north west][inner sep=0.75pt]   [align=left] {1};
% Text Node
\draw (522,293) node [anchor=north west][inner sep=0.75pt]   [align=left] {1};
% Text Node
\draw (462,253.33) node [anchor=north west][inner sep=0.75pt]   [align=left] {3};
% Text Node
\draw (462,273.33) node [anchor=north west][inner sep=0.75pt]   [align=left] {1};
% Text Node
\draw (462.02,293.32) node [anchor=north west][inner sep=0.75pt]  [font=\footnotesize,rotate=-359.7] [align=left] {7/2};
% Text Node
\draw (181,342) node [anchor=north west][inner sep=0.75pt]   [align=left] {2};
% Text Node
\draw (201,342) node [anchor=north west][inner sep=0.75pt]   [align=left] {1};
% Text Node
\draw (221,342) node [anchor=north west][inner sep=0.75pt]   [align=left] {2};
% Text Node
\draw (241,362) node [anchor=north west][inner sep=0.75pt]   [align=left] {2};
% Text Node
\draw (241,342) node [anchor=north west][inner sep=0.75pt]   [align=left] {4};
% Text Node
\draw (181,362) node [anchor=north west][inner sep=0.75pt]   [align=left] {0};
% Text Node
\draw (201,362) node [anchor=north west][inner sep=0.75pt]   [align=left] {\mbox{-}1};
% Text Node
\draw (221,362) node [anchor=north west][inner sep=0.75pt]   [align=left] {0};
% Text Node
\draw (181,382) node [anchor=north west][inner sep=0.75pt]   [align=left] {0};
% Text Node
\draw (201,382) node [anchor=north west][inner sep=0.75pt]   [align=left] {3};
% Text Node
\draw (221,402) node [anchor=north west][inner sep=0.75pt]   [align=left] {\mbox{-}4};
% Text Node
\draw (221,382) node [anchor=north west][inner sep=0.75pt]   [align=left] {1};
% Text Node
\draw (241,382) node [anchor=north west][inner sep=0.75pt]   [align=left] {1};
% Text Node
\draw (241,402) node [anchor=north west][inner sep=0.75pt]  [font=\footnotesize] [align=left] {\mbox{-}13};
% Text Node
\draw (181,402) node [anchor=north west][inner sep=0.75pt]   [align=left] {0};
% Text Node
\draw (201,402) node [anchor=north west][inner sep=0.75pt]  [font=\footnotesize] [align=left] {7/2};
% Text Node
\draw (32,342) node [anchor=north west][inner sep=0.75pt]   [align=left] {1};
% Text Node
\draw (52,362) node [anchor=north west][inner sep=0.75pt]   [align=left] {1};
% Text Node
\draw (72,382) node [anchor=north west][inner sep=0.75pt]   [align=left] {1};
% Text Node
\draw (92,402) node [anchor=north west][inner sep=0.75pt]   [align=left] {1};
% Text Node
\draw (92,402) node [anchor=north west][inner sep=0.75pt]   [align=left] {1};
% Text Node
\draw (32,362.33) node [anchor=north west][inner sep=0.75pt]   [align=left] {3};
% Text Node
\draw (32,382.33) node [anchor=north west][inner sep=0.75pt]   [align=left] {1};
% Text Node
\draw (32.02,402.32) node [anchor=north west][inner sep=0.75pt]  [font=\footnotesize,rotate=-359.7] [align=left] {7/2};
% Text Node
\draw (291,370) node [anchor=north west][inner sep=0.75pt]   [align=left] {$ $$\displaystyle R_{3} \ =\ R_{3} \ -\ ( -3) R_{2}$};
% Text Node
\draw (561,342) node [anchor=north west][inner sep=0.75pt]   [align=left] {2};
% Text Node
\draw (581,342) node [anchor=north west][inner sep=0.75pt]   [align=left] {1};
% Text Node
\draw (601,342) node [anchor=north west][inner sep=0.75pt]   [align=left] {2};
% Text Node
\draw (621,362) node [anchor=north west][inner sep=0.75pt]   [align=left] {2};
% Text Node
\draw (621,342) node [anchor=north west][inner sep=0.75pt]   [align=left] {4};
% Text Node
\draw (561,362) node [anchor=north west][inner sep=0.75pt]   [align=left] {0};
% Text Node
\draw (581,362) node [anchor=north west][inner sep=0.75pt]   [align=left] {\mbox{-}1};
% Text Node
\draw (601,362) node [anchor=north west][inner sep=0.75pt]   [align=left] {0};
% Text Node
\draw (561,382) node [anchor=north west][inner sep=0.75pt]   [align=left] {0};
% Text Node
\draw (581,382) node [anchor=north west][inner sep=0.75pt]   [align=left] {0};
% Text Node
\draw (601,402) node [anchor=north west][inner sep=0.75pt]   [align=left] {\mbox{-}4};
% Text Node
\draw (601,382) node [anchor=north west][inner sep=0.75pt]   [align=left] {1};
% Text Node
\draw (621,382) node [anchor=north west][inner sep=0.75pt]   [align=left] {7};
% Text Node
\draw (621,402) node [anchor=north west][inner sep=0.75pt]  [font=\footnotesize] [align=left] {\mbox{-}13};
% Text Node
\draw (561,402) node [anchor=north west][inner sep=0.75pt]   [align=left] {0};
% Text Node
\draw (581,402) node [anchor=north west][inner sep=0.75pt]  [font=\footnotesize] [align=left] {7/2};
% Text Node
\draw (461,342) node [anchor=north west][inner sep=0.75pt]   [align=left] {1};
% Text Node
\draw (481,362) node [anchor=north west][inner sep=0.75pt]   [align=left] {1};
% Text Node
\draw (501,382) node [anchor=north west][inner sep=0.75pt]   [align=left] {1};
% Text Node
\draw (521,402) node [anchor=north west][inner sep=0.75pt]   [align=left] {1};
% Text Node
\draw (521,402) node [anchor=north west][inner sep=0.75pt]   [align=left] {1};
% Text Node
\draw (461,362.33) node [anchor=north west][inner sep=0.75pt]   [align=left] {3};
% Text Node
\draw (461,382.33) node [anchor=north west][inner sep=0.75pt]   [align=left] {1};
% Text Node
\draw (461.02,402.32) node [anchor=north west][inner sep=0.75pt]  [font=\footnotesize,rotate=-359.7] [align=left] {7/2};
% Text Node
\draw (481,382.33) node [anchor=north west][inner sep=0.75pt]   [align=left] {\mbox{-}3};
% Text Node
\draw (221,552) node [anchor=north west][inner sep=0.75pt]   [align=left] {L =};
% Text Node
\draw (371,552) node [anchor=north west][inner sep=0.75pt]   [align=left] {U =};


\end{tikzpicture}

\end{document}
```

Il calcolo del determinante avviene, essendo che $L$ e $U$ sono due matrici triangolari, in questo modo: 
$$
\det(A) = \det(L)\cdot \det(U) 
$$
### Formalmente

#calcolo-numerico #teoria  