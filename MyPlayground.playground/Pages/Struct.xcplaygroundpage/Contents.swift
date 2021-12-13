//: [Previous](@previous)

import Foundation

struct Car {
    let model: String
    let seats: Int
    private var gear: Int = 1
    
    init(model: String, seats: Int) {
        self.model = model
        self.seats = seats
    }
    
    
    mutating func changeGear(newGear: Int) -> Bool {
            if(newGear < 1 || newGear > 10) {
                print("Invalid gear")
                return false
            } else {
                self.gear = newGear
                print("Gear changed!")
                return true
            }

    }
    
}

var honda = Car(model: "Honda", seats: 4)
honda.changeGear(newGear: 30)
