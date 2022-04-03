protocol Policeman {
    func arrestCriminals()
}

struct Person: Policeman {
    var name:String
    var toolMan:ToolMan
    func arrestCriminals() {
    }
}

protocol ToolMan {
    func fixComputer()
}
struct Engineer: ToolMan {
    func fixComputer(){
    }
}
let engineer = Engineer()
var steven = Person(name: "steven", toolMan: engineer)
print(steven.name)
