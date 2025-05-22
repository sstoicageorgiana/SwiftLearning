import UIKit
//MARK: -For-In Loops - cand stiu numarul de iteratii
let names = ["Anna", "Ales"]

for name in names{
    print("Hello, \(name)!")
}


let numberOfLegs = ["spider": 8, "ant": 6, "cat": 4]
for (animalName, legCount) in numberOfLegs {
    print("\(animalName)s have \(legCount) legs")
}

//MARK: -

let base = 3
let power = 10
var answer = 1
for _ in 1...power {
    answer *= base
}
print("\(base) to the power of \(power) is \(answer)")
// Prints "3 to the power of 10 is 59049"

//swift stie sa itereze de cate ori este nevoie si nu mai este nevoie de contor


//MARK: -While- cand nu stim cate iteratii avem de parcurs

//while <#condition#> {
//<#statements#>
//}
var numar = 1

while numar <= 5 {
    print("Număr: \(numar)")
    numar += 1
}

//MARK: -repeat-while → Execută codul cel puțin o dată

//✅ Similar cu while, dar codul se execută măcar o dată, chiar dacă condiția este false de la început.

var numar1 = 6

repeat {
    print("Număr: \(numar1)")
    numar1 += 1
} while numar1 <= 5



/*
 
 Pe scurt:

 Folosește for când știi de câte ori trebuie să rulezi codul.
 Folosește while când NU știi câte iterații sunt necesare.
 Folosește repeat-while dacă trebuie să rulezi măcar o dată.
 
 */


//MARK: - if

let temperatureInCelsius = 25
let weatherAdvice: String


if temperatureInCelsius <= 0 {
    weatherAdvice = "It's very cold. Consider wearing a scarf."
} else if temperatureInCelsius >= 30 {
    weatherAdvice = "It's really warm. Don't forget to wear sunscreen."
} else {
    weatherAdvice = "It's not that cold. Wear a T-shirt."
}


print(weatherAdvice)
// Prints "It's not that cold. Wear a T-shirt."
// Prints "It's really warm. Don't forget to wear sunscreen."

//MARK: -Switch

let someCharacter: Character = "z"
switch someCharacter {
case "a":
    print("The first letter of the Latin alphabet")
case "z":
    print("The last letter of the Latin alphabet")
default:
    print("Some other character")
}
// Prints "The last letter of the Latin alphabet"

let anotherCharacter1: Character = "a"
let message = switch anotherCharacter1 {
case "a":
    "The first letter of the Latin alphabet"
case "z":
    "The last letter of the Latin alphabet"
default:
    "Some other character"
}


print(message)
// Prints "The first letter of the Latin alphabet"



let anotherCharacter2: Character = "a"
switch anotherCharacter2 {
case "a", "A":
    print("The letter A")
default:
    print("Not the letter A")
}
// Prints "The letter A"


//MARK: -


//MARK: -


//MARK: -


//MARK: -


//MARK: -



//MARK: -



//MARK: -



//MARK: -


//MARK: -



//MARK: -





//MARK: -
