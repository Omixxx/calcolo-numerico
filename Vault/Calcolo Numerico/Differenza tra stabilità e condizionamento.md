### Intuizione
La differenza sta nel fatto che, innanzitutto la stabilità fa riferimento all metodo numerico, all'algoritmo, mentre il condizionamento prescinde il metodo numerico e fa riferimento al problema. 

Il condizionamento di un problema indica quanto la soluzione del problema è sensibile alle variazioni sui dati. Un problema ben condizionato è un problema tale per cui, una piccola variazione sui dati comporta una piccola variazione sui risultati. 

La stabilità di un algoritmo indica la capacità a non amplificare l'errore iniziale. 
Un algoritmo stabile è un algoritmo che non propagherà l'errore rendendolo sempre più grande, man mano che si itera. Al contrario un algoritmo instabile è un algoritmo che amplificherà l'errore iniziale passo dopo passo 


La differenza è quindi che 
- Parliamo di stabilità per gli algoritmi e condizionamento per i problemi 
- Possiamo affrontare un problema ben condizionato ma con un algoritmo instabile, cosi come possiamo fare il contrario 
- la stabilità fa riferimento all'amplificazione dell'errore man mano che si esegue l'algoritmo, il condizionamento ci indica quanto quel problema sia sensibile a perturbazioni sui dati

### Formalmente


#calcolo-numerico #teoria  