import UIKit

enum ColorType {
    case white
    case yellow
    case black
}
class Animal {
    var name: String
    var color: ColorType
    
    init(name: String, color: ColorType) {
        self.name = name
        self.color = color
    }
    func makeNoise() {
    }
}

class Dog: Animal {
    var trainingFor: String
    
    init(name: String, color: ColorType, trainingFor: String) {
        self.trainingFor = trainingFor
        super.init(name: name, color: color)
    }
    override func makeNoise() {
        print("Bow Wow")
    }
}
class Cat: Animal {
    var whiskersColor: ColorType
    
    init(name: String, color: ColorType, whiskersColor: ColorType) {
        self.whiskersColor = whiskersColor
        super.init(name: name, color: color)
    }
    override func makeNoise() {
        print("Meow")
    }
}

var karabas = Dog(name: "Karabas", color: .black, trainingFor: "Home")
print("\(karabas.name)'s noise is ", terminator: "")
karabas.makeNoise()

var ginny = Cat(name: "Ginny", color: .yellow, whiskersColor: .white)
print("\(ginny.color) \(ginny.name) with \(ginny.whiskersColor) whiskers noise is ", terminator: "")
ginny.makeNoise()

// Type Casting
class Car { }
class Mercedes: Car { }
class Renault: Car {
    func speedUp(){
        print("speed increased!")
    }
}
let cars = [Mercedes(), Renault(), Mercedes(), Renault()]

for car in cars {
    if let car = car as? Renault{ //Typecasting
        car.speedUp()
    }
}

//Optionals
var age: Int? = nil // it might have no value, optional
age = 38
var numb = 8
var result = 0
  for number in 1...numb {
    result *= number
  }
print(result)
var name: String? = nil
if let unwrapped = name { //Optional Binding
    print("\(unwrapped.count) letters")
} else{
    print("Missing name")
}

func greet(_ name: String?){
    guard let unwrapped = name else {
        print("You didn't provide a name!")
        return
    }
    print("Hello \(unwrapped)!")
}
greet("Taylor")

let str = "5"
let num = Int(str)! // Force unwrapping

let age2: Int! = nil // Implicitly unwrapped optionals
let age3 = age2 //no longer need ! sign
