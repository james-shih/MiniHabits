//: Playground - noun: a place where people can play

import UIKit

//Subscripts

//Subscript Syntax
//subscript(index: Int) -> Int {
//    get {
//
//    }
//    set(newValue) {
//
//    }
//}

//subscript(index: Int) -> Int {
//
//}

struct TimesTable {
    let multiple: Int
    subscript(index: Int) -> Int {
        return multiple * index
    }
}
let threeTimesTable = TimesTable(multiple: 3)
print("six times three is \(threeTimesTable[6])")

//Sbuscript Usage
var numberOfLegs = ["spider": 8, "ant": 6, "cat": 4]
numberOfLegs["bird"] = 2

//Subscript Options
struct Matrix {
    let rows: Int, columns: Int
    var grid: [Double]
    init(rows: Int, columns: Int) {
        self.rows = rows
        self.columns = columns
        grid = Array(repeatElement(0.0, count: rows * columns))
    }
    
    func indexIsValid(row: Int, column: Int) -> Bool {
        return rows >= 0 && row < rows && column >= 0 && column < columns
    }
    
    subscript(row: Int, column: Int) -> Double {
        get {
            assert(indexIsValid(row: row, column: column))
            return grid[(row * columns) + column]
        }
        set {
            assert(indexIsValid(row: row, column: column))
            grid[(row * columns) + column] = newValue
        }
    }
}

var matrix = Matrix(rows: 2, columns: 2)
matrix[0, 1] = 1.5
matrix[1, 0] = 3.2

let someValue = matrix[2, 2]



