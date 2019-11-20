//import Cocoa

// MARK: Functions
// Allows us to re-use code and run it multiple times
// Helps avoid repeating code in a code-base
// Start with func keyword, then function name, parentheses, then curly braces for the code inside

func printDirections() {
    let location = "Philadelphia, PA"
    
    print("Head west towards \(location).")
}

//We then "call" the function below to execute the code within
printDirections()

// MARK: Accepting Parameters
// We can further customize functions to make them more powerful
// By accepting values, we can allow these functions to produce different values
// Within the parameter body, we explicitly give the type to later use in the argument body

func square(num: Int) {
    print(num * num)
}

square(num: 9)

// MARK: Returning Values
// Instead of just receiving data, functions can also return data back to us
// We use a different syntax to ensure the right value is being returned back to us
// Works perfectly if you want returned multiple values (using a tuple)

func cubed(number: Int) -> Int {
    return number * number * number
}

let cubedNumber = cubed(number: 2)
print(cubedNumber)


// MARK: Parameter Labels
// Should use parameter labels to externally be used when calling the function in the argument
// By default, if the external label name is not used, then the internal name of the parameter is
// Done to give sensible names to the function's parameter, then also externally making sense for calling a function

func sayHello(to name: String) -> String {
    return "Hello, \(name)! Welcome to my site." // NOTE that we do not use the external label "to"
}

sayHello(to: "Lamar")


// MARK: Ommitting Parameter Labels
// We can ommit parameter names all together for the sake of more readable code
// Generally a better idea to give each function parameter labels
// Ommitting a label starts with the underscore "_" followed by the internal parameter name

func greeting(_ person: String) -> String {
    return "\(person)! Welcome! We're glad to have you!"
}

greeting("Lamar")

// MARK: Default Parameters
// Used for setting default values for functions, do not need to explicitly write in the arguments
// NOTE the greet function call does not need the parameter names for either the external or default name, second example does. Optional.
// You can also change the value of the default parameter when calling it in the arguments

func greet(_ name: String, job: String = "programmer") {
    print("Hello, \(name)! Glad to meet a fellow \(job).")
}

greet("Lamar")
greet("Jessica", job: "Artist")

// MARK: Variadic Functions
// Can have functions that can accept any number of parameters, only of the same type though

// Example
print("Haters", "gonna", "hate")

// You can convert a function into a variadic functions with three dots "..." after the parameter type
// This converts that parameter into essentially an array, allowing you to also loop over the values
// Int... basically means zero to hundreds of integer values can be used

func squareAnyNumbers(_ numbers: Int...) {
    for number in numbers {
        print("The square of \(number) is \(number * number)")
    }
}

squareAnyNumbers(1, 2, 3, 4, 5)

// MARK: Writing Throwing Functions
// Allows us to throw errors if the function receives bad input or something internally goes wrong
// In this example, we create an enum calld PasswordError of type Error from Swift and allow it to throw some errors, simple
// The case we will create would throw an error if the user inputs an obviousPasswordName

enum PassWordError: Error {
    case obviousPasswordName
}

func checkPassword(_ passWordName: String) throws -> Bool {
    if passWordName == "password" {
        throw PassWordError.obviousPasswordName
    }
    return true
}


// MARK: Running throw functions
// We cannot run this error function, Swift willl not allow it.
// Unless it is in a do-try-catch block.
// This runs the Error-checking function where the errors are thrown.
// First we write the try keyword next to the error-checking function to run the code
// IF no error, whatever success message is returned, along with other lines of code below it.
// IF an error is thrown, it immediately breaks out of the try block and runs the code inside the catch block
// Execution of any other statements inside the try block will never be reached since the error is then thrown

do {
    try checkPassword("password")
    print("You have successfully created a password!")
} catch {
    print("This password is INVALID")
}

// MARK: inout parameters
// We can mark parameters ad inout so their values can be changed
// Values by default passed into Swift parameters are "constants"
// You can pass these inout functions as parameters in your function
// Those changes made within the function also reflect outside of the function
// This is helpful if we want to change the parameter value inside, rather than returning a new one
// NOTE: To change the value, it must be stored in a variable, so it can be changed at any time.
// NOTE: The variable starts with the "&" sign then followed by the variable name.
// No return value needed in the function body

func doubleAnotherNumber(number: inout Int) {
    number *= 2
}

var myNum = 10
doubleAnotherNumber(number: &myNum)

