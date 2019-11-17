//import UIKit

// MARK: For Loops
// Most common loop in Swift
// Runs some code until the execution runs false, then ends.
// Works for arrays and ranges

let someRange = 1...10

for numbers in someRange {
    print(numbers) // Prints numbers from 1-10
}

let favoriteAlbums = ["WOLF", "Die Lit", "Monster"]

for album in favoriteAlbums {
    print(album)
}

// Use an underscore "_" instead of having Swift create needless variables if best used then
let saying = "Miss merry "

for _ in 1...3 {
    print("mac")
}

// MARK: While loops
// Prints some code while a condition remains true
// Afterwards, it breaks out of the loop and runs code outside of it

var startCountdown = 1

while startCountdown <= 20 {
    print(startCountdown)
    startCountdown += 1
}
print("Ready or not, here I come!")

// MARK: Repeat loop
// Similar loop, but runs at least once
// Condition is satisfied at the very end

var anotherCountdown = 1

repeat {
    print(anotherCountdown)
    anotherCountdown += 1
} while anotherCountdown <= 20


// MARK: Break keyword
// Used to exit a loop at anytime, regardless of the condition

var newCountdown = 10

while newCountdown >= 0 {
    print(newCountdown)
    newCountdown -= 1
    
    if newCountdown == 3 {
        print("Fuck this shit, let's gooooo!")
        break
    }
}

// Why doesn't this code print anything? (HINT: The position of the break)
var password = "1"
repeat {
    password += "1"
    if password == "11111" {
        print("That's a terrible password.")
    }
    break
} while true


// MARK: Exiting multiple loops
// Can be used to break out of two loops that are nested together
// Use "outerloop" or whatever loop label at the start of the loop
// Then use break outerloop from within the nested loop to break out
// The normal "break" keyword is used to break out of one loop level

// Multiplier for numbers 1-10.
myOuterLoopLabel: for i in 1...10 {
    for j in 1...10 {
        let product = i * j
        print("\(i) * \(j) = \(product)")
        
        if product == 50 {
            print("Bullseye!")
            break myOuterLoopLabel
        }
    }
}

// MARK: Skipping items
// We can use the "continue" keyword to skip over items when a condition runs true

// Prints all even numbers
for x in 1...10 {
    if x % 2 == 1 {
        continue
    }
    print(x)
}


// Why doesn't this print out the number 1? How does continue work in for...in vs while loops?
let fibonacci = [1, 1, 2, 3, 5, 8, 13, 21]
var position = 0
while position <= 7 {
    let value = fibonacci[position]
    position += 1
    if value < 2 {
       continue
    }
    print("Fibonacci number \(position) is \(value)")
}


// MARK: Infinite loops
// These loops run indefinitely until a condition obviously stops it, or your computer crashes and dies
// These loops are best for iPhone apps that always run, until the user quits the app with exit code: 0, for example

var someNum = 0

while true {
    print(someNum)
    someNum += 1
    if someNum == 400 {
        print("We're leaving!")
        break
    }
    
}
