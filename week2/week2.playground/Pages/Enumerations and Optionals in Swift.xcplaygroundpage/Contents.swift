
//1-4
//These additional information attached to enum values are called associated values.
//Here, (String) is additional information attached to the value gasoline92, gasoline95..... It represents that the value of (gasoline92, gasoline95.....) can only be String.



//1.

enum Gasoline: String{
    case gasoline92 = "92"
    case gasoline95 = "95"
    case gasoline98 = "98"
    case diesel = "100"

    func getprice() -> String {
        return self.rawValue
}
}
    
let gas: Gasoline = .diesel
print(gas.getprice())
                 




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
