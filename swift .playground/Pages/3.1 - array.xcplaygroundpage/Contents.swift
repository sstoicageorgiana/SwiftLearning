import UIKit
//MARK: - arrays(matrice), sets, and dictionaries

//- matrice: lista ordonata de valori (conteaza ordineaz adaugarii ); care se pot repeta; indecsi  incep de la 0;



//se transmite prin valoare
//three primary collection types=> arrays(matrice), sets, and dictionarie

//un array, set sau dictionar odata creat si atribuit unei constante este imutabul, daca este atribuit unei variabile este mutabil


//MARK: 1.1- Array - Matrice

//O matrice stochează valori de același tip într-o listă ordonată, aceste valori pot aparea de mai multe ori în poziții diferite.



//Crearea unei matrice goale - Empty Array

var someInts: [Int] = []
//print(someInts.count)
//print("someInts if of type [Int] with \(someInts.count) items")

someInts.append(3)
// someInts now contains 1 value of type Int
someInts = []
// someInts is now an empty array, but is still of type [Int]


var primulMeuArray: [Int] = [1, 2, 3]

if primulMeuArray.isEmpty {
    print("Array-ul este gol")
} else{
    print("Array-ul nu este gol")
}



//MARK: - 1.2  array cu o valoare implicită - Creating an Array with a Default Value

//let array = Array(repeating: valoare, count: numar)

//repeating: Valoarea pe care vrei să o folosești pentru fiecare element din array.
//count: Numărul de elemente din array.

var threeDoubles = Array(repeating: 0.0, count: 3)

//MARK: - 1.3  Crearea unei matrice prin adăugarea a două matrice împreună - Creating an Array by Adding Two Arrays Together

var array1 = Array(repeating: 0.0, count: 3) //=> [0.0, 0.0, 0.0]
var array2 = Array(repeating: 1.0, count: 3) //=> [1.0, 1.0, 1.0]
var array3 = array1 + array2 //=================> [0.0, 0.0, 0.0, 1.0, 1.0, 1.0]

var array4 = [1, 2, 3]
var array5 = [4, 5, 6]
var array6 = array4 + array5 //=> [1, 2, 3, 4, 5, 6]


//MARK: - 1.4  array cu stringuri - Crearea unui Array cu un Array Literal

var listaDeCumparaturi: [String] = ["lapte", "oua"] //“an array of string values”

//sau fara adnotatie pentru ca swift isi da seama ca este array de string-uri:

var listaCumparaturiFaraAdnotatie = ["lapte", "oua"]

//MARK: - 1.5  Accesarea și modificarea unei matrice - Accessing and Modifying an Array

var listaCumparaturi: [String] = ["lapte", "oua"]

// CATI ITEMI SUNT IN ARRAY
listaCumparaturi.count
print("Lista de cumparaturi contine \(listaCumparaturi.count) produs")
print("Lista de cumparaturi contine \(listaCumparaturi.count) \(listaCumparaturi.count > 1 ? "produse" : "produs")" )


//VERIFICARE DACA ARRAY ESTE GOL
if listaCumparaturi.isEmpty {
    print("Lista de cumparaturi este goala")
}else {
    print("Lista de cumparaturi contine \(listaCumparaturi.count) \(listaCumparaturi.count >= 2 ? "produse" : "produs") ")
}


//ADAUGARE ELEMENT IN ARRAY - la final cu APPEND
listaCumparaturi.append("faina")
print(listaCumparaturi)

listaCumparaturi += ["banane"]


//ACCESARE VALOARE ARRAY
let primulProdus = listaCumparaturi[0]


//SUPRASCRIERE IN ARRAY - SUBSCRIPT SYNTAX
listaCumparaturi[0] = "mere"
print(listaCumparaturi)
//ca sa fct trebuie sa fie un index valid, existent

//listaCumparaturi = ["mere", "oua", "faina", "banane"]
listaCumparaturi[1...3] = ["pomelo"] //=> listaCumparaturi = ["mere", "pomelo"]
//listaCumparaturi[1...3] = ["pomelo", "banane", "pomelo", "banane"]


//INSERARE LA UN INDEX SPECIFIC
listaCumparaturi
listaCumparaturi.insert("zahar", at: 1)
listaCumparaturi.insert("dulciuri", at: 2)
listaCumparaturi.insert("chipsuri", at: 4)
listaCumparaturi.insert("chipsuri2", at: 5)


//STERGERE LA UN INDEX SPECIFIC

//dupa index
let removedItem = listaCumparaturi.remove(at: 1)
print(removedItem)
listaCumparaturi.remove(at: 4)

//la sfarsit
listaCumparaturi.removeLast()


//MARK: - 1.5 ITERARE PRIN ARRAY

for produs in listaCumparaturi {
    print(produs)
}

//daca se doreste si pozitia in array se foloseste astfel  enumerated() :
for (index,produs) in listaCumparaturi.enumerated() {
    print(" Indexul este: \(index), iar produsul este: \(produs)" )
}


//ACCESARE PRIMUL SI ULTIMUL index
listaCumparaturi.first
listaCumparaturi.last



//CHESTII GASITE PE OPEN AI


var array = [1, 2, 3]
array.removeAll() // sterge toate elementele


if array.isEmpty { //verifica daca e gol
    print("Array-ul este gol")
}

array = [1, 2, 3]
if array.contains(3) { //verifica daca contine un anumit element
    print("Array-ul conține 3")
}

var sortedArray = [2,8,4,2]
sortedArray = sortedArray.sorted() //sorteaza elementele

var sortedArrayLiteral = ["a", "d", "c", "b"]
sortedArrayLiteral = sortedArrayLiteral.sorted()



//MARK:

/*
 Sigur! 🚀 **Iată 100 de întrebări despre `Array` pentru un interviu Swift la nivel junior**, exact după modelul întrebărilor despre `Set`.

 ---

 ## **📌 100 de Întrebări pentru un interviu Swift (nivel junior) despre `Array`**

 ### **🔹 Cunoștințe de bază despre `Array` (1-20)**
 1️⃣ Ce este un `Array` în Swift?
 2️⃣ Cum creezi un `Array` în Swift?
 3️⃣ Cum creezi un `Array` gol?
 4️⃣ Care este diferența dintre `Array` și `Set`?
 5️⃣ Poate un `Array` să conțină duplicate?
 6️⃣ Cum adaugi un element într-un `Array`?
 7️⃣ Cum elimini un element dintr-un `Array`?
 8️⃣ Cum verifici dacă un `Array` conține un anumit element?
 9️⃣ Cum verifici dimensiunea unui `Array`?
 🔟 Cum verifici dacă un `Array` este gol?
 1️⃣1️⃣ Care este diferența dintre `.count` și `.isEmpty`?
 1️⃣2️⃣ Cum poți itera printr-un `Array`?
 1️⃣3️⃣ Cum verifici dacă două `Array`-uri sunt egale?
 1️⃣4️⃣ Cum sortezi un `Array`?
 1️⃣5️⃣ Cum inversezi ordinea elementelor într-un `Array`?
 1️⃣6️⃣ Cum poți accesa primul și ultimul element dintr-un `Array`?
 1️⃣7️⃣ Ce se întâmplă dacă încerci să accesezi un index care nu există într-un `Array`?
 1️⃣8️⃣ Cum verifici dacă un `Array` este ordonat?
 1️⃣9️⃣ Cum transformi un `Array` într-un `Set`?
 2️⃣0️⃣ Cum transformi un `Array` într-un `String` unde elementele sunt separate prin `,`?

 ---

 ### **🔹 Operațiuni pe `Array` (21-40)**
 2️⃣1️⃣ Cum adaugi mai multe elemente într-un `Array` deodată?
 2️⃣2️⃣ Cum elimini toate elementele dintr-un `Array`?
 2️⃣3️⃣ Cum accesezi un element dintr-un `Array` fără să folosești un index?
 2️⃣4️⃣ Cum obții un sub-`Array` dintr-un `Array` existent?
 2️⃣5️⃣ Cum poți elimina duplicatele dintr-un `Array`?
 2️⃣6️⃣ Cum combini două `Array`-uri într-unul singur?
 2️⃣7️⃣ Ce metodă folosești pentru a afla elementele comune dintre două `Array`-uri?
 2️⃣8️⃣ Ce metodă folosești pentru a afla diferența dintre două `Array`-uri?
 2️⃣9️⃣ Cum verifici dacă un `Array` conține doar numere pare?
 3️⃣0️⃣ Cum poți filtra elementele unui `Array`?
 3️⃣1️⃣ Care este diferența dintre `.first(where:)` și `.filter(_:)`?
 3️⃣2️⃣ Cum verifici dacă un `Array` conține doar elemente `String`?
 3️⃣3️⃣ Cum folosești `.compactMap(_:)` pe un `Array`?
 3️⃣4️⃣ Cum folosești `.map(_:)` pe un `Array`?
 3️⃣5️⃣ Cum folosești `.reduce(_:_:)` pe un `Array`?
 3️⃣6️⃣ Cum transformi un `Array` într-un `Dictionary`?
 3️⃣7️⃣ Cum folosești `.contains(_:)` pe un `Array`?
 3️⃣8️⃣ Cum verifici dacă un `Array` conține un anumit număr de elemente?
 3️⃣9️⃣ Cum compari două `Array`-uri pentru a vedea care este mai mare?
 4️⃣0️⃣ Cum poți inversa un `Array` folosind `.reversed()`?

 ---

 ### **🔹 Proprietăți și funcționalități ale `Array` (41-60)**
 4️⃣1️⃣ Care este complexitatea operațiunilor de bază (`insert`, `remove`, `contains`) într-un `Array`?
 4️⃣2️⃣ Care este diferența dintre `append(_:)` și `insert(_:at:)`?
 4️⃣3️⃣ Cum adaugi un element la începutul unui `Array`?
 4️⃣4️⃣ Cum elimini primul element dintr-un `Array`?
 4️⃣5️⃣ Cum elimini ultimul element dintr-un `Array`?
 4️⃣6️⃣ Cum elimini un element dintr-un `Array` pe baza indexului său?
 4️⃣7️⃣ Cum creezi un `Array` cu valori implicite?
 4️⃣8️⃣ Cum verifici dacă două `Array`-uri sunt identice fără `==`?
 4️⃣9️⃣ Cum convertești un `Array` de `Int` într-un `Array` de `String`?
 5️⃣0️⃣ Cum verifici dacă un `Array` conține un `nil`?
 5️⃣1️⃣ Cum faci un `Array` imutabil?
 5️⃣2️⃣ Cum verifici dacă un `Array` este gol fără `.isEmpty`?
 5️⃣3️⃣ Cum verifici dacă un `Array` conține un anumit element folosind `contains(where:)`?
 5️⃣4️⃣ Cum verifici dacă toate elementele dintr-un `Array` îndeplinesc o condiție?
 5️⃣5️⃣ Cum verifici dacă cel puțin un element dintr-un `Array` îndeplinește o condiție?
 5️⃣6️⃣ Cum obții numărul de apariții ale unui element într-un `Array`?
 5️⃣7️⃣ Cum compari două `Array`-uri ignorând ordinea elementelor?
 5️⃣8️⃣ Cum extragi elementele unice dintr-un `Array`?
 5️⃣9️⃣ Cum verifici dacă două `Array`-uri au cel puțin un element comun?
 6️⃣0️⃣ Cum poți genera un `Array` cu valori random?

 ---

 ### **🔹 Utilizări practice ale `Array` (61-100)**
 6️⃣1️⃣ Cum poți genera un `Array` cu numere de la 1 la 10?
 6️⃣2️⃣ Cum elimini toate aparițiile unui element dintr-un `Array`?
 6️⃣3️⃣ Cum sortezi un `Array` de `String` în ordine inversă?
 6️⃣4️⃣ Cum sortezi un `Array` de obiecte personalizate?
 6️⃣5️⃣ Cum poți folosi `sorted(by:)` pe un `Array`?
 6️⃣6️⃣ Cum verifici dacă un `Array` conține un element folosind `first(where:)`?
 6️⃣7️⃣ Cum verifici dacă un `Array` conține doar litere mari?
 6️⃣8️⃣ Cum creezi un `Array` bidimensional?
 6️⃣9️⃣ Cum extragi toate elementele pare dintr-un `Array` de `Int`?
 7️⃣0️⃣ Cum transformi un `Array` de `String` într-un singur `String` concatenat?
 7️⃣1️⃣ Cum folosești `joined(separator:)` pe un `Array`?
 7️⃣2️⃣ Cum convertești un `Array` într-un `Set` pentru a elimina duplicatele?
 7️⃣3️⃣ Cum folosești `contains(where:)` pentru a verifica o condiție într-un `Array`?
 7️⃣4️⃣ Cum folosești `reduce(_:_:)` pentru a calcula suma unui `Array`?
 7️⃣5️⃣ Cum extragi elementele care încep cu o anumită literă dintr-un `Array`?
 7️⃣6️⃣ Cum sortezi un `Array` de `Double` în ordine descrescătoare?
 7️⃣7️⃣ Cum verifici dacă un `Array` conține un `nil` fără `contains(nil)`?
 7️⃣8️⃣ Cum compari două `Array`-uri pe baza lungimii lor?
 7️⃣9️⃣ Cum sortezi un `Array` în ordine alfabetică ignorând literele mari?
 8️⃣0️⃣ Cum verifici dacă un `Array` conține elemente duplicate?

 ---

 📌 **Aceste întrebări sunt perfecte pentru un interviu Swift la nivel junior!** Le poți exersa și reveni cu întrebări. 🚀😊
 */

