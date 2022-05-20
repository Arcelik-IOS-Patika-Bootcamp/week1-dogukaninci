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


