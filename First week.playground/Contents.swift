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
