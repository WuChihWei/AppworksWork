//1-1,2 test

//enum Gasoline: String{
//    case gasoline92
//    case gasoline95
//    case gasoline98
//    case diesel
//}
//
//func getprice(_ gasolinePrice: Gasoline) -> String {
//    switch gasolinePrice {
//    case .gasoline92:
//        return "92"
//    case .gasoline95:
//        return "95"
//    case .gasoline98:
//        return "98"
//    case .diesel:
//        return "100"
//    }
//}
//getprice(Gasoline.gasoline98)


//1-3 test
//enum Gasoline: String{
//    case gasoline92 = "92"
//    case gasoline95 = "95"
//    case gasoline98 = "98"
//    case diesel = "100"
//}
//var gasolineprice = Gasoline.gasoline92.rawValue
//print(gasolineprice)


//1.
enum Gasoline: String{
    case gasoline92 = "92"
    case gasoline95 = "95"
    case gasoline98 = "98"
    case diesel = "100"
}

func getprice(_ gasolinePrice: Gasoline) -> String {
    return gasolinePrice.rawValue
}

print(getprice(Gasoline.gasoline98))


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
