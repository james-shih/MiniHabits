//: Playground - noun: a place where people can play

import UIKit

// Colletion Types

var someInts = [Int]()
print("someInts is of type [Int] with \(someInts.count) items.")

someInts.append(3)
someInts = []

//Creating an Array with a Default Value
var threeDoubles = Array(repeating: 0.0, count: 3)

//Creating an Array by Adding Two Arrays Together
var anotherThreeDoubles = Array(repeating: 2.5, count: 3)
var sixDoubles = threeDoubles + anotherThreeDoubles

//Creating an Array with An Array Literal
//var shoppingList: [String] = ["Eggs", "Milk"]
var shoppingList = ["Eggs", "Milk"]

//Accessing and Modifying an Array
print("The shopping list contains \(shoppingList.count) items.")

if shoppingList.isEmpty {
    print("The shopping list is empty.")
} else {
    print("The shopping list is not empty.")
}

shoppingList.append("Flour")
shoppingList += ["Baking Powder"]
shoppingList += ["Chocolate Spread", "Cheese", "Butter"]

var firstItem = shoppingList[0]
shoppingList[0] = "Six eggs"

shoppingList[4...6] = ["Bananas", "Apples"]
shoppingList.insert("Maple Syrup", at: 0)

let mapleSyrup = shoppingList.remove(at: 0)

firstItem = shoppingList[0]

let apples = shoppingList.removeLast()

//Iterating Over an Array
for item in shoppingList {
    print(item)
}

for (index, value) in shoppingList.enumerated() {
    print("Item \(index + 1): \(value)")
}

