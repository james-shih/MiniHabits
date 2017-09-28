//: Playground - noun: a place where people can play

import UIKit

//Function Argument Labels and Parameter Names

func someFunction(firstParameter: Int, secondParameter: Int) {
    
}
someFunction(firstParameter: 1, secondParameter: 2)

//Specifying Argument Labels
func someFunciton(argumentLabel parameterName: Int) {
    
}

func greet(person: String, from hometown: String) -> String {
    return "Hello \(person)! Glad you could visit from \(hometown)"
}
print(greet(person: "Bill", from: "Cupertino"))

//Omitting Argument Labels
func someFunction1(_ firstParameter: Int, secondParameter: Int) {
    
}
someFunction1(1, secondParameter: 2)

//Default Parameter Values
func someFunction2(parameterWithoutDefault: Int, parameterWithDefault: Int = 12) {
    
}
someFunction2(parameterWithoutDefault: 3, parameterWithDefault: 6)
someFunction2(parameterWithoutDefault: 4)

//Variadic Parameters
func arithmeticMean(_ numbers :Double...) -> Double {
    var total: Double = 0
    for number in numbers {
        total += number
    }
    return total / Double(numbers.count)
}
arithmeticMean(1, 2, 3, 4, 5)
arithmeticMean(3, 8.25, 18.75)

//In-Out Parameter
func swapTwoInts(_ a: inout Int, _ b: inout Int) {
    let temporaryA = a
    a = b
    b = temporaryA
}

var someInt = 3
var anotherInt = 107
swapTwoInts(&someInt, &anotherInt)
print("someInt is now \(someInt), and anotherInt is now \(anotherInt)")

//Function Types

func addTwoInts(_ a: Int, _ b: Int) -> Int {
    return a + b
}

func multipleTwoInts(_ a: Int, _ b: Int) -> Int {
    return a * b
}

func printHelloWorld() {
    print("hello, world")
}

//Using Function Types
var methFunction: (Int, Int) -> Int = addTwoInts

print("Result: \(methFunction(2, 3))")

methFunction = multipleTwoInts
print("Reuslt: \(methFunction(2, 3))")

let anotherMathFunction = addTwoInts

//Fucntion Types as Parameter Types
func stepForward(_ input: Int) -> Int {
    return input + 1
}

func stepBackward(_ input: Int) -> Int {
    return input - 1
}

func chooseStepFunction(backward: Bool) -> (Int) -> Int {
    return backward ? stepBackward : stepForward
}

var currentValue = 3
let moveNearerToZero = chooseStepFunction(backward: currentValue > 0)

print("Counting to zero:")
while currentValue != 0 {
    print("\(currentValue)")
    currentValue = moveNearerToZero(currentValue)
}
print("zero")

//Nested Functions
func chooseStepFunction1(backward: Bool) -> (Int) -> Int {
    func stepForward1(input: Int) -> Int { return input + 1 }
    func stepBackward1(input: Int) -> Int { return input - 1 }
    return backward ? stepForward : stepBackward
}

var currentValue1 = -4
let moveNearerToZero1 = chooseStepFunction1(backward: currentValue1 > 0)
while currentValue1 != 0 {
    print("\(currentValue1)...")
    currentValue1 = moveNearerToZero1(currentValue1)
}
print("zero")

