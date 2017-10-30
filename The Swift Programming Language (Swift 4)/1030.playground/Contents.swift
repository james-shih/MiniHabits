//: Playground - noun: a place where people can play

import UIKit

//Constants, Variables, and Data Types
//Constants
let name = "John"
print(name)

//name = "James"

//Variables
var age = 29
print(age)

age = 30
print(age)

let defaultScore = 100
var playerOneScore = defaultScore
var playerTwoScore = defaultScore

playerOneScore = 200
print(playerOneScore)

//Naming Contants and Variables
//let pi = 3.14159
let 一百 = 100
let ⓺ = 6
let manana = "Tomorrow"
let anzahlDerBucher = 15

//Comments
//
/*
 */

//Types
struct Person {
    let firstName: String
    let lastName: String
    
    func sayHello() {
        print("Hello there! My name is \(firstName)")
    }
}

let aPerson = Person(firstName: "Jacob", lastName: "Edwards")
let anotherPerson = Person(firstName: "Candace", lastName: "Salinas")
aPerson.sayHello()
anotherPerson.sayHello()

//Types Safety
let playerNmae = "Julian"
var playerScore = 1000
var gameOver = false
//playerScore = playerNmae

var wholeNumber = 30
var numberWithDecimals = 17.5
//wholeNumber = numberWithDecimals

var largeUglyNumber = 1000000000
var largePrettyNumber = 1_000_000_000

//Type Inference
//let cityName = "San Franciso"
//let pi = 3.1415927

let cityName: String = "San Franciso"
let pi: Double = 3.1415927

let number: Double = 3
print(number)

let firstName: String
firstName = "Layne"

let middleInitial: Character = "J"
var remainingDistance: Float = 30

struct Car {
    var make: String
    var model: String
    var year: Int
}

//Required Values
//var x: Int
//print(x)

var x: Int
x = 10
print(x)




