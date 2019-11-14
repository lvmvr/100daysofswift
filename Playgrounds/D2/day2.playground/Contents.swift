// import UIKit

// MARK: Arrays
// Arrays are collections of values that are stored as a single value
let lamar = "Lamar"
let john = "John"
let mike = "Michael"
let derek = "Derek"
let myFriends = [lamar, john, mike, derek]

print(myFriends) // Note it renders the variable's value

var myFamily = ["Dad", "Mom", "Brother"]
myFamily[0] // "Dad"
myFamily[2] = "Sister" // returns ["Dad", "Mom", "Sister"]

print(myFamily)

// Arrays can be explicitly created using braket notation
let luckyNumbers: [Int] = [24, 7, 19, 21, 16]
let secretPasswords: [String]
let otherSecrets: Array = ["Tell", "Someone", "This..."]


// MARK: Sets
// Sets are basically Arrays with two differences:
// 1. They do not follow any order, more-so random
// 2. Items with duplicates only appear once. No errors if multiples present. Must have unique values.
let colors = Set(["red", "green", "blue"])
let nums = Set([1, 2, 2, 3, 4, 4, 5, 6, 6])
print(nums)
// NOTE: sets printed to the console output as arrays
// In the playground, they're grouped randomly in an object



// With explicit type annotation, we can exclude the parentheses
// ref: https://developer.apple.com/documentation/swift/set
let grades: Set = [54, 80, 100, 110, 110, 100]

// MARK: Tuples
// Tuples store multiple values into one variable single value
// Similar to arrays, but with three key differences
// 1. You cannot change the size of a tuple after created
// 2. You cannot change the type within a tuple, must always be the same
// 3. You can access tuple values using dot notation by either index or name

var fullName = (firstName: "Taylor", lastName: "Swift")
print(fullName) // Note the difference of the value returned from that of a dictionary

// Accessing values in a tuple
fullName.0
fullName.lastName
// fullName.age --------- ERROR: no member named 'age'

// Changing tuple values
fullName = (firstName: "Justin", lastName: "Timberlake")
// fullName = (firstName: "Yammi", age: 25) ---------- ERROR: cannot change type of member in tuple

// Changing values using dot notation
fullName.1 = "Beiber"
print(fullName)

// MARK: Arrays vs Sets vs Tuples
// REVIEW KEY DIFFERENCES
// If you need to store value that...
// A. Can have duplicate values and MUST be in the same order => use Arrays
// B. Can only have unique values and order doesn't matter    => use Sets
// C. Can only have a specific size, types, and position      => use Tuples

// MARK: Dictionaries
// Like arrays, but can create values using strings
// Separate the identifier (keys) with the value with a colon :
var myDict = [
    "name": "Lamar",
    "job title": "slave"
]
myDict["job title"]
myDict["favorite food"] // Returns nil

// Type annotations with Dictionaries/ explicit type
var items: [Int: String] = [
    0: "Xerox",
    1: "Tropicana",
    2: "Macbook Pro"
]
items[2]

// MARK: Dictionaries: Default values
// Use Default values for Dictionaries if key does not exist
// Used when calling the key value from the Dictionary
var favoriteFoods = [
    "cake": "Chocolate",
    "pasta": "Fetuccini",
    "pizza": "Cheese",
]

favoriteFoods["bagels", default: "Unknown"]


// MARK: Empty Collections
// With Arrays, Sets, and Dictionaries used as collections, we can also make them empty
// Note how they all differ from type annotation, as that comes before the equals sign

// Empty String Dictionary
var myList = [String: String]()

myList["breakfast"] = "cold pizza"

// Empty Int Array
var myScores = [Int]()

// Sets and other data types are done differenty with an angle-bracket syntax
// Done because Swift has special syntax for Dictionaries and Arrays specifically
var mySet = Set<Int>()
mySet = [0, 1, 1, 2, 3, 3]


// You can also use the same syntax with Arrays and Dictionaries
var myTeam = Dictionary<String, Int>()
var lotteryNumbers = Array<Int>()

// MARK: Enums
// Enumerations or "Enums" allow for related information to easily be grouped together
// Easier than storing values in strings which could result in errors
// Best for multiple values with similar relation. Ex: Months in a year, movie genres, daily weather

enum Results {
    case success
    case failure
}

let myResult = Results.success
let yourResult = Results.failure

print(myResult, yourResult)

// MARK: Enums: Associated Values
// You can associate values with enums to represent more expressed data

enum Activities {
    case running(miles: Int)
    case driving(vehicle: String)
    case working(company: String)
}

let firstActivity = Activities.running(miles: 5)
print(firstActivity)

// MARK: Enums: Raw Values
// We can also assign values to enum types
// Once raw value attached, you can create an instance of that enum case

enum Planets: Int {
    case mercury = 1  // case mercury = 1 -----> Earth is now the 3rd planet
    case venus
    case earth
    case mars
}

// Swift automatically assigns the cases with index starting from 0
// So that would make Earth the 2nd planet, not the 3rd as it should be
let planetEarth = Planets(rawValue: 3)

// But we can also switch these case's actual raw values, since Earth is not the second planet
// We can assign mercury the value of 1, and now Earth is the 3rd planet based on raw values.
// This then changes all of the values downwards from each case
// Try changing the raw value of earth to 3. Does Venus' raw value equal 2?
