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
