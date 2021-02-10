import UIKit //libreria per la UI

var str = "Hello, playground" //non ha punto e virgola e non ha tipo esplicito ma dato che è fortemente tipizzato usa la tipizzzazione automatica, safe ?enserection?.

let pippo = 2 //let è la dichiarazione di una costante, metre var una variabile; consuma meno memoria di una variabile che per definizione risulta essere mutabile a differenza di una const che è immutabile.

var pluto:Int = 3 //dichiarazione esplicita del tipo della variabile

var myStr:String? // optional, ovvero è una var nil, ha o non ha un valore. tipo nullable

myStr = "pippo"

print(myStr) //ritorna Optional("pippo")
print(myStr ?? "ciao") //dopo i ?? è il valore di default
print(myStr!) //il ! forza l'unwrap ovvero prende ciò che c'è dentro la variabile, in questo caso torna solamente pippo senza optional. Se pippo non lo avessi detto darebbe un errore perchè non ha un valore [APERTURA FORZATA] No best pratics
print(myStr)

print(str)
print(pippo)
