//: Playground - noun: a place where people can play

import UIKit

//Range Operators

for index in 1...5 {
    print("\(index) times 5 is \(index * 5)")
}

let names = ["Anna", "Alex", "Brian", "Jack"]
let count = names.count
for i in 0..<count {
    print("Person \(i + 1) is called \(names[i])")
}

//for name in names[2...] {
//    print(name)
//}

//for names in names[...2] {
//    print(name)
//}

//for name in names[..<2] {
//    print(name)
//}

//let range = ...5
//range.contains(7)
//range.contains(4)
//range.contains(-1)

//Logical Operators

let allowedEntry = false
if !allowedEntry {
    print("ACCESS DENIED")
}

let enteredDoorCode = true
let passedRetinaScan = false
if enteredDoorCode && passedRetinaScan {
    print("Welcome!")
} else {
    print("ACCESS DENIED")
}

let hasDoorKey = false
let knowOverridePassword = true
if hasDoorKey || knowOverridePassword {
    print("Welcome!")
} else {
    print("ACCESS DENIED")
}

if enteredDoorCode && passedRetinaScan || hasDoorKey || knowOverridePassword {
    print("Welcome")
} else {
    print("ACCESS DENIED")
}

if (enteredDoorCode && passedRetinaScan) || hasDoorKey || knowOverridePassword {
    print("Welcome!")
} else {
    print("ACCESS DENIED")
}

