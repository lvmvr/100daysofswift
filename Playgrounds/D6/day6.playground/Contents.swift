// import Cocoa

// MARK: Creating basic Closures
// Swift allows us to create functions like any other type in Swift
// These functions or 'closures' can be stored inside variables, used within function parameters, and called from the variable
// Written with a different syntax

var driving = {
    print("I am now driving")
}

driving()

// This creates a function without a name, and assigns it to the variable name "driving", and the variable is called like a function.
// NOTE: Parameters go after the opening curly brace

// MARK: Accepting Parameters in a Closure
// Closures also can accept parameters, just differently than regular functions
// After the curly braces, we write inside parentheses the parameter name and the value type it will accept
// After that, we write the keyword 'in' so Swift knows that the closure body is about to begin

var travel = { (destination: String) in
    print("We are traveling to \(destination) for the Summer!")
}

travel("Brazil")

// NOTE: We do not include the parameter name inside the argument body like we do for functions
// We also do not include the parameter label name inside closures

// MARK: Returning Values from a Closure
// Closures can not only print values, but return values similar to that of Functions
// Return type will go before the "in" statement

let drivingReturned = { (place: String) -> String in
    return "We are currently driving to \(place) today."
}
drivingReturned("Texas")
