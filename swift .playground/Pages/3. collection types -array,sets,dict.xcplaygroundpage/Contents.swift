import UIKit
//MARK: - arrays(matrice), sets, and dictionaries

//- matrice: lista ordonata de valori (conteaza ordinea adaugarii ); care se pot repeta; indecsi  incep de la 0;

//se transmite prin valoare
//three primary collection types=> arrays(matrice), sets, and dictionaries, for storing collections of values
//un array, set sau dictionar odata creat si atribuit unei constante este imutabul, daca este atribuit unei variabile este mutabil


//MARK: 1.1- Array - Matrice

//O matrice stochează valori de același tip într-o listă ordonată.
//Aceeași valoare poate apărea într-o matrice de mai multe ori în poziții diferite.


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


//ITERARE PRIN ARRAY

for produs in listaCumparaturi {
    print(produs)
}

//daca se doreste si pozitia in array se foloseste astfel :
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





