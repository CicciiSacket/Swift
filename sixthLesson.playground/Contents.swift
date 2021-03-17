import UIKit
//for (index,value) in myarray.enumarated l'array diventa un dizionario

var toBuy:[String:[String]] = [
    "dolci": ["gelato","biscotti","cornetto"],
    "indumenti":["maglietta","felpa","pantalone"],
    "tech":["smartphone","tv","alexa"]
]

var purchased:[String:[String]] = [
    "dolci": [],
    "indumenti":[],
    "tech":[]
]

func addToBuy (_ nameObject:String?,_ category:String?) -> [String:[String]]?{
    guard let nameObject = nameObject else{return nil} //se non c'è oggetto torna nil
    guard let category = category else {return nil} //se non c'è categoria torna nil
   
    
    if !(toBuy.keys.contains(category)){ //se la categoria non esiste torna nil altrimenti inserisce l'oggetto nella categoria, se l'oggetto esiste non fa nulla
        return nil
    }
    
    if (toBuy[category]!.contains(nameObject)){
        return toBuy
    }
    else{
        toBuy[category]!.append(nameObject)
    }
    return toBuy
}


func addToPurchased(_ nameObject:String?,_ category:String?) -> [String:[String]]?{
    guard let nameObject = nameObject else{return nil} //se non c'è oggetto torna nil
    guard let category = category else {return nil} //se non c'è categoria torna nil
   
    if !(toBuy.keys.contains(category)){return nil} //se devo comprare una cosa che non è tra quelle da acquistare torna nil
    
    purchased[category]!.append(nameObject)
    
    if toBuy[category]!.contains(nameObject) && purchased[category]!.contains(nameObject){ //se l'ho già comprato lo levo dalla lista degli acquisti
        if let index = toBuy[category]!.firstIndex(of: nameObject){ //per ricavare l'indice dell'oggetto parametro
        toBuy[category]!.remove(at: index)
        }
    }
    return toBuy
}

func main()->Void{
    if let addtoBuy = addToBuy("nutella", "dolci"){
        print("Lista acquisti dopo aver aggiunto un prodotto da acquistare: \n  \(addtoBuy)")
    }
    if let addtoPurchase = addToPurchased("nutella", "dolci"){
        print("Lista acquisti dopo che ho comprato un prodotto: \n \(addtoPurchase)")
    }
    print("Lista prodotti acquistati: \n \(purchased)")
    
}
print(main())
