//: Playground - noun: a place where people can play

import UIKit

//Optionals

let possibleNumber = "123"
let convertedNumber = Int(possibleNumber)

//nil
var serverResponseCode: Int? = 404
serverResponseCode = nil

var surveyAnswer: String?

if convertedNumber != nil {
    print("convertedNumber contains some integer value.")
}

if convertedNumber != nil {
    print("converedNumber has an integer value of \(convertedNumber)")
}

//Optional Binding

//if let actualNubmer = Int(possibleNumber) {
//    print("\"\(possibleNumber)\"has an integer value of \(actualNubmer)")
//} else {
//    print(""\(possibleNumber)" could not be converted to an integer")
//}

if let firstNumber = Int("4"), let secondNumber = Int("42"), firstNumber < secondNumber && secondNumber < 100 {
    print("\(firstNumber) < \(secondNumber) < 100")
}

if let firstNubmer = Int("4") {
    if let secondNumber = Int("42") {
        if firstNubmer < secondNumber && secondNumber < 100 {
            print("\(firstNubmer) < \(secondNumber) < 100")
        }
    }
}

let possibleString: String? = "An optional string."
let forcedStirng: String = possibleString!

let assumedString: String! = "An implicitly unwarpped optional string."
let implicitString: String = assumedString

if assumedString != nil {
    print(assumedString)
}

if let definiteString = assumedString {
    print(definiteString)
}


