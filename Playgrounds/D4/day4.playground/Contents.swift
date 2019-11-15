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
