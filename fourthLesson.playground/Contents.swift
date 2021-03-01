import UIKit

//Funzioni!
func greetP(person:String) -> String{
    let greeting = "Hello \(person)"
    return greeting
}
print(greetP(person: "Mario"))
func greetPLabelName(_ person:String) -> String{ //mettendo il _ prima del nome del parametro posso evitare di metterci il nome quando lo richiamo
    let greeting = "Hello \(person)"
    return greeting
}
print(greetPLabelName("mario"))
func greetPLabelNameWith(_ person:String, secondPerson:String = "lucia") -> String{ //mettendo il _ prima del nome del parametro posso evitare di metterci il nome,  quando lo richiamo, il secondo parametro è di default
    let greeting = "Hello \(person), and hello \(secondPerson)"
    return greeting
}
print(greetPLabelNameWith("pippo"))

//funzioni senza parametri di ingresso con ritorno
func syHello () ->String{
    return "Hello word"
}
print(syHello())

//funzioni senza un tipo di ritorno
func greet(person:String){
    print("Hello \(person)")
}
print(greet(person: "Mario"))

//funzioni con più parametri in ingresso e uno in uscita
func greetM (person:String,age:Int) ->String{
    return "\(person) have \(age) age"
}
print(greetM(person: "Pippo", age: 20))

//funzioni con ritorno multiplo
func minMax (array:[Int]) -> (min:Int,max:Int){
    var currentMin = array[0]
    var currentMax = array[0]
    for value in array[1..<array.count]{
        if (value < currentMin){
            currentMin = value
        }
        else if value > currentMax {
            currentMax = value
        }
    }
    return (currentMin, currentMax)
}
print(minMax(array: [1,2,3,4,5,6,7,8,9,10]))

//Esercizio babbo delle 10:30
func mult(number:Float)->Float{
    return number*number
}
print(mult(number: 11))

//Esercizio 1
func counter (array:[Int])->String{
    return "L'array ha \(array.count) elementi"
}
print(counter(array:[1,2,3,4]))

func esDue (array:[Int])->[Int]{
    var array2: [Int] = []
    for value in array{
        array2.append(value * 3)
    }
    return array2
}
print(esDue(array:[1,2,3,4]))

var dictDev:[String:Int] = ["Mario":31, "Pippo":23, "Toty":19,"Alberto":29]
func ageDev (dictDev: [String:Int])->[String:Int]{
    var min24:[String:Int] = [:]
    for item in dictDev{
        if item.value < 24{
            min24.updateValue(item.value, forKey: item.key)
        }
    }
    return min24
}
print(ageDev(dictDev:dictDev))

//funzioni con optional come return type
func minMaxOpt (array:[Int]) -> (min:Int,max:Int)?{
    if array.isEmpty {return nil}
    var currentMin = array[0]
    var currentMax = array[0]
    for value in array[1..<array.count]{
        if (value < currentMin){
            currentMin = value
        }
        else if value > currentMax {
            currentMax = value
        }
    }
    return (currentMin, currentMax)
}
print(minMaxOpt(array: [1,2,3,4,5,6,7,8,9,10])!)
func sumOpt(_ x:Float?,_ y:Float?) -> Float?{
    if let x = x, let y = y{
        return x + y
    }
    else{
        return nil
    }
  
}
print(sumOpt(3,2)!)

//Esercizio 4
func avarage(_ array:[Int]) -> Float{
    var sum = 0
    for item in array {
        sum += item
    }
    let result = Float(sum / array.count)
    return result
}
print(avarage([2,2,2]))

//Esercizio 5
func prefix(_ phoneNumber:Int,_ prefixNumber:String)->String{
    switch prefixNumber {
    case "0039":
        return "\(phoneNumber) is a Italian number"
    case "0070":
        return "\(phoneNumber) is a UK number"
    default:
        return "prefix not found"
    }
}
print(prefix(3337575035,"0039"))
print(prefix(3317125035,"0070"))
print(prefix(3337175435,"0011"))

