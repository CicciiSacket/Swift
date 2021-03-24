import UIKit

class Dev{
    var name:String?
    init(_ name:String) {self.name = name}
}
var Pippo:Dev = Dev.init("Pippo")
var teams:[Dev] = [] //La classe è un tipo di dato, questo è un array di Dev!
teams.append(Pippo)

//Esercizio: il 'fruttivendolo' deve essere in grado di stampare il numero dei frutti in suo possesso; stampare il valore totale del fruttivendolo; vendere un frutto e rimuoverlo dal suo array(camioncino)

class frutta {
    var name:String?
    var peso:Float?
    var price:Float?
    var id:String?
    init(_ name:String,_ peso:Float,_ price:Float,_ id:String) {
        self.name = name
        self.peso = peso
        self.price = price
        self.id = id
    }
}

class fruttivendolo {
    var frutti:[String:[frutta]]?
    var totalValue:Double?
    init(_ frutti:[String:[frutta]],_ totalValue:Double = 0.0) {
        self.frutti = frutti
        self.totalValue = totalValue
    }
    
    func numberOfFruits() -> String {
        return "\(frutti!.capacity)"
    }
    
    func valueOfFruits() -> String {
        for item in frutti!.values {
            for i in item {
                self.totalValue = self.totalValue! + Double(i.price!)
            }
        }
        return "\(self.totalValue!)"
    }
    
    func sendFruits(_ keys:String?) -> [String:[frutta]]? {
        guard let keys = keys else{return nil}
        frutti![keys]!.removeLast()
        return frutti!
    }
}

func main() {
    let mela = frutta ("mela",100.00,1,"01")
    let mela2 = frutta ("mela",101.00,1,"01")
    let pera = frutta ("pera",120.10,1.2,"02")
    let banana = frutta ("banana",80,2,"05")
    let DaMario = fruttivendolo (["mele":[mela,mela2],"pere":[pera],"banane":[banana]])
    
    print("\(DaMario.numberOfFruits()) è il numero totale di frutti che ha il fruttivendolo")
    print("\(DaMario.valueOfFruits()) è il valore totale dei frutti che ha il fruttivendolo")
    print("\(DaMario.sendFruits("mele")!) -> fruttivendolo dopo aver venduto un prodotto")
}

main()
