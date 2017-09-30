//: Playground - noun: a place where people can play

import UIKit

//Where

let yetAnotherPoint = (1, -1)
switch yetAnotherPoint {
case let (x, y) where x == y:
    print("(\(x), \(y) is on the line x == y")
case let (x, y) where x == -y:
    print("(\(x), \(y) is on the line x == -y")
case let (x, y):
    print("(\(x), \(y) is just some arbitrary point")
}

//Compound Case

let someCharacter: Character = "e"
switch someCharacter {
case "a", "e", "i", "o", "u":
    print("\(someCharacter) is a vowel")
case "b","c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z":
    print("\(someCharacter) is consonant")
default:
    print("\(someCharacter) is not a vowel or a consonant")
}

let stillAnotherPoint = (9, 0)
switch stillAnotherPoint {
case (let distance, 0), (0, let distance):
    print("On an axis, \(distance) frome the origin")
default:
    print("Not on an axis")
}

