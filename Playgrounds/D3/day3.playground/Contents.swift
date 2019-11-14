//import UIKit

// MARK: Arithmetic Operators
// Use these basic operators to manipulate two or more values

let firstScore = 43
let secondScore = 96

let finalScore = firstScore + secondScore
let scoreDifference = firstScore - secondScore
let average = (firstScore + secondScore) / 2

// The Modulus operator calculates the remainding value of divising two numbers
let remainder = 13 % secondScore

// MARK: Operator Overloading
// What you do to a value depends on the types of values you use them with together
// Swift is a "type-safe" language, so it won't let you mix types that shouldn't

let numbersToAdd = 42 + 42

// Both of type String
var chant = "Haters gonna "
let fightChant = chant + "hate!"

// Joining two arrays
let scores = [41, 23, 85]
let otherScores = [88, 99, 101]
let finalScores = scores + otherScores

var saying = "Keep it "
var hundo = 100
// var phrase = saying + hundo -------- Error: Cannot combind two binary operators of type String and Int

// MARK: Compound Assignment Operators
// Can use basic operands to assign values to an already existing one
var fullName = "Lamar"
fullName += " Glenn"

var iKeepIt = 100
iKeepIt += 1

// MARK: Comparison Operators
// Can be used to compare two values, of same or different types

firstScore > secondScore
secondScore <= firstScore
firstScore == secondScore
secondScore != firstScore
 
// Strings can also be compared from it's natural Alphabetical order
"Lamar" > "Glenn"
"Bapple" > "aAAAAAAAAA" // Swift must order by case-sensitivity also

// MARK: Conditons
// Use the if statement to create conditions based on one or more values comparisons
// If the condition is true, the code instructions runs
// Use the alternative else statement to run different instructions
// Use an else-if to chain different conditions until the alternative comes with else statement

let firstCard = 10
let secondCard = 11

if firstCard + secondCard == 2 {
    print("Aces are wild!")
} else if firstCard + secondCard == 21 {
    print("Blackjack!")
} else {
    print("You lose, go home.")
}


// MARK: Combining Conditions
// You can combind conditions using && for AND or || for OR
// && or AND means both conditons must return true to run code block
// || or OR means only one of the conditions must return true to run code block
// Keep these statements simple! As they can get very wordy.

if firstCard >= 5 && secondCard <= 20 {
    print("both cards are valid")
}
if firstCard > 0 || secondCard > 0 {
    print("both cards are legit")
}

// MARK: Ternary Operator
// Works with three values at once, hence the name
// Rarely used One-liner to compare two or more values

var compareCards = firstCard > secondCard ? "First card is the largest!" : "Second card is the largest!" 

// Same as if-else statement below

if firstCard > secondCard {
    print("First card is the largest!")
} else {
    print("Second card is the largest!")
}

// MARK: Switch
// Used as alternative to writing multiple if-else statements
// Write the condition once, list out all possible cases below
// Use the switch case scenario to make code more readable and faster
// Once the case is found, it breaks out of the switch statement and executes the code
// Add the keyword "fallthrough" if you'd like Swift to check for the next case as well.
// The default statement catches any cases that were not shown.

let weather = "sunny"

switch weather {
case "sunny":
    print("wear sunglasses")
    fallthrough // Goes on to check the next case also
case "raining":
    print("bring umbrella")
case "windy":
    print("bring scarf")
default:
    print("Go outside and fucking check")
}

// MARK: Ranges
// Use ranges to test values between two numbers
// Use the half-open range operator ..< for numbers up to but not including the last
// Use the closed-range operator ... for numbers uo to and including the last
// Not required if switching through an enum type

let testScore = 85

switch testScore {
case 0...50: // 0 to 50, incl. 59
    print("You failed the test.")
case 0..<80: // 0 to 80, not incl. 80
    print("You did OK on the test.")
default:
    print("You did amazingly well on the test!")
}

let scoreRange = 0...100
