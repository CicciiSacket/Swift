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
main()
