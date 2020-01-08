// import Cocoa

// MARK: Using Closures as Parameters when they accept Parameters
// Now we can include inside the function what value type the closure would be returning
// We simply write the parameter type it'll accept and what value type it will return

func traveling(to location: String, by vehicle: (String) -> Void) {
    print("We are finally going to \(location)!")
    vehicle("Tesla")
    print("We have arrived at \(location)!")
}

traveling(to: "Tokyo") { (car: String) in
    print("Currently taking a \(car)")
}

// Here's an example of using a closure's parameters with a different type (Array)
func createInterface(positioning: ([String]) -> Void) {
    print("Creating some buttons")
    let buttons = ["Button 1", "Button 2", "Button 3"]
    positioning(buttons)
}
createInterface { (buttons: [String]) in
    for button in buttons {
        print("I'll place \(button) here...")
    }
}

// MARK: Using Closures as Parameters when they Return Values
// We can also allow these closures to return values in this trailing closures syntax
// The function "getGoing" takes in a string and closure param, the closure accepts no params but returns a string
// The trailing closure then refrences the empty arguments and returned string type, with the returned value inside.

func getGoing(going to: String, leaving: () -> String) {
    print("We are ready to GO!")
    leaving()
    print("We have arrived!")
}

getGoing(going: "Jamaica") { () -> String in
    return "Leaving... We will be there shortly!"
}

// Is this valid?
func manipulate(numbers: [Int], using algorithm: (Int) -> Int) {
    for number in numbers {
        let result = algorithm(number)
        print("Manipulating \(number) produced \(result)")
    }
}
manipulate(numbers: [1, 2, 3]) { number in
    return number * number
}

