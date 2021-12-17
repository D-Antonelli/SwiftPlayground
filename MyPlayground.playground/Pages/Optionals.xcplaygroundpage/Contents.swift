//: [Previous](@previous)

import Foundation

func getRandomNumber(from number: [Int]?) -> Int {
    number?.randomElement() ?? Int.random(in: 1...100)
}

let nums: [Int]? = nil
let number = getRandomNumber(from: nums)
print(number)
