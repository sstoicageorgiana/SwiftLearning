import UIKit


// MARK: - 3.2 initializare string
print("\n 3.2 - initializare string")


var emptyString = ""               // empty string literal
var anotherEmptyString = String()  // initializer syntax
// these two strings are both empty, and are equivalent to each other

if emptyString.isEmpty{
    print("is empty")
}else{
    print("not empty")
}


// MARK: - 3.3 Mutabilitatea stringurilor/ modificarea stringurilor

print("\n 3.3 - Mutabilitatea stringurilor/ modificarea stringurilor")
var variableString = "Horse"
variableString += " and carriage"
// variableString is now "Horse and carriage"
print(variableString)
print("Variable string este : \(variableString)")


/*
 
 let constantString = "Highlander"
 constantString += " and another Highlander"
 // this reports a compile-time error - a constant string cannot be modified
 
 */
print("constantele nu sunt mutabile")


//MARK: - 3.4 String-urile se transpun prin valoare - Copy-on-Write (COW) pentru optimizare
print("\n 3.4 - Caractere")
/*
 Stringurile în Swift sunt transmise prin valoare, nu prin referință. Aceasta înseamnă că atunci când atribui un string unei noi variabile sau îl pasezi unei funcții, se creează o copie a stringului, nu o referință la același obiect.
 
 
 Stringurile în Swift sunt transmise prin valoare, nu prin referință. Aceasta înseamnă că atunci când atribui un string unei noi variabile sau îl pasezi unei funcții, se creează o copie a stringului, nu o referință la același obiect.

 Cum funcționează stringurile în Swift:
 Swift folosește o tehnică numită Copy-on-Write (COW) pentru optimizare. Dacă două variabile par să partajeze același string (după o atribuire), ele folosesc inițial aceeași zonă de memorie pentru eficiență. Totuși, în momentul în care una dintre variabile este modificată, Swift creează o copie separată a stringului pentru a menține principiul transmiterii prin valoare.

 Cum să explici corect:
 Stringurile în Swift sunt tipuri de valoare și sunt gestionate folosind un mecanism de Copy-on-Write.
 Când un string este atribuit sau transmis unei funcții, o copie este făcută doar dacă stringul este modificat ulterior.
  */

//Exemplu practic:


var original = "Hello"
var copy = original  // Copy-on-Write: partajează momentan memoria

copy.append(", world!") // Acum `copy` primește o copie separată
print(original) // "Hello" (nemodificat)
print(copy) // "Hello, world!"

/*
În acest exemplu, original și copy partajează inițial aceeași memorie, dar când copy este modificat, Swift creează o copie separată.
*/


//MARK: - 3.5 - Caractere

print("\n 3.5 - Caractere")


//se pot accesa valorile individuale pentru Stringa iterând peste șirul cu o buclă for- in:
for character in "Dog!🐶" {
    print(character)
}


//poti crea un caracter- de tip variabila sau constanta dand tip Character
let semnulExclamarii: Character = "!"
print(semnulExclamarii)


//stringurile pot fi crate si prin initializarea cu un array de caractere
let catCaracters : [Character] = ["C", "a", "t", "!", "🐱"]
print(catCaracters)
let catString = String(catCaracters)
print("catString: " + catString)

//MARK: - 3.6 - Concatenarea stringurilor si a caracterelor

print("\n 3.6 - Concatenarea stringurilor si a caracterelor")

//poate fi facute cu : (+):

let string1 = "hello"
let string2 = " there"
var welcome = string1 + string2
// welcome now equals "hello there"


//poate fi facuta cu : (+=):
var instruction = "look over"
instruction += string2
// instruction now equals "look over there"

// poate fi fcauta prin metoda appeds
let ch: Character = "!"
welcome.append(ch)
print (" concatenare facuta cu metoda append : \(welcome)")


//NU AM INTELES CONCATENAREA PE LINII MULTIPLE??????????????????????????????????



//MARK: - 3.7 - Interpolarea șirurilor - String Interpolation

print("\n 3.7 - Interpolarea șirurilor - String Interpolation")

let multiplier = 3
let message = "\(multiplier) times 2.5 is \(Double(multiplier) * 2.5)"
// message is "3 times 2.5 is 7.5"

//NU AM INTELES faza cu #??????????????????????????????????





//MARK: - 3.7.1 -  #

//1. Când vrei să scrii caractere speciale exact cum sunt
//Fără #, caracterele ca \n, \t, \" sunt interpretate (adică executate ca newline, tab, ghilimele etc.).

let textFaraDiez = "Linie 1\nLinie 2"
print(textFaraDiez)
// Output:
// Linie 1
// Linie 2

let textCuDiez = #"Linie 1\nLinie 2"#
print(textCuDiez)
// Output: Linie 1\nLinie 2

//MARK: - 3.8 - Numararea caracterelor - Counting character

print("\n 3.8 - Numararea caracterelor - Counting character")

let unusualMenagerie = "Koala 🐨, Snail 🐌, Penguin 🐧, Dromedary 🐪"
print("unusualMenagerie has \(unusualMenagerie.count) characters")

/*
 Rețineți că utilizarea de către Swift a clusterelor de grafeme extinse pentru Charactervalori înseamnă că concatenarea și modificarea șirurilor pot să nu afecteze întotdeauna numărul de caractere al unui șir.

 De exemplu, dacă inițializați un șir nou cu cuvântul de patru caractere cafeși apoi adăugați un COMBINING ACUTE ACCENT( U+0301) la sfârșitul șirului, șirul rezultat va avea în continuare un număr de caractere de 4, cu un al patrulea caracter de é, nu e:

 */

var word = "cafe"
print("the number of characters in \(word) is \(word.count)")
// Prints "the number of characters in cafe is 4"

word += "\u{301}"    // COMBINING ACUTE ACCENT, U+0301

print("the number of characters in \(word) is \(word.count)")
// Prints "the number of characters in café is 4"


//MARK: - 3.9 - Accesarea si modificarea stringurilor - Accessing and Modifying a String

print("\n  3.9 - Accesarea si modificarea stringurilor - Accessing and Modifying a String")


let greeting = "Guten Tag!"
greeting[greeting.startIndex]
// G
greeting[greeting.index(before: greeting.endIndex)]
// !
greeting[greeting.index(after: greeting.startIndex)]
// u
let index = greeting.index(greeting.startIndex, offsetBy: 7)
greeting[index]
// a


/*
 Încercarea de a accesa un index în afara intervalului unui șir sau Character la un index în afara intervalului
 unui șir va declanșa o eroare de rulare.
 
 greeting[greeting.endIndex] // Error
 greeting.index(after: greeting.endIndex) // Error
 */


print(greeting)

//iterare prin indexi
for i in greeting.indices {
    let character = greeting[i]
    print("\(i): \(character)")
}

for index in greeting.indices {
    print("\(greeting[index]) ", terminator: "")
}
// Prints "G u t e n   T a g ! "


//Utilizați proprietatea indices pentru a accesa toți indicii caracterelor individuale dintr-un șir.

//MARK: - 3.9 - Inserarea si stergerea - Inserting and Removing

print("\n 3.9 - Inserarea si stergerea - Inserting and Removing")

/*
 Cum funcționează offsetBy?
 offsetBy indică câte poziții trebuie să te deplasezi pornind de la un index existent.
 Poți să te deplasezi înainte (pozitiv) sau înapoi (negativ).

 */

var welcome1 = "hello"
welcome1.insert("!", at: welcome1.endIndex)
// welcome now equals "hello!" - insereaza la sfarsit

welcome1.insert(contentsOf: " there", at: welcome1.index(before : welcome1.endIndex))
//insereaza o colectie de caractere, la o anumita pozitie

welcome1.insert(contentsOf: "bau !", at: welcome1.startIndex)
welcome1.insert(contentsOf: "oh!", at: welcome1.endIndex)

var myString = "Hello Swift"
myString.insert(",", at: myString.index(myString.startIndex, offsetBy: 5))
print(myString) // Output: "Hello, Swift"

var myString2 = "Hello Swift"
myString2.insert(contentsOf: " beautiful", at: myString2.index(myString2.startIndex, offsetBy: 5))
print(myString2) // Output: "Hello beautiful Swift"

///
///
///
///
welcome1.remove(at: welcome1.index(before: welcome1.endIndex))
print(welcome1) //=> a sters ultimul caracter din string - pentru un singur caracter

welcome1 = "hello there"
welcome.remove(at: welcome.index(before: welcome.endIndex))
// welcome now equals "hello there"

var myString3 = "Hello, Swift!"
myString3.remove(at: myString3.index(myString3.startIndex, offsetBy: 5))
print(myString) // Output: "Hello Swift!"



let range = welcome.index(welcome.endIndex, offsetBy: -6)..<welcome.endIndex
welcome.removeSubrange(range)
// welcome now equals "hello"

//MARK: - 3.10 - Substrings

print("\n 3.10 - Substrings")

/*
 Substrings => O porțiune dintr-un String care partajează memoria cu șirul original, fiind eficient din punct de vedere al performanței.
            => durată de viață dependentă de șirul original. Pentru utilizare pe termen lung, convertește-l
            => Eficient pentru manipularea temporară a șirurilor.
            => Dacă șirul original este modificat sau eliminat, Substring-ul devine invalid.
 
 */

let greeting1 = "Hello, world!" // se defineste sirul
let index2 = greeting1.firstIndex(of: ",") ?? greeting1.endIndex
let beginning = greeting1[..<index2]
// beginning is "Hello"

// Convert the result to a String for long-term storage.
let newString = String(beginning)

/*
 greeting.firstIndex(of: ","): Caută prima apariție a caracterului "," în șir. Dacă îl găsește, returnează poziția a                            celui caracter. Dacă nu îl găsește, returnează nil.
 ?? greeting.endIndex: Dacă "," nu este găsit, folosește poziția finală a șirului (endIndex) ca valoare implicită.
 
 [..<index]: Creează un Substring care include toate caracterele de la începutul șirului până la poziția index, exclusiv.
 */



//MARK: - 3.11 - "??"


//Operatorul ?? în Swift este numit Nil-Coalescing Operator. Este folosit pentru a oferi o valoare implicită
                        //atunci când o expresie opțională (Optional) este nil.


//Când valoarea opțională(optionalName) nu este nil:
let optionalName: String? = "John"
let name = optionalName ?? "Guest"
print(name) // Output: "John"    =>  Deoarece optionalName are valoarea "John", aceasta este returnată.

// Când valoarea opțională(optionalName1) este nil:
let optionalName1: String? = nil
let name1 = optionalName1 ?? "Guest"
print(name1) // Output: "Guest"


//MARK: - 3.12 - Compararea stringurilor




///////////

var dict: [Int: String] = [:]

dict[1] = "Hello"

//print(dict[ 1])


//MARK: - 3.13 - INTERVIU

//1. Cum creezi un string în Swift și cum poți să-l concatenezi cu un alt string?


//2. Cum compari două stringuri în Swift pentru a verifica dacă sunt egale? Poți să explici și cum funcționează diferențele dintre compararea sensibilă și insensibilă la majuscule?

//Raspuns : folosim operatorul " == " Acesta verifică dacă valorile stringurilor sunt identice, indiferent de locația lor în memorie. Compararea este sensibilă la majuscule în mod implicit.


let string11 = "Salut"
let string12 = "Salut"
print(string11 == string12) // Rezultatul este true


//Pentru comparații insensibile la majuscule, putem utiliza metoda caseInsensitiveCompare. Aceasta returnează un rezultat de tip ComparisonResult, iar dacă stringurile sunt considerate egale, rezultatul va fi .orderedSame. Alternativ, putem transforma stringurile în litere mici sau majuscule folosind metodele lowercased() sau uppercased() și apoi le comparăm cu ==.


let string14 = "Salut"
let string15 = "salut"

// Comparare insensibilă la majuscule folosind lowercased()
if string14.lowercased() == string15.lowercased() {
    print("Stringurile sunt egale (insensibil la majuscule).")
}

// Sau folosind caseInsensitiveCompare
if string1.caseInsensitiveCompare(string2) == .orderedSame {
    print("Stringurile sunt egale (insensibil la majuscule).")
}

//Este important de menționat că operatorul === este folosit doar pentru compararea referințelor la obiecte și nu poate fi aplicat stringurilor, deoarece acestea sunt tipuri de valoare (value types) în Swift."



//exercitiu
//Compară două stringuri folosind == și afișează dacă sunt egale sau nu.

let mancare = "cartofi"
let legume = "cartofi"

//comparare sensibila
if mancare == legume {
    print("Sunt egale")
} else {
    print("String-urile nu au valori egale")
}

//comparare insensibila - prin lowercase

if mancare.lowercased() == legume.lowercased(){
    print("Sunt egale")
} else {
    print("String-urile nu au valori egale")

}

//comparare insensibila - prin caseInsensitiveCompare(_:)

if mancare.caseInsensitiveCompare(legume) == .orderedSame {
    print("Sunt egale")
} else {
    print("String-urile nu au valori egale")
}

// 3. Cum funcționează interpolarea stringurilor în Swift?

//Raspuns : "Interpolarea stringurilor în Swift este o metodă de a insera valori dinamice (din variabile, constante sau expresii) într-un șablon de text. Folosește sintaxa \(expresie) pentru a evalua și înlocui expresia în interiorul unui string. Această abordare face codul mai clar și mai ușor de citit comparativ cu concatenarea tradițională.

let nume = "Stefania"
let varsta = 25
let mesaj = "Numele meu este \(nume) și am \(varsta) de ani."
print(mesaj)
// Output: Numele meu este Stefania și am 25 de ani.

let a = 5
let b = 3
print("Suma lui \(a) și \(b) este \(a + b).")
// Output: Suma lui 5 și 3 este 8.

//Interpolarea suportă orice tip care adoptă protocolul CustomStringConvertible, ceea ce înseamnă că putem folosi aproape orice tip în stringuri, atâta timp cât acesta poate fi convertit în text.

//Este important de menționat că interpolarea face codul mai lizibil și este preferată în locul concatenării cu operatorul +, mai ales în cazul textelor mai complexe."


//4. Ce este un optional în Swift? Cum îl declari și cum îl desfaci pentru a accesa valoarea?

//Răspuns: Un optional în Swift este un tip special care poate conține fie o valoare, fie nil. Este folosit pentru a gestiona situațiile în care o variabilă sau o constantă poate să nu aibă o valoare. Optionalurile sunt declarate adăugând un semn de întrebare (?) după tipul variabilei.

var numeOptional: String? = nil

//Pentru a accesa valoarea unui optional, trebuie să îl desfășurăm (unwrap). Putem face acest lucru în mai multe moduri:



// În Swift, putem verifica dacă un string conține un anumit sub-string folosind metoda contains(_:). Aceasta returnează un Bool (true sau false) în funcție de prezența sub-stringului specificat în stringul principal.

var fraza = "Stefania este o persoană"

if fraza.contains("Stefania") {
    print("Fraza conține sub-stringul 'Stefania'.")
} else {
    print("Fraza nu conține sub-stringul 'Stefania'.")
}

//Dacă dorim să facem o verificare insensibilă la majuscule, putem transforma stringurile în litere mici înainte de verificare:

if let range = fraza.range(of: "Stefania") {
    print("Sub-stringul 'Stefania' se află în range-ul: \(range).")
}

//5.Cum poți obține lungimea unui string în Swift?
//În Swift, putem obține lungimea unui string folosind proprietatea count. Aceasta returnează numărul total de caractere din string, inclusiv spații sau caractere speciale.
let numeStef = "stefania"

//numeStef.uppercased()
//numeStef.lowercased()


print(#"Line 1\nLine 2"# )
print("Line 1\nLine 2")
 
let softWrappedQuotation = """
The White Rabbit put on his spectacles.  "Where shall I begin, \
please your Majesty?" he asked.

"Begin at the beginning," the King said gravely, "and go on \
till you come to the end; then stop."
"""

print(softWrappedQuotation)

