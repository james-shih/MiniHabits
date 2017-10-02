//: Playground - noun: a place where people can play

import UIKit

//Properties

//Stored Properties
struct FixedLengthRange {
    var firstValue: Int
    let length: Int
}

var rangeOfThreeItems = FixedLengthRange(firstValue: 0, length: 3)
rangeOfThreeItems.firstValue = 6

//Stored Properties of Constant Structure Instances
let rangeOfFourItems = FixedLengthRange(firstValue: 0, length: 4)
//rangeOfFourItems.firstValue = 6

//Lazy Stored Properties
class DataImporter {
    var filename = "data.txt"
}

class DataManager {
    lazy var importer = DataImporter()
    var data = [String]()
}

let manager = DataManager()
manager.data.append("Some data")
manager.data.append("Some more data")
print(manager.importer.filename)

//Computed Properties
struct Point {
    var x = 0.0, y = 0.0
}

struct Size {
    var width = 0.0, height = 0.0
}

struct Rect {
    var origin = Point()
    var size = Size()
    var center: Point {
        get {
            let centerX = origin.x + (size.width / 2)
            let centerY = origin.y + (size.height / 2)
            return Point(x: centerX, y: centerY)
        }
        set(newCenter) {
            origin.x = newCenter.x - (size.width / 2)
            origin.y = newCenter.y - (size.height / 2)
        }
    }
}

var square = Rect(origin: Point(x: 0.0, y: 0.0), size: Size(width: 10.0, height: 10.0))
let initialSquareCenter = square.center
square.center = Point(x: 15.0, y: 15.0)
print("square.origin is now at \(square.origin.x), \(square.origin.y)")

//Shorthand Setter Declaration
struct AlternativeRect {
    var origin = Point()
    var size = Size()
    var center: Point {
        get {
            let centerX = origin.x + (size.width / 2)
            let centerY = origin.y + (size.height / 2)
            return Point(x: centerX, y: centerY)
        }
        set {
            origin.x = newValue.x - (size.width / 2)
            origin.y = newValue.y - (size.height / 2)
        }
    }
}

//Read-Only Computed Properties
struct Cuboid {
    var width = 0.0, height = 0.0, depth = 0.0
    var volume: Double {
        return width * height * depth
    }
}

let fourByFiveTwo = Cuboid(width: 4.0, height: 5.0, depth: 2.0)
print("the volume of fourByFiveByTwo is \(fourByFiveTwo.volume)")

//Property Observers
class StepCounter {
    var totalSteps: Int = 0 {
        willSet(newTotalSteps) {
            print("About to set totalSteps to \(newTotalSteps)")
        }
        didSet {
            if totalSteps > oldValue {
                print("Added \(totalSteps - oldValue) steps")
            }
        }
    }
}

var stepCounter = StepCounter()
stepCounter.totalSteps = 200
stepCounter.totalSteps = 360
stepCounter.totalSteps = 896

//Global and Local Variables

//Type PRoperties
struct SomeStructure {
    static var storedTypeProperty = "Some value."
    static var computedTypeProperty: Int {
        return 1
    }
}

enum SomeEnumeration {
    static var storedTypeProperty = "Some value."
    static var computedTypeProperty: Int {
        return 6
    }
}

class SomeClass {
    static var storedTypeProtpety = "Some value."
    static var computedTypeProperty: Int {
        return 27
    }
    class var overrideableComuputedTypeProperty: Int {
        return 107
    }
}

//Querying and Setting Type Properties
print(SomeStructure.storedTypeProperty)
SomeStructure.storedTypeProperty = "Another value."
print(SomeStructure.storedTypeProperty)
print(SomeEnumeration.computedTypeProperty)
print(SomeClass.computedTypeProperty)

struct AudioCannel {
    static let thresholedLevel = 10
    static var maxInputLevelForAllChannels = 0
    var currentLevel: Int = 0 {
        didSet {
            if currentLevel > AudioCannel.thresholedLevel {
                currentLevel = AudioCannel.thresholedLevel
            }
            
            if currentLevel > AudioCannel.maxInputLevelForAllChannels {
                AudioCannel.maxInputLevelForAllChannels = currentLevel
            }
        }
    }
}

var leftChannel = AudioCannel()
var rightCannel = AudioCannel()

leftChannel.currentLevel = 7
print(leftChannel.currentLevel)
print(AudioCannel.maxInputLevelForAllChannels)

rightCannel.currentLevel = 11
print(rightCannel.currentLevel)
print(AudioCannel.maxInputLevelForAllChannels)

