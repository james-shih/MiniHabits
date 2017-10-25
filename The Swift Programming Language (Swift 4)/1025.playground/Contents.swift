//: Playground - noun: a place where people can play

import UIKit

//Access Control

//Access Control Syntax
//public class SomePublicClass {}
//internal class SomeInternalClass {}
//fileprivate class SomeFilePrivateClass {}
//private class SomePrivateClass {}

public var somePublicVariable = 0
internal let someInternalConstant = 0
fileprivate func someFilePrivateFunction() {}
private func somePrivateFunction() {}

//Custom Types
public class SomePublicClass {
    public var somePublicProperty = 0
    var someInternalProperty = 0
    fileprivate func someFilePrivateMethod() {}
    private func someProvateMethod() {}
}

class SomeInternalClass {
    var someInternalProperty = 0
    fileprivate func someFilePrivateMethod() {}
    private func somePrivateMethod() {}
}

fileprivate class SomeFilePrivateClass {
    func someFilePrivateMethod() {}
    private func somePrivateMethod() {}
}

private class SomePrivateClass {
    func somePrivateMethod() {}
}

//Function Types
//private func someFunction() -> (SomeInternalClass, SomePrivateClass) {
//
//}

//Enumeration Types
public enum CompassPoint {
    case north
    case south
    case east
    case west
}

//Subclassing
public class A {
    fileprivate func someMethod() {}
}

internal class B: A {
    override func someMethod() {
        super.someMethod()
    }
}

//Constants, Variables, Properties, and Subscripts
private var privateInstance = SomePrivateClass()

//Getters and Setters
struct TrackedString {
    private(set) var numberOfEdits = 0
    var value: String = "" {
        didSet {
            numberOfEdits += 1
        }
    }
}

var stringToEdit = TrackedString()
stringToEdit.value = "This string will be tracked."
stringToEdit.value += " This edit will increment numberOfEdits."
stringToEdit.value += " So will this one."
print("The number of edits is \(stringToEdit.numberOfEdits)")

//Extensions
protocol SomeProtocol {
    func doSomething()
}

struct SomeStruct {
    private var privateVariable = 12
}

extension SomeStruct: SomeProtocol {
    func doSomething() {
        print(privateVariable)
    }
}


