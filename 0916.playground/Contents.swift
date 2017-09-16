//: Playground - noun: a place where people can play

import UIKit

//Stirngs Are Value Types

//for character in "Dog!🐶" {
//    print(character)
//}

let catCharaters: [Character] = ["C", "a", "t", "!", "😺"]
let catString = String(catCharaters)
print(catString)

let string1 = "hello"
let string2 = " there"
var welcome = string1 + string2

var instruction = "look over"
instruction += string2

let exclamationMark: Character = "!"
welcome.append(exclamationMark)

//String Interpolation

let multiplier = 3
let message = "\(multiplier) times 2.5 is \(Double(multiplier) * 2.5)"

//Unicode

let wiseWodrds = "\"Imagination is more important than knowledge\" - Einstein"
let dollarSign = "\u{24}"
let backHeart = "\u{2665}"
let sparklingHeart = "\u{1F496}"

let eAcute: Character = "\u{E9}"
let combinedEAcute: Character = "\u{65}\u{301}"

let precomposed: Character = "\u{D55C}"
let decomposed: Character = "\u{1112}\u{1161}\u{11AB}"

let enclosedEAcute: Character = "\u{E9}\u{20DD}"
let regionalIndicatorForUS: Character = "\u{1F1FA}\u{1F1F8}"
