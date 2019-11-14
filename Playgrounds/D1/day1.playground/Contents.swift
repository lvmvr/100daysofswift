import UIKit


// MARK: Variables
var str = "Hello, playground"
str = "Goodbye, playground"

print(str)

// MARK: Data Types

// str = 8 -----> ERROR
// Swift is a type-safe language
// Variables used for a specific type.

var num = 9
num = 9_0 // Thousands separator

print(num)

// MARK: Multi-line Strings
// Best used if string runs on multiple lines
var multiLiner = """
This is a
very long
string to read
"""

print(multiLiner)

// NOTE: String delimeters """ must be on a new line

// To have everything together and not broken apart, use \
var oneLiner = """
This is a \
very long \
string to read.
"""

print(oneLiner)

var quote = """
How can the 'cattle' even
have their ol' thing
back?
"""

print(quote)

// MARK: Doubles and Booleans
var dubs = 1.0091
var isDubs = true
var isInteger = "false" // Not a boolean value

// MARK: String Interpolation
// Allows you to create strings from other variables
var name = "Lamar Glenn"
var age = 26
var greeting = "Hello, \(name). I see you are \(age) years of age."

print(greeting)

// MARK: Constants
// Best to use constants whenever possible
let pi = 3.14159
let lastName = "Glenn"
// lastName = "Patrick" -------- ERROR: cannot reassign constant

// MARK: Type Annotation
// Swift infers the type of variables based on how they're created

let myStr = "Hello, Swift!" // Infered as type String

// We can explicitly give variables a type annotation
let randomName: String = "Jeffrey"
let randomAge: Int = 32
let hasGoodMusic: Bool = true
let bankAccount: Double = 8999999.99

// NOTE: Integers and Booleans have a shorter type annotation than the others

