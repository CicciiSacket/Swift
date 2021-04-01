import UIKit
/*
class Animal {
    var name:String
    
    init(_ name:String) {
        self.name = name
    }
    
    func data(){
        print(name)
    }
}

class Dog: Animal { //Dog eredita da Animal
    var pedigree: Bool = false
    
    func Bau() {
        print("Bau Bau")
    }
    
    override func data() { //sovrascrittura di un metodo della classe padre
        super.data() //viene eseguito il metodo della classe padre e poi il resto, in questo caso l'ovveride è parziale!!
        print(pedigree)
    }
}

var aron:Animal = Animal("Aron")

var aron2: Dog = Dog.init("aron") //senza costruttore la classe figlio usa il costruttore della classe padre

aron.data()

aron2.data() //ereditato dalla classe padre
aron2.Bau()

class Dog2: Animal { //Dog eredita da Animal
    var pedigree: Bool = false
    
    func Bau() {
        print("Bau Bau")
    }
    
    override func data() { //sovrascrittura di un metodo della classe padre
        print(name)//viene eseguito il metodo della classe padre e poi il resto, in questo caso l'ovveride è completo!!
        print(pedigree)
    }
}

class Dog3: Animal { //Dog eredita da Animal
    var pedigree: Bool
    
    func Bau() {
        print("Bau Bau")
    }
    
    init(_ name: String,_ pedigree: Bool ) { //costruttore della classe figlia
        self.pedigree = pedigree
        super.init(name) //va messo per ultimo perchè altrimenti genera un errore
    }
    
    override func data() { //sovrascrittura di un metodo della classe padre
        super.data() //viene eseguito il metodo della classe padre e poi il resto, in questo caso l'ovveride è parziale!!
        print(pedigree)
    }

}

var pluto: Dog3 = Dog3("pluto",false)
pluto.data()
*/

// -- ESERCIZIO --

class News {
    var title: String
    var text: String
    var datePublication: Date
    var autore:Autore
    
    init(_ title: String,_ text: String,_ datePublication: Date,_ autore:Autore) {
        self.title = title
        self.text = text
        self.datePublication = Date()
        self.autore = autore
    }
    
    func myData () -> String {
        return ("\(self.title), \(self.text), \(self.datePublication), \(self.autore.myData())")
    }
}

class videoNews: News {
    var video:Bool
    
    init(_ title: String,_ text: String,_ datePublication: Date,_ autore:Autore,_ video: Bool) {
        self.video = video
        super.init(title,text,datePublication,autore)
    }
    override func myData () -> String {
        return ("\(self.title), \(self.text), \(self.datePublication), \(self.autore.myData()),\(self.video)")
    }
}

class Autore {
    var name: String
    var surname: String
    private var url: String
    
    init(_ name: String,_ surname: String,_ url: String ) {
        self.name = name
        self.surname = surname
        self.url = url
    }
    
    var res: String {
        get {
            return self.url
        }
        set(url) {
            self.url = url
        }
    }
    
    func myData() -> String{
        return ("\(self.name), \(self.surname), \(self.res)")
    }
}

class Gestore { //aggiungere una notizia, aggiungere una notizia video, return numero di newsvideo, return news classic, tornare ultimo video o news
    var newsTotal: [String] = []
    var videoNewsTotal : [String] = []
    
    init(_ newsTotal: [String],_ videoNewsTotal : [String]) {
        self.newsTotal = newsTotal
        self.videoNewsTotal = videoNewsTotal
    }
    
    func myData () -> String {
        return("\(self.newsTotal) \n \(self.videoNewsTotal)")
    }
    
    func addNews(_ news: News) -> [String]{
        self.newsTotal.append(news.myData())
        return newsTotal
    }
    
    func addNewsVideo(_ newsVideo: videoNews) -> [String] {
        self.videoNewsTotal.append(newsVideo.myData())
        return videoNewsTotal
    }
    
    func videNewsCount() -> Int {
        return self.videoNewsTotal.count
    }
    
    func newsCount() -> Int {
        return self.newsTotal.count
    }
    
}

func main() {
    let Autore1: Autore = Autore.init("Ciccio", "Sacco", "ciccio.com")
    let news1 = News.init("PrimoArticolo", "TestoPrimoArticolo", Date(), Autore1)
    let newsVideo1 = videoNews.init("PrimoArticolo", "TestoPrimoArticolo", Date(), Autore1,true)
    let Gestore1: Gestore = Gestore.init([],[])
    
    Gestore1.addNews(news1)
    Gestore1.addNewsVideo(newsVideo1)
    Gestore1.videNewsCount()
    Gestore1.newsCount()
    Gestore1.myData()
}
main()
