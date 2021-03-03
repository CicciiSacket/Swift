import UIKit

//Esercizio 1 [calcola media età delle ragazze e dei ragazzi]
var DictTeam : [String:(String,Int)] = [
    "Michele":("M",28),
    "Maria" : ("F",31),
    "Cicci":("M",19),
    "Sabrina":("F",24),
    "Lucia":("F",19),
    "Mario":("M",38),
    "Alberto":("M",22),
    "Luigi":("M",33)
]
func avarange(_ dict:[String:(String,Int)])->String{
    var ageB = 0
    var ageG = 0
    var countG = 0
    var countB = 0
    var resultBoy:Float = 0
    var resultGirl:Float = 0
    for student in dict{
        if student.value.0 == "M" {
            countB = countB + 1
            ageB = student.value.1 + ageB
            resultBoy = Float(ageB / countB)
        }
        if student.value.0 == "F" {
            countG = countG + 1
            ageG = student.value.1 + ageG
            resultGirl = Float(ageG / countG)
        }
    }
    return "\(resultBoy) \(resultGirl)"
}
let toPrint = avarange(DictTeam)+" Is avarange age of boy and girl."
print(toPrint)


//Esercizio 2
var city: [String:[String]] = [
    "A": ["Arezzo","Agrigento","Avellino","Asti","Ascoli"],
    "B": ["Bari","Bolzano","Bologna"],
    "C": ["Catania","Como","Cagliari"],
    "D": ["Domodossola"],
    "E": ["Empoli"]
]
func cityFilter(_ city:[String:[String]],_ text:String)->String{
    guard city.keys.contains(text) else {return "nil"}
    switch text {
    case "A":
        return "\(city[text]!)"
            case "B":
        return "\(city[text]!)"
    case "C":
        return "\(city[text]!)"
    case "D":
        return "\(city[text]!)"
    case "E":
        return "\(city[text]!)"
    default:
        return ""
    }
    
}
print(cityFilter(city,"A"))

var comune = "Asti"
print(comune.hasPrefix("As"))
