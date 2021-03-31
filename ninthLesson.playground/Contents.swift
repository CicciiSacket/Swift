import UIKit

class user {
    private var voto: String //modificatore che rende inaccessibile la proprietà, non è possibile nemmeno stampare l'elemento, no lettura e scrittura
    
    init(_ voto:String) {
        self.voto = voto
    }
    
    func stampaVoto(){
        print(voto)
    }
}

var michele = user("Pippo") //michele vota per pippo

// michele.voto -> 'voto' is inaccessible due to 'private' protection level
//print(michele.voto) -> 'voto' is inaccessible due to 'private' protection level

//michele.stampaVoto() //in questo modo è possibile accedere alla proprietà


//PER RISOLVERE IL PROBLEMA IN MODO OTTIMALE SI USANO LE COMPUTED PROPERTY, OVVERO GET AND SET:

class user2 {
    private var voto: String //modificatore che rende inaccessibile la proprietà, non è possibile nemmeno stampare l'elemento, no lettura e scrittura
    
    init(_ voto:String) {
        self.voto = voto
    }
    
    //get-only //questo commento è obbligatorio!!
    var votoCorrente:String {
        get{ //prendo il valore che è di tipo private
            return self.voto
        }
        set(nuovoVoto) {
            self.voto = nuovoVoto
        }
    }
}
var pluto = user2("mario")

pluto.votoCorrente //cosi richiamo il get!!

pluto.votoCorrente = "Lucia" //cosi richiamo il set!!

pluto.votoCorrente

// - ESERCIZIO AUTO - //

let currentDateTime = Date()

class Auto {
    var targa: String
    private var prenotate:Bool
    var priceForDay:Float
    
    init(_ targa: String,_ prenotate:Bool = false,_ priceForDay:Float) {
        self.targa = targa
        self.prenotate = prenotate
        self.priceForDay = priceForDay
    }
    
    var IsPrenotate:Bool {
        get {
            return self.prenotate
        }
        set(value){
            self.prenotate = true
        }
    }
}

class AutoNoleggio {
    private var macchine:[Auto] = []
    
    init(_ macchine:[Auto]) {
        self.macchine = macchine
    }
    
    func prenotateAuto(_ targa: String, _ numeroGiorni: Int)-> String {
        var priceTotal:Float
        for item in macchine {
            if item.targa == targa && !item.IsPrenotate {
                priceTotal = Float(numeroGiorni) * item.priceForDay
                item.IsPrenotate = true
                return "\(item.targa) is prenotate for \(numeroGiorni) days for \(priceTotal)$"
            }
            if item.targa == targa && item.IsPrenotate == true{
                return "This Car is occupated for \(numeroGiorni) days"
            }
        }
        return "Error, car not found"
    }
    
//    func prenotateAutoBonus(_ targa: String, _ numeroGiorni:Int)-> String {
//        var priceTotal:Float
//        for item in macchine {
//            if item.targa == targa && item.prenotate == true{
//                priceTotal = Float(numeroGiorni) * item.priceForDay
//                print(Date.init(timeInterval: TimeInterval(numeroGiorni * 80000), since: currentDateTime))
//                return ""
//            }
//        }
//        return "Error, car not found"
//    }
}

func main() {
    let panda = Auto("AB001AA", false, 80)
    let bmw = Auto("AB001AB", true, 220)
    let daMario = AutoNoleggio([panda,bmw])
    
    print(daMario.prenotateAuto("AB001AA", 4))
    print(daMario.prenotateAuto("AB001AA", 4)) //se provi a prenotare la stessa auto non puoi perchè è già in noleggio
    print(daMario.prenotateAuto("AB001AB", 5))
    print(daMario.prenotateAuto("AB111AA", 2))
    //print(daMario.prenotateAutoBonus("AB001AA", 2))
}


main()
