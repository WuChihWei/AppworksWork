
//1-4
//These additional information attached to enum values are called associated values.
//You can define Swift enumerations to store associated values of any given type, and the value types can be different for each case of the enumeration if needed. Enumerations similar to these are known as discriminated unions, tagged unions, or variants in other programming languages.


//1.

enum Gasoline: String {
    case gasoline92
    case gasoline95
    case gasoline98
    case diesel

    func getPrice() -> Int {
        switch self {
        case .gasoline92:
            return 92
        case .gasoline95:
            return 95
        case .gasoline98:
            return 98
        case .diesel:
            return 100
}
}
}
    
let gas: Gasoline = .diesel
print(gas.getPrice())
                 




//2.
class Pet {
    var name: String!
    init(name: String){
        self.name = name
    }
}

class People {
    var pet: Pet?
}
var kevin = People()
func haveDogName(people: People) -> String {
    guard let petName = (people.pet?.name) else {
        return "Kevin doesn't have a dog."}
    return petName
}

var peter = People()
func haveDog(people:People) -> String {
    if let petName  = (people.pet?.name)  {
            return "Peter has a dog"
        } else {
            return "Peter doesn't have a dog."
        }
    }

kevin.pet = Pet(name: "Pookie")
print(haveDogName(people: kevin))

peter.pet = Pet(name: "Lucy")
print(haveDog(people: peter))
