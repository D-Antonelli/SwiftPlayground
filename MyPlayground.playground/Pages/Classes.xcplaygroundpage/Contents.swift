//: [Previous](@previous)

import Foundation

class Animal {
    let legs: Int
    
    init(legs: Int) {
        self.legs = legs
    }
    
    func speak() {
        print("I speak")
    }
}

class Dog:Animal {
    init() {
        super.init(legs: 4)
    }
    
    override func speak() {
        print("Woof woof!")
    }
}

class Corgi:Dog {
    override func speak() {
        print("I'm a Corgi. Woof woof!")
    }
}

class Cat:Animal {
    let isTame: Bool
    
    init(isTame: Bool) {
        self.isTame = isTame
        super.init(legs: 4)
    }
    
    override func speak() {
        print("Meow meow")
    }
}

let daisy = Corgi()
daisy.speak();
// daisy.legs = 2 -> immutable

let misty = Cat(isTame: true)
misty.speak()
