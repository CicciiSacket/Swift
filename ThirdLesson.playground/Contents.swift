import UIKit
 
let iosExam = ["Mario":28,"Pippo":30,"Lucia":26]

for (key,value) in iosExam{
    print("name:\(key)","valutation:\(value)") //per quanto sia a caso l'ordine dei valori è sempre uguale all'ordine dei valori
}

var dictEmpty : [Int:String] = [:]

dictEmpty[2] = "PrimoElemento"
dictEmpty[1] = "SecondoElemento"
print(dictEmpty)
dictEmpty.updateValue("SecondoElementoModificato", forKey: 1)
print(dictEmpty)

//Stamperà il valore in posizione 2 ovvero 44, perchè si parte da zero.
//La funzione append, aggiunge un elemento alla fine dell'array.
//Possiamo creare un arrau di costanti nel caso in cui necessitiamo una collezione immutabile.

//==========================//
for i in 3...8{
    print(i)
}

var number = 100
for _ in 1...4{
    number+=1
}
print(number)

var first = ["1","2","3","4"]
var second:[String] = []

for item in first{
    second.append(item)
}
print(first)
print(second)

var intArray:[Int] = []
for i in 1...5{
    intArray.append(i)
    if (i%2 == 0) {
        print(i)
    }
}

var ArrayString :[String] = ["Io","Tu","Tu","Egli"]
var ArrayString5 : [String] = []
for item in ArrayString{
    if (!ArrayString5.contains(item)){
        ArrayString5.append(item)
    }
}
print(ArrayString)
print(ArrayString5)
