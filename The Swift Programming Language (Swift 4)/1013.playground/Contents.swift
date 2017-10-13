//: Playground - noun: a place where people can play

import UIKit

//Error Handling

//Representing and Throwing Errors
enum VendingMachineError: Error {
    case invalidSelection
    case insufficientFunds(coinsNeeded: Int)
    case outOfStock
}

//throw VendingMachineError.insufficientFunds(coinsNeeded: 5)

//Handling Errors
//Propagating Errors Using Throwing Functions
struct Item {
    var price: Int
    var count: Int
}

class VendingMachine {
    var inventory = [
        "Candy Bar": Item(price: 12, count: 7),
        "Chips": Item(price: 10, count: 4),
        "Pretzels": Item(price: 7, count: 11)
    ]
    
    var coinDeposited = 0
    
    func vend(itemNamed name: String) throws {
        guard let item = inventory[name] else {
            throw VendingMachineError.invalidSelection
        }
        
        guard item.count > 0 else {
            throw VendingMachineError.outOfStock
        }
        
        guard item.price <= coinDeposited else {
            throw VendingMachineError.insufficientFunds(coinsNeeded: item.price - coinDeposited)
        }
        
        coinDeposited -= item.price
        
        var newItem = item
        newItem.count -= 1
        inventory[name] = newItem
        
        print("Dispensing \(name)")
    }
}

let favoriteSnackes = [
    "Alice": "Chips",
    "Bob": "Licorice",
    "Eve": "Pretzels"
]

func buyFavoriteSnack(person: String, vendingMachine: VendingMachine) throws {
    let snackName = favoriteSnackes[person] ?? "Candy Bar"
    try vendingMachine.vend(itemNamed: snackName)
}

struct PurchasedSnack {
    let name: String
    init(name: String, vendingMachine: VendingMachine) throws {
        try vendingMachine.vend(itemNamed: name)
        self.name = name
    }
}

//Handling Errors Using Do-Catch
var vendingMachine1 = VendingMachine()
vendingMachine1.coinDeposited = 8
do {
    try buyFavoriteSnack(person: "Alice", vendingMachine: vendingMachine1)
} catch VendingMachineError.invalidSelection {
    print("Invalid Selection")
} catch VendingMachineError.outOfStock {
    print("Out of Stock")
} catch VendingMachineError.insufficientFunds(let coinNeeded) {
    print("Insufficient funds. Please insert an additional \(coinNeeded) coins.")
}

//Converting Errors to Optional Values
/*
func fetchData() -> Data? {
    if let data = try? fetchDataFromDisk() { return data }
    if let data = try? fetchDataFromServer() { return data }
    return nil
}

//Specifying Cleanup Actions
func processFile(fileName: String) throws {
    if exist(fileName) {
        let file = open(fileName)
        defer {
            close(file)
        }
        while let line = try file.readline() {
            
        }
    }
}
*/


