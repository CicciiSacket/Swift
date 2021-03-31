import UIKit

//classe negoziante -> mostrare tutte le categorie, mostrare tutti i prodotti, mostrare i prodotti per categoria, vendere un prodotto, aggiungere un prodotto;
//MAIN -> richiedere la lista di tutti i prodotti del negoziante, richiedere la lista di tutte le categorie, richiedere prodotti a seconda della categoria, comprare un prodotto (aggiungerlo nel suo [carrello:[]]) e toglierlo dallo scaffale (remove to products);

var products:[String:[String]] = [
    "cibo": ["gelato","biscotti","cornetto"],
    "indumenti": ["maglietta","felpa","pantalone"],
    "tech": ["smartphone","tv","alexa"]
]


