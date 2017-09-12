//: Playground - noun: a place where people can play

import UIKit

// Error Handling

func canThrowAnError() throws {
    
}

do {
    try canThrowAnError()
} catch {
    
}

func makeASandwich() throws {
    
}

/*
do {
    try makeASandwich()
    eatASandwich()
} catch SandwichError.outOfCleanDishes {
    washDishes()
} catch {
    SandwichError.missingIngredients(let ingredients) {
        buyGroceries(ingredients)
    }
}
 */

//Assertions and Preconditions

let age = -3
//assert(age >= 0, "A person's age can't be less than zero.")
//assert(age >= 0)

if age > 10 {
    print("You can ride the roller-coaster or the ferris wheel.")
} else if age > 0 {
    print("You can ride the ferris wheel.")
} else {
    assertionFailure("A person's age can't be less than zero.")
}

precondition(index > 0, "Index must greater than zero.")

