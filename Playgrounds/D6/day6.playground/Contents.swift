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

// This closure has no parameters, but stil returns a value
// We use a pair of empty parentheses to tell Swift we're returning a value from a closure
let running = { () -> String in
    return "I am running!"
}
running()


// MARK: Closures as Parameters
// As closures are similar to strings and ints, we can use them inside functions
// Inside the function parameters, we use () -> Void
// This says the closure has no parameters and returns nothing or "Void"

var walking = {
    print("I am walking to school")
}

func traveling(name: String, by action: () -> Void) {
    print("I am going \(name)!")
    action()
    print("I have arrived \(name).")
}

traveling(name: "Lamar", by: walking)
traveling(name: "Jose", by: driving)

// MARK: Trailing Closure Syntax
// If the last parameter to a function is a closure, we can simply call the function by passing it into the function body
// We have the "trailing closure" come after the function body syntax
// We can also omit the parentheses for the closure since there aren't any parameters for it

func travelingTo(country: () -> Void) {
    print("All set to go!")
    country()
    print("We've finally arrived!")
}

// Now we're calling the function below
// Here, instead of defining the closure, we pass it into the function body to execute
travelingTo {
    print("Flying to Costa Rica")
}

// In this example, we're including an argument from the function, then the closure's body is created and executed
func learning(subject course: String, at university: () -> Void) {
    print("I am currently learning \(course)!")
    university()
    print("That was fun!")
}

// Now we call the function, and the closure body is created and executed!
// Parameter name/ label not needed. Why write a label anyway?
learning(subject: "Chinese") {
    print("In class, brb...")
}

// MARK:


