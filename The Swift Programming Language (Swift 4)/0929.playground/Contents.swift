//: Playground - noun: a place where people can play

import UIKit

//Closures

//The Sorted Method
let names = ["Chris", "Alex", "Ewa", "Barry", "Daniella"]

func backward(_ s1: String, _ s2: String) -> Bool {
    return s1 > s2
}
var reveredNames = names.sorted(by: backward)
reveredNames = names.sorted(by: { (s1: String, s2: String) -> Bool in return s1 > s2 } )

//Inferring Type From Context
reveredNames = names.sorted(by: { s1, s2 in return s1 > s2 })
reveredNames = names.sorted(by: { s1, s2 in s1 > s2 })

//Shorthand Argument Names
reveredNames = names.sorted(by: { $0 > $1 })

//Operator Methods
reveredNames = names.sorted(by: >)

//Trailing Closures
func someFunctionThatTakesAClosure(closure: () -> Void) {
    
}
someFunctionThatTakesAClosure(closure: {
    
})
someFunctionThatTakesAClosure {
    
}

reveredNames = names.sorted() { $0 > $1 }
reveredNames = names.sorted { $0 > $1 }

let digitNames = [0: "Zero", 1: "One" , 2: "Two", 3: "Three", 4: "Four", 5: "Five", 6: "Six", 7: "Seven", 8: "Eight", 9: "Night"]
let numbers = [16, 58, 510]

let strings = numbers.map { (number) -> String in
    var number = number
    var output = ""
    repeat {
        output = digitNames[number % 10]! + output
        number /= 10
    } while number > 0
    return output
}

//Capturing Values
func makeIncrementer(forIncreament amount: Int) -> () -> Int {
    var runningToTotal = 0
    func incrementer() -> Int {
        runningToTotal += amount
        return runningToTotal
    }
    return incrementer
}

let incrementByTen = makeIncrementer(forIncreament: 10)
incrementByTen()
incrementByTen()
incrementByTen()

let incrementBySeven = makeIncrementer(forIncreament: 7)
incrementBySeven()

incrementByTen()

//Closures Are Reference Types
let alsoInrementByTen = incrementByTen
alsoInrementByTen()

//Escaping Closures
var completionHandlers: [() -> Void] = []
func someFunctionWithEscapingClosure(completionHandler: @escaping () -> Void) {
    completionHandlers.append(completionHandler)
}

func someFunctionWithNonescapingClosure(closure: () -> Void) {
    closure()
}

class SomeClass {
    var x = 10
    func doSomething() {
        someFunctionWithEscapingClosure { self.x = 100 }
        someFunctionWithEscapingClosure { self.x = 200 }
    }
}

let instance = SomeClass()
instance.doSomething()
print(instance.x)

completionHandlers.first?()
print(instance.x)

//Autoclosures
var customersInLine = ["Chirs", "Alex", "Ewa", "Barry", "Daniella"]
print(customersInLine.count)

let customerProvider = { customersInLine.remove(at: 0)}
print(customersInLine.count)

print("Now serving \(customerProvider())!")

print(customersInLine.count)

//func serve(customer customerProvider: () -> String) {
//    print("Now serving \(customerProvider())!")
//}
//serve(customer: { customersInLine.remove(at: 0) })

//func serve(customer customerProvider: @autoclosure () -> String) {
//    print("Now serving \(customerProvider())!")
//}
//serve(customer: { customersInLine.remove(at: 0) })

var customerProviders: [() -> String] = []
func collectCustomerProviders(_ customerProvider: @autoclosure @escaping () -> String) {
    customerProviders.append(customerProvider)
}

collectCustomerProviders(customersInLine.remove(at: 0))
collectCustomerProviders(customersInLine.remove(at: 0))

print("Collected \(customerProviders.count) closures.")

for customerProvider in customerProviders {
    print("Now serving \(customerProvider())!")
}

