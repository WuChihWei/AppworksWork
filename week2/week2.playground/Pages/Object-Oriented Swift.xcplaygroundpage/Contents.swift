//1.
enum Gender {
    case male
    case female
    case undefined
}

class Animal {
    var gender: Gender! = .undefined
    func eat() {
        print("I eat everything")
    }

    

//2.

}

class Tiger: Animal {
    override func eat() {
       print("I eat meat")
    }
}
let tiger = Tiger.self()

class Elephant: Animal {
    override func eat() {
       print("I eat fruit")
    }
}
let elephant = Elephant.self()

class Horse: Animal {
    override func eat() {
       print("I eat grass")
    }
}
let horse = Horse.self()

elephant.eat()

//3.

class Zoo {
    var weeklyHot: Animal
    init(weeklyHot: Animal) {
        self.weeklyHot = weeklyHot
    }
}

let zoo = Zoo(weeklyHot: Tiger())
zoo.weeklyHot = tiger
zoo.weeklyHot = elephant
zoo.weeklyHot = horse



//4.

//Struct is a Value Type, Class is a Reference Type.
//Value Type: When you copy a value type (i.e., when it’s assigned, initialized or passed into a function, each instance keeps a unique copy of the data. If you change one instance, the other doesn’t change too.
//Reference Type: When you copy a reference type, each instance shares the data. The reference itself is copied, but not the data it references. When you change one, the other changes too.



//5.
//Instance methods, as described above, are methods that you call on an instance of a particular type. You can also define methods that are called on the type itself. These kinds of methods are called type methods. You indicate type methods by writing the static keyword before the method's func keyword.


//6.
//Initializatizer is the process of preparing an instance of a class, structure, or enumeration for use. This process involves setting an initial value for each stored property on that instance and performing any other setup or initialization that's required before the new instance is ready for use.


//7. What does self mean in an instance method and a type method ?
//Every instance of a type has an implicit property called self , which is exactly equivalent to the instance itself. You use the self property to refer to the current instance within its own instance methods.



//8.
//A value type instance keeps a unique copy of its data, for example, a struct or an enum.
//A reference type, shares a single copy of its data, and the type is usually a class, for example class, function, closure.
