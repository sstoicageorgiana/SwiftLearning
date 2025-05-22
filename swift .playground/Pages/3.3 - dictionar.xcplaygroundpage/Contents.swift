import UIKit

//MARK: -


// Un dicționar stochează asocieri între chei de același tip și valori de același tip într-o colecție fără o ordine definită


//MARK: -Creating an Empty Dictionary

var namesOfIntegers: [Int: String] = [:]

namesOfIntegers[16] = "sixteen"
// namesOfIntegers now contains 1 key-value pair
namesOfIntegers = [:]
// namesOfIntegers is once again an empty dictionary of type [Int: String]





//MARK: -Creating a Dictionary with a Dictionary Literal

var airports: [String: String] = ["YYZ": "Toronto Pearson", "DUB": "Dublin"]



//MARK: - Modify
airports["LHR"] = "London"
// the airports dictionary now contains 3 items

if let oldValue = airports.updateValue("Dublin Airport", forKey: "DUB") {
    print("The old value for DUB was \(oldValue).")
}
// Prints "The old value for DUB was Dublin."
//MARK: -



//MARK: -
