import UIKit

//il miglior modo per accedere alle variabili optional è l'OPTIONAL BINDING [si accede in modo safe alle variabili optional].
var OptionalName:String? = "Mario Rossi"
if let name = OptionalName{ //let per dichiarare costante! Il suo scope è solo dentro l'if.
    print(name)
}
else{
    print("OptionalName has no value")
}

//TUPLE! A differenza degli array le tuple possono non essere omogenee.
let http404Error:(Int,String) = (404,"Not Found")
print(http404Error.0)
print(http404Error.1)
let (statusCode,statusMessage) = http404Error //Tupla implicita!
print(statusCode)
print(statusMessage)
let http200 = (statusCode:200,statusMessage:"OK") //Tupla esplicita con valore!
print(http200)
print(http200.statusCode)
print(http200.statusMessage)

//ARRAY! Collezione di oggetti omogeneii
var array = [1,2,3] //implicitamente ha capito che è un array di interi
var arrayEsp:[Int] = [1,2,3] //esplicitamente
var arrayEmpty = [Int]() //nodo funzionale per array vuoto
var test:[Double] = []
var test2:[String] = ["pippo","pluto"]
print(test2[0])
print(test2[1])
test2[1] = "topolino"
print(test2)
print(" la lunghezza è \(test2.count)") // per mettere in una stringa una variabile si fa "\(variabile)"

//concetanazione di due array
var test3 = ["A"]
var test4 = ["B"]
var testJoin = test3 + test4
print(testJoin)

test3 += test4//concatenazione con stesso risultato di sopra
print(test3)

//aggiungere un elemento alla coda dell'array
test3.append("ConAppend")
print(test3)

//insert
test3.insert("insert", at: 1) //inserisce e shifta di uno gli altri elementi
print(test3)

//remove
test3.remove(at: 2) //rimuove da posizione indice at
print(test3)

//iterator sugli array
for item in test3{
    print(item)
}
for (index,value) in test3.enumerated(){ //index e value dell'array ritornati come tuple
    print(index,value)
}


//DIZIONARI! collezione binaria di elementi. coppia chiave valore.
var dict = [
    "nome":"pippo",
    "cognome":"cane"
]
print(dict)
if let name = dict["nome"]{
    print(name)
}
if let surname = dict["cognome"]{
    print(surname)
}
//print(dict["nome"]!)
//print(dict["cognome"]!)
//print(dict[0]) !!ERRORE!!

var dict2 = [
    ("nome","pippo"),
    ("cognome","cane")
]
print(dict2)
print(dict2[0])

var dict3 = [
    ["nome":"pippo",
     "cognome":"cane"],
    ["nome":"mario",
     "cognome":"rossi"]
]
print(dict3)
print(dict3[0])
if let name = dict3[0]["name"]{
    print(name)
}
if let surname = dict3[1]["cognome"]{
    print(surname)
}
//print(dict3[0]["nome"]!)
//print(dict3[1]["cognome"]!)
//print(dict3[1][0]) !!ERRORE!!

//iterator nei dizionari
var dict4 = [1:"pippo",2:"mario"]
for item in dict4.keys{ //chiavi vengono messe in ordine a caso a differenza degli array, non è un problema perchè tanto è per chiave
    print(item)
}
for item in dict4{
    print(item)
}
dict4.updateValue("Lillo", forKey: 2)
print(dict4)

for (key,value) in dict{ //(key,value) è una tupla
    print(key,value)
}
for (key,value) in dict4{
    print(key,value)
}
//let array1: Set = [1,3,5,7,9]
//let array2: Set = [1,2,3]
//array1.subtracting(array2)
//print(array1)
