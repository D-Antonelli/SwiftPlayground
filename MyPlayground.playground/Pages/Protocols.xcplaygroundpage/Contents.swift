//: [Previous](@previous)

import Foundation

protocol Building {
    var rooms: Int { get }
    var cost: Int { get set }
    var agent: String { get }
    func printSalesSummary()
}

extension Building {
    func printSalesSummary() {
        let summary = """
                        ----Summary----
                        Type: \(self)
                        Rooms: \(self.rooms)
                        Cost: GBP \(self.cost)
                        Sold by: \(self.agent)
                    """
        print(summary)
    }
}

struct House:Building {
    let rooms: Int
    var cost: Int
    let agent: String
}

struct Office:Building {
    let rooms: Int
    var cost: Int
    let agent: String
    let floors: Int
}

let myHouse = House(rooms: 4, cost: 120_000, agent: "Quantum Estate Agency")
myHouse.printSalesSummary()

let myOffice = Office(rooms: 10, cost: 300_000, agent: "Hunters", floors: 1)
myOffice.printSalesSummary()
