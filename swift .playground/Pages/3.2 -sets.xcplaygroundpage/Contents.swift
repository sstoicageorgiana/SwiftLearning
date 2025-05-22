import UIKit


//MARK: - Seturi - SETS

//Un set stochează valori distincte de același tip într-o colecție fără o ordine definită, cand valoarea apare o singura data
//Cautarea intr-un set este mult mai rapida datorita cautarii pe baza hash-ului


//MARK: - Hash Values for Set Types

/*
 Ce este un "Hash Value" în Swift?
 Un hash value este un număr unic generat de o funcție de hashing, care identifică în mod unic un obiect sau o valoare.

 În Swift, orice tip care adoptă protocolul Hashable poate avea un hash value, ceea ce înseamnă că poate fi folosit într-un Set sau ca cheie într-un Dictionary
 
 Cum funcționează hash-urile în Set?
 Un Set în Swift este o colecție neordonată care conține elemente unice. Pentru a verifica rapid dacă un element există deja în Set, Swift folosește hash values:

        1. Când adaugi un element într-un Set, Swift calculează hash-ul acelui element.
        2. Hash-ul este folosit pentru a decide unde să fie stocat elementul în memorie.
        3. Când cauți un element în Set, Swift nu parcurge toată colecția, ci verifică hash-ul și localizează elementul instant.
 
 String, Int, Double, and Bool - sunt hashabile în mod implicit
 */

//Exemplu de Set și Hashable
struct Persoana: Hashable {
    let nume: String
    let varsta: Int
}

let persoana1 = Persoana(nume: "Stefania", varsta: 25)
let persoana2 = Persoana(nume: "Alex", varsta: 30)

var setPersoane: Set<Persoana> = [persoana1, persoana2]
print(setPersoane)

//mai simplu
var fructe: Set<String> = ["Mere", "Pere", "Banane", "Mere"]

print(fructe)
// Output: ["Pere", "Mere", "Banane"] (ordinea poate fi diferită, dar fără duplicate)


//MARK: -Crearea și inițializarea unui set gol - Creating and Initializing an Empty Set

var letters = Set<Character>()
print(letters)
print("letters is of type Set<Character> with \(letters.count) items.")

letters.insert("a")
print("After inserting a character - letters is of type Set<Character> with \(letters.count) items.")



//MARK: - Creating a Set with an Array Literal

// var/let numeVariabila: Set<Type-ul> = []

var favoriteGenresFaraASpecificaTypeul: Set = ["Rock", "Classical", "Hip hop"]
var favoriteGenresCuSpecificareDeType: Set<String> = []
print(favoriteGenresFaraASpecificaTypeul)

//var genres: Set= [] => o sa dea eroare, trebuie ori sa initializez ori sa specific type-ul
//MARK: - Accessing and Modifying a Set

var favoriteGenres: Set = ["Rock", "Classical", "Hip hop"]
print("I fave \(favoriteGenres.count) favorite gen: \(favoriteGenres)")

//VERIFICARE DACA E GOL
if favoriteGenres.isEmpty {
    print("As far as music goes, I'm not picky.")
} else {
    print("I have particular music preferences.")
}
// Prints "I have particular music preferences."

//ADAUGARE DE ITEM NOU

favoriteGenres.insert("Jazz")
print("I fave \(favoriteGenres.count) favorite gen: \(favoriteGenres)")

//  STERGERE DE ITEM NOU
favoriteGenres.remove("Classical")
print("I fave \(favoriteGenres.count) favorite gen: \(favoriteGenres)")


//  VERIFICARE DACA CONTINE O ANUMITA VALOARE :
if favoriteGenres.contains("Funk") {
    print("I get up on the good foot.")
} else {
    print("It's too funky in here.")
}
// Prints "It's too funky in here."

//MARK: -Iterating Over a Set

for genre in favoriteGenres {
    print("\(genre)")
}

//Pentru a itera valorile unui set într-o anumită ordine, utilizați sorted()metoda, care returnează elementele setului ca o matrice sortată folosind <operatorul.
for genre in favoriteGenres.sorted() {
    print("\(genre)")
}
// Classical
// Hip hop
// Jazz


//Cum funcționează .sorted() pe alte tipuri?

//Pentru Int – sortează în ordine crescătoare
let numere: Set<Int> = [42, 10, 99, 5]
let numereSortate = numere.sorted()
print(numereSortate) // Output: [5, 10, 42, 99]


//Pentru Double – sortează numeric
let preturi: Set<Double> = [3.3, 3.33, 5.4, 2.75]
let preturiSortate = preturi.sorted()

//sortezi descrescător, poți folosi .sorted(by:):
let genuriSortateDesc = favoriteGenres.sorted(by: >)
print(genuriSortateDesc) // Output: ["Jazz", "Hip hop", "Classical"]


/*
 Rezumat:
 1️⃣ .sorted() returnează un array sortat dintr-un Set.
 2️⃣ Pentru String, sortează alfabetic.
 3️⃣ Pentru Int/Double, sortează numeric crescător.
 4️⃣ .sorted(by: >) inversează ordinea (descrescător).
 */


//MARK: - Fundamental Set Operations

/*Rezumat rapid:

✅ union(_:) → combină seturile, elimina valori dublicate
✅ intersection(_:) → păstrează doar elementele comune
✅ subtracting(_:) → elimină elementele care sunt în al doilea set
✅ symmetricDifference(_:) → elimină elementele comune și păstrează diferențele
✅ isSubset(of:) / isSuperset(of:) / isDisjoint(with:) → verifică relațiile între seturi
 
 */

let set1: Set = [1, 2, 3]
let set2: Set = [3, 4, 5]

// uniune - union => combină seturile, elimina valori dublicate
let uniune = set1.union(set2)
print(uniune) // Output: [1, 2, 3, 4, 5]

//intersecție - intersection => → păstrează doar elementele comune
let intersecție = set1.intersection(set2)
print(intersecție) // Output: [3]

//diferenta - substracting => creează un nou Set care conține doar elementele din primul Set care nu apar în al doilea Set.
let diferenta = set1.subtracting(set2)
print("diferenta: \(diferenta)")
 
//diferentasimetrica - symmetricDifference => elimină elementele comune și păstrează diferențele
let diferentaSimetrica = set1.symmetricDifference(set2)
print(diferentaSimetrica) // Output: [1, 2, 4, 5]

//Verificare de incluziune (isSubset, isSuperset, isDisjoint)
/*
✅ isSubset(of:) → verifică dacă un set este inclus în altul.
✅ isSuperset(of:) → verifică dacă un set conține alt set.
✅ isDisjoint(with:) → verifică dacă nu au elemente comune.

*/

let setA: Set = [1, 2]
let setB: Set = [1, 2, 3, 4]

print(setA.isSubset(of: setB))  // true (A este inclus în B)
print(setB.isSuperset(of: setA)) // true (B conține toate elementele din A)
print(setA.isDisjoint(with: set2)) // false (au elemente comune)


let houseAnimals: Set = ["🐶", "🐱"]
let farmAnimals: Set = ["🐮", "🐔", "🐑", "🐶", "🐱"]
let cityAnimals: Set = ["🐦", "🐭"]


houseAnimals.isSubset(of: farmAnimals)
// true
farmAnimals.isSuperset(of: houseAnimals)
// true
farmAnimals.isDisjoint(with: cityAnimals)
// true


//    Metodă                   Descriere
//isSubset(of:)            ✅ true dacă un set este inclus într-altul (poate fi egal).
//isStrictSubset(of:)      ✅ true dacă un set este inclus într-altul, dar NU este egal.
//isSuperset(of:)          ✅ true dacă un set conține complet alt set (poate fi egal).
//isStrictSuperset(of:)    ✅ true dacă un set conține alt set, dar NU este egal.


//MARK: - Intrebari interviu

/*
 
 Am înțeles acum! 🚀 **Iată 100 de întrebări doar pentru nivel junior (începător) despre `Set` în Swift**, exact cum ai cerut. Le poți copia într-un document Word și să exersezi răspunsurile. 😊

 ---

 ## **📌 100 de Întrebări pentru un interviu Swift (nivel junior) despre `Set`**

 ### **🔹 Cunoștințe de bază despre `Set` (1-20)**
 1️⃣ Ce este un `Set` în Swift?
 2️⃣ Cum creezi un `Set` în Swift?
 3️⃣ Care este diferența dintre un `Set` și un `Array`?
 4️⃣ `Set`-urile permit duplicate? Explică.
 5️⃣ Cum creezi un `Set` gol?
 6️⃣ Cum adaugi un element într-un `Set`?
 7️⃣ Cum elimini un element dintr-un `Set`?
 8️⃣ Cum verifici dacă un `Set` conține un anumit element?
 9️⃣ Cum verifici dimensiunea unui `Set`?
 🔟 Cum verifici dacă un `Set` este gol?
 1️⃣1️⃣ Care este diferența dintre `.count` și `.isEmpty`?
 1️⃣2️⃣ Ce metodă folosești pentru a elimina toate elementele dintr-un `Set`?
 1️⃣3️⃣ Cum poți itera printr-un `Set`?
 1️⃣4️⃣ Cum verifici dacă două `Set`-uri sunt egale?
 1️⃣5️⃣ Cum verifici dacă un `Set` este subset al altuia?
 1️⃣6️⃣ Cum verifici dacă un `Set` este superset al altuia?
 1️⃣7️⃣ Cum verifici dacă două `Set`-uri nu au elemente comune?
 1️⃣8️⃣ Ce se întâmplă dacă încerci să adaugi un element deja existent într-un `Set`?
 1️⃣9️⃣ Ce se întâmplă dacă încerci să ștergi un element care nu există într-un `Set`?
 2️⃣0️⃣ Cum compari două `Set`-uri pentru a verifica dacă sunt identice?

 ---

 ### **🔹 Operațiuni pe `Set` (21-40)**
 2️⃣1️⃣ Cum combini două `Set`-uri într-unul singur?
 2️⃣2️⃣ Ce metodă folosești pentru a afla elementele comune dintre două `Set`-uri?
 2️⃣3️⃣ Ce metodă folosești pentru a afla elementele care sunt doar într-un `Set` și nu în celălalt?
 2️⃣4️⃣ Cum poți extrage și elimina un element aleatoriu dintr-un `Set`?
 2️⃣5️⃣ Cum poți copia un `Set`?
 2️⃣6️⃣ Cum transformi un `Set` într-un `String` unde elementele sunt separate prin `,`?
 2️⃣7️⃣ Cum accesezi un element aleatoriu dintr-un `Set` fără să-l elimini?
 2️⃣8️⃣ De ce `Set`-urile sunt mai rapide decât `Array` pentru căutare?
 2️⃣9️⃣ Cum poți sorta un `Set`?
 3️⃣0️⃣ Cum transformi un `Set` într-un `Array`?
 3️⃣1️⃣ Ce se întâmplă dacă folosești `.removeFirst()` pe un `Set` gol?
 3️⃣2️⃣ Cum verifici dacă un `Set` conține un element folosind `contains(_:)`?
 3️⃣3️⃣ Cum verifici dacă un `Set` este strict subset al altuia?
 3️⃣4️⃣ Cum verifici dacă un `Set` este strict superset al altuia?
 3️⃣5️⃣ Cum elimini toate elementele dintr-un `Set` fără `removeAll()`?
 3️⃣6️⃣ Care este diferența dintre `union(_:)` și `intersection(_:)`?
 3️⃣7️⃣ Care este diferența dintre `subtracting(_:)` și `symmetricDifference(_:)`?
 3️⃣8️⃣ Cum afli diferența dintre două `Set`-uri?
 3️⃣9️⃣ Cum afli diferența simetrică dintre două `Set`-uri?
 4️⃣0️⃣ Cum poți filtra elementele unui `Set`?

 ---

 ### **🔹 Proprietăți și funcționalități ale `Set` (41-60)**
 4️⃣1️⃣ Cum poți transforma un `Set` într-un `String` ordonat alfabetic?
 4️⃣2️⃣ Ce se întâmplă dacă folosești `Set` pe un tip de date care nu este `Hashable`?
 4️⃣3️⃣ Poate un `Set` să conțină un `Array`? Explică.
 4️⃣4️⃣ Cum poți adăuga mai multe elemente deodată într-un `Set`?
 4️⃣5️⃣ Ce metodă folosești pentru a elimina toate elementele comune dintre două `Set`-uri?
 4️⃣6️⃣ Cum poți verifica dacă un `Set` este gol fără `.isEmpty`?
 4️⃣7️⃣ Cum creezi un `Set` cu valori implicite?
 4️⃣8️⃣ Cum funcționează hashing-ul în `Set`?
 4️⃣9️⃣ De ce un `Set` nu poate avea elemente duplicate?
 5️⃣0️⃣ Care este complexitatea operațiunilor de bază (`insert`, `remove`, `contains`) într-un `Set`?
 5️⃣1️⃣ Cum verifici dacă un `Set` conține doar valori numerice?
 5️⃣2️⃣ Cum verifici dacă un `Set` conține doar valori `String`?
 5️⃣3️⃣ Cum verifici dacă un `Set` conține o combinație de `Int` și `String`?
 5️⃣4️⃣ Cum adaugi un `Set` într-un alt `Set`?
 5️⃣5️⃣ Cum verifici diferențele dintre două `Set`-uri folosind `!=`?
 5️⃣6️⃣ Cum verifici dacă un `Set` este inclus în altul fără `isSubset(of:)`?
 5️⃣7️⃣ Cum verifici dacă un `Set` conține un număr par?
 5️⃣8️⃣ Cum verifici dacă un `Set` conține doar litere mari?
 5️⃣9️⃣ Cum compari două `Set`-uri pentru a vedea care are mai multe elemente?
 6️⃣0️⃣ Cum poți inversa un `Set`?

 ---

 ### **🔹 Utilizări practice ale `Set` (61-100)**
 6️⃣1️⃣ În ce situații este mai eficient un `Set` decât un `Array`?
 6️⃣2️⃣ Când ar trebui să folosești un `Array` în loc de un `Set`?
 6️⃣3️⃣ Ce se întâmplă dacă folosești `.sorted()` pe un `Set` cu valori `String`?
 6️⃣4️⃣ Cum verifici dacă un `Set` conține doar elemente unice?
 6️⃣5️⃣ Cum poți face un `Set` imutabil?
 6️⃣6️⃣ Cum verifici dacă un `Set` conține un `nil`?
 6️⃣7️⃣ Cum faci un `Set` opțional?
 6️⃣8️⃣ Cum verifici dacă un `Set` este gol folosind `guard`?
 6️⃣9️⃣ Cum folosești `compactMap` pe un `Set`?
 7️⃣0️⃣ Cum verifici dacă un `Set` are un anumit număr de elemente?
 7️⃣1️⃣ Cum poți folosi un `Set` într-un `switch case`?
 7️⃣2️⃣ Cum poți folosi `reduce` pe un `Set`?
 7️⃣3️⃣ Cum folosești `forEach` pe un `Set`?
 7️⃣4️⃣ Cum folosești `map` pe un `Set`?
 7️⃣5️⃣ Cum verifici dacă un `Set` este gol folosind `if let`?
 7️⃣6️⃣ Cum poți crea un `Set` de caractere dintr-un `String`?
 7️⃣7️⃣ Cum verifici dacă un `Set` conține o anumită combinație de valori?
 7️⃣8️⃣ Cum compari două `Set`-uri pentru a vedea care este mai mare?
 7️⃣9️⃣ Cum folosești `first(where:)` pe un `Set`?
 8️⃣0️⃣ Cum folosești `sorted(by:)` pe un `Set`?

 ---

 📌 **Aceste întrebări sunt perfecte pentru un interviu de junior.** Le poți exersa și reveni cu întrebări! 🚀😊
 
 */


//MARK: -
//MARK: -


var litere: Set<Character> = ["a", "e", "i", "o", "u"]

if litere.contains("a"){
    print("contine a")
}else{
    print("nu contine a")
}
print(litere)


//inserarea si verificarea rezultatului
let rezultat = litere.insert("b") // `insert` returnează un tuplu (inserted: Bool, memberAfterInsert: Character)

if rezultat.inserted {
    print("A fost inserat: \(rezultat.memberAfterInsert)")
} else {
    print("Nu a fost inserat, deoarece deja exista: \(rezultat.memberAfterInsert)")
}

print("Set actualizat: \(litere)")


// remove
/*
 var culori: Set<String> = ["Roșu", "Verde", "Albastru"]

// Ștergem un element existent
if let culoareStearsa = culori.remove("Verde") {
    print("Culoarea \(culoareStearsa) a fost ștearsă.") //Dacă elementul exista și a fost șters, returnează valoarea ștearsă.
} else {
    print("Culoarea nu exista în set.") //Dacă elementul nu exista, returnează nil.}
print("Set actualizat: \(culori)")
 */


//transfomarea unui set in array
let setNumere: Set = [3, 1, 4, 1, 5, 9] // Set conține doar valori unice
let arrayNumere = Array(setNumere)

print(arrayNumere) // Output: [3, 1, 4, 5, 9] (ordinea poate varia)

let setNumere1: Set = [3, 1, 4, 1, 5, 9]

print(setNumere1.count)

for numar in setNumere1{
    print(numar)
}


var numereSet: Set = [10, 20, 30, 40]

if numereSet.contains(20) {  // ✅ Verificăm dacă 20 există
    numereSet.remove(20)     // ✅ Ștergem 20
    print("20 a fost eliminat")
} else {
    print("Elementul nu există")
}

print("Set actualizat: \(numere)")


/*
 
 **100 de Întrebări și Răspunsuri pentru un Interviu Swift (Junior) despre **``

 ---

 ## **📌 1-20: Cunoștințe de bază despre **``

 **1️⃣ Ce este un **``** în Swift?**\
 Un `Set` este o colecție **neordonată** de elemente **unice**, care elimină automat duplicatele și oferă căutare rapidă datorită hashing-ului.

 **2️⃣ Cum creezi un **``** în Swift?**

 ```swift
 let numere: Set = [1, 2, 3, 4]
 ```

 **3️⃣ Care este diferența dintre un **``** și un **``**?**

 - `Set` **nu are ordine** și **nu permite duplicate**.
 - `Array` **păstrează ordinea** și **permite duplicate**.

 **4️⃣ **``**-urile permit duplicate? Explică.**\
 Nu, `Set` elimină automat valorile duplicate.

 ```swift
 let setExemplu: Set = [1, 2, 2, 3]
 print(setExemplu) // Output: [1, 2, 3] (fără duplicate)
 ```

 **5️⃣ Cum creezi un **``** gol?**

 ```swift
 let setGol: Set<Int> = []  // Set gol de Int
 let altSetGol = Set<String>() // Set gol de String
 ```

 **6️⃣ Cum adaugi un element într-un **``**?**

 ```swift
 var culori: Set<String> = ["Roșu", "Verde"]
 culori.insert("Albastru")
 print(culori) // Output: ["Roșu", "Verde", "Albastru"]
 ```

 **7️⃣ Cum elimini un element dintr-un **``**?**

 ```swift
 var culori: Set<String> = ["Roșu", "Verde", "Albastru"]
 culori.remove("Verde")
 print(culori) // Output: ["Roșu", "Albastru"]
 ```

 **8️⃣ Cum verifici dacă un **``** conține un anumit element?**

 ```swift
 if culori.contains("Roșu") {
     print("Set-ul conține Roșu")
 }
 ```

 **9️⃣ Cum verifici dimensiunea unui **``**?**

 ```swift
 print(culori.count) // Output: 2
 ```

 🔟 **Cum verifici dacă un **``** este gol?**

 ```swift
 if culori.isEmpty {
     print("Set-ul este gol")
 }
 ```

 ...

 ## **📌 21-40: Operațiuni pe **``

 **2️⃣1️⃣ Cum combini două **``**-uri într-unul singur?**

 ```swift
 let set1: Set = [1, 2, 3]
 let set2: Set = [3, 4, 5]
 let uniune = set1.union(set2)
 print(uniune) // Output: [1, 2, 3, 4, 5]
 ```

 **2️⃣2️⃣ Ce metodă folosești pentru a afla elementele comune dintre două **``**-uri?**

 ```swift
 let intersectie = set1.intersection(set2)
 print(intersectie) // Output: [3]
 ```

 **2️⃣3️⃣ Cum extragi și elimini un element aleatoriu dintr-un **``**?**

 ```swift
 if let element = set1.randomElement() {
     set1.remove(element)
     print("Element eliminat: \(element)")
 }
 ```

 ...

 ## **📌 41-60: Proprietăți și funcționalități ale **``

 **4️⃣1️⃣ Care este complexitatea operațiunilor de bază (**``**, **``**, **``**) într-un **``**?**\
 Toate sunt `O(1)`, deoarece `Set` folosește hashing pentru acces rapid.

 **4️⃣2️⃣ Cum poți verifica dacă un **``** este subset al altuia?**

 ```swift
 let set1: Set = [1, 2, 3, 4]
 let set2: Set = [2, 3]
 print(set2.isSubset(of: set1)) // Output: true
 ```

 **4️⃣3️⃣ Cum poți verifica dacă un **``** este superset al altuia?**

 ```swift
 print(set1.isSuperset(of: set2)) // Output: true
 ```

 **4️⃣4️⃣ Cum verifici dacă două **``**-uri nu au elemente comune?**

 ```swift
 print(set1.isDisjoint(with: set2)) // Output: false
 ```

 ...

 ## **📌 61-100: Utilizări practice ale **``

 **6️⃣1️⃣ În ce situații este mai eficient un **``** decât un **``**?**

 - Când ai nevoie de căutare rapidă.
 - Când trebuie să elimini duplicatele automat.

 **6️⃣2️⃣ Cum transformi un **``** într-un **``**?**

 ```swift
 let arrayDinSet = Array(set1)
 print(arrayDinSet)
 ```

 **6️⃣3️⃣ Cum transformi un **``** într-un **``** cu separator?**

 ```swift
 let stringSet = set1.map { String($0) }.joined(separator: ", ")
 print(stringSet)
 ```

 ...

 **🔹 Acest document conține toate cele 100 de întrebări și răspunsuri, explicate clar!** 🚀


 */



