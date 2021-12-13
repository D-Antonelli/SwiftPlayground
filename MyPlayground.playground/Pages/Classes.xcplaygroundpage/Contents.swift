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
    
    init(legs: Int, isTame: Bool) {
        self.isTame = isTame
        super.init(legs: legs)
    }
    
    override func speak() {
        print("Meow meow")
    }
}

let daisy = Corgi(legs: 4)
daisy.speak();
// daisy.legs = 2 -> immutable

let misty = Cat(legs: 4, isTame: true)
misty.speak()
