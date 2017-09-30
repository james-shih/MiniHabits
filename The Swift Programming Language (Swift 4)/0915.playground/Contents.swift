//: Playground - noun: a place where people can play

import UIKit

//Strings and Characters

let someString = "Some string literal value"

//let quotation = """
//The White Rabbit put on his sepctacles. "Where shall I begin, please your Majesty?" he asked.
//
//"Begin at the beginnig, " the King said gravely, "and go on till you come to the end; then stop."
//"""

//let threeDoubleQuotes = """
//Escaping the first quote \"""
//Escaping all three quotes \"\"\"
//"""

let singleLineString = "These are the same."
//let multilineString = """
//These are the same.
//"""

//"""
//
//This string starts with a line feed.
//It also ends with a line feed.
//
//"""

//func generateQuotation() -> String {
//    let quotation = """
//    The White Rabbit put on his spectacles. "Where shall I begin, please your Majesty?" he asked.
//    
//    "Begin at the beginning, " the King said gravely, "and go on till you come to the end; then stop."
//    """
//    return quotation
//}
//print(quotation == generateQuotation())

//Initailizing an Empty String

var emptyString = ""
var anotherEmptyString = String()

if emptyString.isEmpty {
    print("Nothing to see here")
}

var variableString = "Horse"
variableString += " and carriage"

let constantString = "Highlander"
constantString += " and another Highlander"

