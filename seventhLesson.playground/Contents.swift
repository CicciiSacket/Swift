import UIKit
var nelloscaffale:[String:[String]] = [
    "dolci": ["gelato","biscotti","cornetto"],
    "indumenti": ["maglietta","felpa","pantalone"],
    "tech": ["smartphone","tv","alexa"]
]
var coseComprate: [String] = []

func findWithoutCategory (_ nameObject:String?) -> [String]? { //trovo l'oggetto dentro il supermercato senza sapere lo scaffale, lo prendo quando lo trovo e me lo compro
    guard let nameObject = nameObject else{return nil}
    for (key, value) in nelloscaffale {
        if value.contains(nameObject) {
            if let index = nelloscaffale[key]!.firstIndex(of: nameObject) {
                coseComprate.append(nameObject)
                nelloscaffale[key]!.remove(at: index)
            }
        }
    }
    return coseComprate
}
func main() ->Void {
    if let findWithoutCategory = findWithoutCategory("felpa") {
            print(findWithoutCategory)
    }
    print(nelloscaffale)
}


//OOP
//se ho una classe dove ho una proprietà non opzional e una optional, nell'init non posso mai omettere la proprietà che NON è optional!
// non può esistere una classe senza init dove ci sono proprietà non optional!

class User {
    var name:String? //dato che ho messo var posso cambiare il nome di un oggetto dopo averlo istanziato
    var surname:String?
    var sex:String?
    
    init(_ name:String,_ surname:String,_ sex:String) { //come se fosse un costruttore
        self.name = name
        self.surname = surname
        self.sex = sex
    }
}

var Mario = User("Mario","Rossi","M")
if let name = Mario.name{ //perché é optional
    print(name)
}

//create three class for next lesson

class Animal{
    var type:String?
    var name:String?
    init() {}
}
var aron = Animal()
aron.name = "aron"
if let name = aron.name{ //perché é optional
    print(name)
}

class Cane {
    var razza:String
    var name:String
    
    init(_ razza:String,_ name:String) {
        self.razza = razza
        self.name = name
    }
}
var aronuccio = Cane("labrador", "aron")
var name = aronuccio.name //perché é optional
print(name)

