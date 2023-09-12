### Intuizione



### Formalmente
Cerchiamo gli zeri di funzione, 
Sia $f(x)$ derivabile poniamo $f(x)= \varphi(x) -d = 0$ 
ossia cerchiamo vogliamo cercare quelle $x$ tali per cui calcolate in $\varphi$ ci danno $d$ 

se $\varphi(x)$ è invertibile allora il problema $\varphi (x)-d = 0$ ammette soluzione infatti basta portare la $d$ a desta ottenendo $\varphi(x) = d$ e calcolare l'inversa su entrambi i membri ottenendo 
$$
\varphi ^{-1}(\varphi(x)) = \varphi ^{-1}(d) \implies x = \varphi ^{-1}(d)
$$
Possiamo ora riscrivere il [[Problema matematico]] $F(x,d)=0$  come $F(\varphi ^{-1}(d),d) )= 0$ 

se $x = \varphi ^{-1}(d)$ allora aggiungendo una perturbazione otterremo che $x + \delta x=\varphi ^{-1}(d+\delta d)$ 

Possiamo quindi ricavarci $\delta x$, per farlo basta sottrarre ad ambedue i membri $x$ (che sappiamo essere $\varphi ^{-1}(d)$)
Otteniamo quindi 

$$
\delta x = \varphi ^{-1}(d+\delta d)-\varphi ^{-1}(d)
$$
Ora se guardiamo attentamente, questa assomiglia tanto al pezzo superiore del limite del rapporto incrementale! 
procediamo a fare qualche aggiustamento, e aggiungiamo e moltiplichiamo per $\frac{\delta d}{\delta d}$ che è come moltiplicare per $1$ 
$$
\frac{\varphi ^{-1}(d+\delta d)-\varphi ^{-1}(d)}{\delta d} \delta d
$$
E quindi, per $\delta d \to  0$ otteniamo 
$$
(\varphi ^{-1}(d))'\delta d + \mathcal{o}({\| \delta d \|}) 
$$
dove $\mathcal{o}({\| \delta d \|})$ rappresenta un errore che diventa trascurabile quando $\delta d \to 0$ 

da quanto abbiamo appena ottenuto e da questa relazione (data dalla relazione nota "la derivata di una funzione inversa") (ps non ho capito bene come facciamo a fare questo passaggio)
$$
{\left(\varphi^{-1}(d)\right)^{\prime}=\frac1{\varphi^{\prime}(x)}=\frac1{f^{\prime}(x)}}
$$
Otteniamo l'indice di condizionamento 
$$
{K(d)}=\sup_{\delta d\in D}\frac{\left|\delta x\right|/\left|x\right|}{\left|\delta d\right|/\left|d\right|}\cong\frac{\left|\left(\varphi^{-1}\right)^{\prime}(d)\delta d/\left(\varphi^{-1}\right)(d)\right|}{\left|\delta d\right|/\left|d\right|}\cong\frac{\left|d\right|}{\left|x\right|\left|f^{\prime}(x)\right|}
$$
Abbiamo quindi che 

$$
\begin{align}
& K_{rel}(d)\cong\frac{|d|}{|x\|f^{\prime}(x)|}  \\ \\

& K_{abs}(d)\cong\frac1{\left|f^{\prime}(x)\right|} 
\end{align}
$$
Quindi il problema $f(x) = 0$ è mal condizionato se$f'(x) \cong 0$ mentre ben condizionato se $f'(x) \gg 0$ ossia $f'(x)$ è significativamente più grande di $0$

#calcolo-numerico #teoria #⏳ 