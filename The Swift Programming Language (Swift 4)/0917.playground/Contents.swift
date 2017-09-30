//: Playground - noun: a place where people can play

import UIKit

//Counting Characters

let unusualMessage = "Koala 🐨, Snail 🐌, Penguin 🐧, Dromedary 🐪"
//print("unusualMenagerie has \(unusualMessage.count) characters")

var word = "cafe"
//print("the number of charaters in \(word) is \(word.count)")
word += "\u{301}"
//print("the number of charactors in \(word) is \(word.count)")

//Accessing and Modifying a String

let greeting  = "Cuten Tag!"
greeting[greeting.startIndex]
greeting[greeting.index(before: greeting.endIndex)]
greeting[greeting.index(after: greeting.startIndex)]
let index = greeting.index(greeting.startIndex, offsetBy: 7)
greeting[index]

//greeting[greeting.endIndex]
//greeting.index(after: greeting.endIndex)

//for index in greeting.indices {
//    print("\(greeting[index])", terminator: "")
//}

//Inserting and Removing

var welcome = "hello"
welcome.insert("!", at: welcome.endIndex)
welcome.insert(contentsOf: " there", at: welcome.index(before: welcome.endIndex))
welcome.remove(at: welcome.index(before: welcome.endIndex))

let range = welcome.index(welcome.endIndex, offsetBy: -6)
welcome.removeSubrange(range)

//Sybstrings

let greeting = "Hello, world!"
//let index = greeting.index(of: ", ") ?? greeting.endIndex
let beginning = greeting[..<index]
let newString = String(beginning)
