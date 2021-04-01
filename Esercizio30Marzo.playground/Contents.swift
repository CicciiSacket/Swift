import UIKit

class Shopkeeper {
    var products: [String:[String]]
    
    init(_ products: [String:[String]]) { //negoziante
        self.products = products
    }
    
    func AllCategory() -> Dictionary<String,[String]>.Keys  { //categorie disponibili
        return products.keys
    }
    
    func AllProducts() -> Dictionary<String,[String]>.Values  { //prodotti disponibili
        return products.values
    }
    
    func shopkeeperView() -> [String:[String]] { //tutti i prodotti per categoria
        return products
    }
    
    func viewForKey(_ key:String?) -> [String]? { //prodotti di una sola categoria che cerchiamo
        guard let key = key else {return nil}
        for (keys,_) in products {
            if keys == key {
                return products[keys]
            }
        }
        return ["Not Found"]
    }
    
    func sellProduct(_ category: String?,_ singleProducts:String) -> String? { //vendita di un prodotto
        guard let category = category else { return nil }
        if !products.keys.contains(category){ return "Category not found!" }
        if products[category]!.contains(singleProducts) {
            if let index = products[category]!.firstIndex(of: singleProducts) {
                products[category]!.remove(at: index)
                return "\(singleProducts) it has been sold!"
            }
        }
        return "Products not found!"
    }
    
    func addProduct(_ category: String?,_ singleProducts:String) -> String? { //aggiunta di un prodotto
        guard let category = category else { return nil }
        if !products.keys.contains(category){ return "Category not found!" }
        if (products[category]!.contains(singleProducts)) {
            return "Product already exist"
        }
        products[category]!.append(singleProducts)
        return "\(singleProducts) insert into \(products[category]!)"
    }
}

class User {
    var purchasedProducts: [String]
    
    
    init(_ purchasedProducts: [String] = []) { //utente
        self.purchasedProducts = purchasedProducts
    }
    
    func listOfProducts(_ shopkeeper: Shopkeeper) -> Dictionary<String,[String]>.Values { //lista dei prodotti di un negozio
        return shopkeeper.AllProducts()
    }
    
    func listOfCategory(_ shopkeeper: Shopkeeper) -> Dictionary<String,[String]>.Keys { //lista delle categorie di un negozio
        return shopkeeper.AllCategory()
    }
    
    func productForCategory(_ shopkeeper: Shopkeeper,_ key: String) -> [String]? { //lista dei prodotti per categoria di un negozio
        return shopkeeper.viewForKey(key)
    }
    
    func buyProducts(_ shopkeeper: Shopkeeper,_ category: String,_ singleProducts:String?) -> String? { //aquisto di un prodotto
        guard let singleProducts = singleProducts else { return nil }
        shopkeeper.sellProduct(category, singleProducts)
        self.purchasedProducts.append(singleProducts)
        return "Insert into purchased products "
    }
}

var products:[String:[String]] = [
    "cibo": ["gelato","biscotti","cornetto"],
    "indumenti": ["maglietta","felpa","pantalone"],
    "tech": ["smartphone","tv","alexa"]
]
var purchasedProducts:[String:[String]] = [:]

func main() {
    
    let shopkeeper1 = Shopkeeper.init(products)
    shopkeeper1.AllCategory()
    shopkeeper1.AllProducts()
    shopkeeper1.shopkeeperView()
    shopkeeper1.viewForKey("pippo")
    shopkeeper1.viewForKey("tech")
    shopkeeper1.sellProduct("cibo", "gelato")!
    shopkeeper1.products
    shopkeeper1.sellProduct("cibo", "cibarie")!
    shopkeeper1.sellProduct("mario", "gelato")!
    shopkeeper1.addProduct("cibo", "pistacchio")!
    shopkeeper1.products
    shopkeeper1.addProduct("mario", "pistacchio")!
    shopkeeper1.addProduct("cibo", "pistacchio")!
    
    let user1 = User.init()
    user1.listOfProducts(shopkeeper1)
    user1.listOfCategory(shopkeeper1)
    user1.productForCategory(shopkeeper1, "cibo")
    user1.buyProducts(shopkeeper1, "indumenti", "felpa")!
    shopkeeper1.products
    user1.purchasedProducts
}

main()
