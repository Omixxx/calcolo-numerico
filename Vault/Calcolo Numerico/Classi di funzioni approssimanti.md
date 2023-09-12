---
aliases: []
liks:
---
### Intuizione
Esistono diversi scenari in cui si vuole approssimare una funzione tramite il fitting dei dati. 
A tal proposito esistono quindi diverse tipologie di funzioni che meglio si adattano a interpolare (e quindi approssimare) diversi tipi di dati.

### Formalmente

- *Polinomi algebrici*, ottimi se stiamo approssimando in piccoli intervalli
  $$
P_n=\left\{f_n(x)=a_0+a_1x+\cdots+a_nx^n\right\}
$$
- *Polinomi trigonometrici*, ottimi per approssima funzioni periodiche, (ad esempio quelle dei segnali radio) 
  $$
{T_n=\left\{f_n(x)=a_0+\sum_{k=1}^n\left(a_k\ \cos k\omega x+b_k\ {sen\  k\omega  x}\right)\right\}}
$$
- *Funzioni razionali fratte*, chiamate anche [[Nurbs]] sono buone in caso di asintoti verticali
  $$
R_{nd}=\left\{f_n(x)=P_n(x)/P_d(x)\right\}
$$
- *Combinazione di funzioni esponenziali*, sono utili per approssimare funzioni che rappresentano una crescita o un decadimento molto veloci 
  $$
E_n=\left\{f_n(x)=\sum_{k=1}^na_ke^{-b_kx}\right\}
$$
- *Splines*, polinomi "a tratti" con proprietà di regolarità
  $$
{S_n=\{f_n(x)=spline\}}
$$ 

#calcolo-numerico #teoria  