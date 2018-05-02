// Swift Fundamentals III

import AppKit

// Complete the following exercises in a playground and upload your code below.

// 1. Write a program that adds the numbers 1-255 to an array

var myArray: [Int] = [Int]()
for i in 1...255{
	myArray.append(i)
}


// 2. Swap two random values in the array 

// Hint: you can use the arc4random_uniform(UInt32) function to get a random number from 0 
// to the number passed in. The arc4random_uniform function takes in one parameter that is 
// of the UInt32 type and returns a random number that is of the UInt32 type. 
// How can you deal with this using your knowledge of types?

var x = Int(arc4random_uniform(UInt32(myArray.count)))
var y = Int(arc4random_uniform(UInt32(myArray.count)))

var temp = myArray[x]
myArray[x] = myArray[y]
myArray[y] = temp


// 3. Now write the code that swaps random values 100 times (You've created a "Shuffle"!)

for _ in 1...100{
	let x = Int(arc4random_uniform(UInt32(myArray.count)))
	let y = Int(arc4random_uniform(UInt32(myArray.count)))

	let temp = myArray[x]
	myArray[x] = myArray[y]
	myArray[y] = temp
}


// 4. Remove the value "42" from the array and Print "We found the answer to the Ultimate Question of Life, 
// the Universe, and Everything at index __" and print the index of where "42" was before you removed it.

for i in 0..<myArray.count{
	if myArray[i] == 42{
		myArray.remove(at: i)
		print("We found the answer to the Ultimate Question of Life, the Universe, and Everything at index \(i)")
		break
	}
}
