### Intuizione
Se la matrice dei coefficienti è una [[Matrice tridiagonale]] allora il [[Metodo di Gauss Seidel]] convergerà al doppio della velocità rispetto al [[Metodo di Jacobi]]  
### Formalmente
Sia $A$ una matrice tridiagonale, con gli elementi sulla diagonale principale $a_{ii} \neq 0$ allora vale quanto segue 
- se $\mu$ è un autovalore di $T_{J}$ allora $\mu ^{2}$ è un autovalore di $T_{GS}$ 
- se $\lambda$ è un autovalore di $T_{GS}$ allora $\sqrt{ \lambda }$ è un autovalore di $T_{J}$ 

Dato quanto segue abbiamo naturalmente che $\rho(T_{GS})= \rho ^{2}(T_{J})$ quindi il metodo di Gauss ha [[Tasso asintotico di convergenza]] doppio e di conseguenza converge due volte più velocemente del metodo di Jacobi


#calcolo-numerico #teoria  
[[Autovalore]]