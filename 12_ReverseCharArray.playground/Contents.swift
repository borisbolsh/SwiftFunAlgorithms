import UIKit

func reverseString(string: inout [Character]) {
    var firstNum = 0
    var lastNum = string.count - 1
    
    while firstNum < lastNum {
        // With tuples
        (string[firstNum], string[lastNum]) = (string[lastNum], string[firstNum])
        
        // Or with 3 variable
        // var temp = string[firstNum]
        // string[firstNum] = string[lastNum]
        // string[lastNum] = temp
        
        firstNum += 1
        lastNum -= 1
    }
    
}

var charArray: [Character] = ["T","h","a","n","k"," ","y","o","u"]
reverseString(string: &charArray)


let anyString = "Stressed desserts!"
var chars = [Character](anyString)
reverseString(string: &chars)

print("Result: \(String(chars))")

