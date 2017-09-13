//: Playground - noun: a place where people can play

import UIKit

//Basic Operators

let b = 10
var a = 5
a = b

let (x, y) = (1, 2)
//if x = y {
//    
//}

1 + 2
5 - 3
2 * 3
10.0 / 2.5

"helln, " + "world"

9 % 4
-9 % 4

let three = 3
let minusThree = -three
let plusThree = -minusThree

let minusSix = -6
let alsoMinusSix = +minusSix

var c = 1
c += 2

1 == 1
2 != 1
2 > 1
1 < 2
1 >= 1
2 <= 1

let name = "world"
if name == "world" {
    print("hello, world")
} else {
    print("I'm sorry \(name), but I don't recognize you")
}

(1, "zebra") < (2, "apple")
(3, "apple") < (3, "bird")
(4, "dog") == (4, "dog")

//
//let contentHeight = 40
//let hasHeader = true
//let rowHeight = contentHeight + (hasHeader ? 50 : 20)

let contentHeight = 40
let hasHeader = true
let rowHeight: Int
if hasHeader {
    rowHeight = contentHeight + 50
} else {
    rowHeight = contentHeight + 20
}

//Nil-Coalescing Opertor

let defaultColorName = "red"
var userDefinedColorName: String?
var colorNameToUse = userDefinedColorName ?? defaultColorName

userDefinedColorName  = "green"
colorNameToUse = userDefinedColorName ?? defaultColorName





