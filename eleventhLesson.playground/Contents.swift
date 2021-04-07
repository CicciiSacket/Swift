import UIKit

//down casting passaggio di tipo dal genitore al figlio
//var mario:classePadre = classeFiglio.init()
//mario.prorpietaCheEsisteInPadre ok
//mario.prorpietaCheEsisteInFiglio errore
//si fa quindi il casting: ->
//var pluto = mario as! classeFiglio, in questo modo abbiamo le proprieta della classe figlia; il ! serve per forzare il castin [CASTING NORMALE]
//se piuttosto che ! usiamo il ? il down casting si dice opzionale, non forzo il casting
//si puo usare is (if items is type) per controllare se è di una classe o meno e restituisce un booleano

// -- ESERCIZIO --

class Fruits {
    var price: Double
    var color: String
    
    init(_ price: Double,_ color: String) {
        self.price = price
        self.color = color
    }
}

class Apple: Fruits {
    var brand: String
    
    init(_ brand: String,_ price: Double,_ color: String) {
        self.brand = brand
        super.init(price, color)
    }
}

class Pear: Fruits {
    var brand: String
    
    init(_ brand: String,_ price: Double,_ color: String) {
        self.brand = brand
        super.init(price, color)
    }
}

class Orange: Fruits {
    var brand: String
    
    init(_ brand: String,_ price: Double,_ color: String) {
        self.brand = brand
        super.init(price, color)
    }
}

class Fruttivendolo {
    var mele: [Apple] = []
    var pere: [Pear] = []
    var arancie: [Orange] = []
    var fruits: [Fruits] = []
    
    init(_ fruits: [Fruits]) {
        self.fruits = fruits
    }
    
    func returnType() -> String {
        for item in fruits {
            if item is Apple {
                mele.append(item as! Apple)
            }
            else if item is Pear {
                pere.append(item as! Pear)
            }
            else if item is Orange {
                arancie.append(item as! Orange)
            }
        }
        return " \(mele.count) apple \n \(pere.count) pear \n \(arancie.count) orange "
    }
}

func main() {
    let mela = Apple.init("Melinda", 2.0, "red")
    let mela2 = Apple.init("Fuij", 2.1, "yellow")
    let pera = Pear.init("marcaDellePere", 2.5, "green")
    let arancia = Orange.init("Arancia Rosaria", 1.8, "orange")

    let daPippo = Fruttivendolo.init([mela,pera,arancia,mela2])
    print(daPippo.returnType())
}
main()

