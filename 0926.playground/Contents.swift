//: Playground - noun: a place where people can play

import UIKit

//Control Transfer Statement

let puzzleInput = "grat minds think alike"
var puzzleOuput = ""
let characterToRemove: [Character] = ["a", "e", "i", "o", "u", " "]
for character in puzzleInput {
    if characterToRemove.contains(character) {
        continue
    } else {
        puzzleOuput.append(character)
    }
}
print(puzzleOuput)

//Break
//Break in a Loop Statement
//Break in a Switch Statement

let numberSybol: Character = "三"
var possibleIntegerValue: Int?
switch numberSybol {
case "1", "一":
    possibleIntegerValue = 1
case "2", "二":
    possibleIntegerValue = 2
case "3", "三":
    possibleIntegerValue = 3
case "4", "四":
    possibleIntegerValue = 4
default:
    break
}

if let integerValue = possibleIntegerValue {
    print("The integer value of \(numberSybol) is \(integerValue).")
} else {
    print("An integer value could not be found for \(numberSybol).")
}

//Fallthrough
let integerToDescribe = 5
var description = "The number \(integerToDescribe) is"
switch integerToDescribe {
case 2, 3, 5, 7, 11, 13, 17, 19:
    description += "a prime number, and also"
    fallthrough
default:
    description += " an integer."
}
print(description)

//Labeled
let finalSquare = 25
var board = [Int](repeating: 0, count: finalSquare + 1)
board[03] = +08; board[06] = +11; board[09] = +09; board[10] = +02;
board[14] = -10; board[19] = -11; board[22] = -02; board[24] = -08;
var squere = 0
var diceRoll = 0

gameLoop: while squere != finalSquare {
    diceRoll += 1
    if diceRoll == 7 { diceRoll = 1}
    switch squere + diceRoll {
    case finalSquare:
        break gameLoop
    case let newSquare where newSquare > finalSquare:
        continue gameLoop
    default:
        squere += diceRoll
        squere += board[squere]
    }
}
print("Game over!")

//Early Exit
func greet(person: [String: String]) {
    guard let name = person["name"] else {
        return
    }
    print("Hello \(name)!")
    
    guard let location = person["location"] else {
        print("I hope the weather is nice near you.")
        return
    }
    print("I hope the weather is nice in \(location)")
}

greet(person: ["name": "John"])
greet(person: ["name": "Jane", "location": "Cupertino"])

//Checing API Availability
if #available(iOS 10, macOS 10.12, *) {
    
} else {
    
}
