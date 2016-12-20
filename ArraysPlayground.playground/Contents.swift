//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

// Declare an array
var myArray:[String] = ["book", "cat", "dog"]
myArray[0]

// Number of items in array
myArray.count

// Add itmes
myArray.insert("dinosaur", atIndex: 0)

myArray.count
myArray[0]

// Add to end of array
myArray.append("tree")
myArray += ["elephant", "truck"]

myArray.count

// Remove items from array
myArray.removeAtIndex(3)



// Create an empty array
var mySecondArray:[Int] = [Int]()
mySecondArray.append(3)

mySecondArray.count
mySecondArray[0]
