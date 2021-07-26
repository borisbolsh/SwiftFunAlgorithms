import UIKit


// 1. filter into [5, 5, 5], then filter into [2, 4] (even numbers)

var numbers = [1, 2, 5, 4, 5, 5, 7]

let filteredEven = numbers.filter({ return $0 % 2 == 0 })
filteredEven

var filteredArray = [Int]()
for number in numbers {
    if number == 5 {
        filteredArray.append(number)
    }
}
filteredArray


// 2. transform [1, 2, 3, 4] -> [2, 4, 6, 8] using map

let transformed = [1, 2, 3, 4].map({return $0 * 2})
transformed

var transformedArray = [Int]()
for number in [1, 2, 3, 4] {
    transformedArray.append(number * 2)
}
transformedArray


// 3. sum [1, 2, 3, 4] -> 10 using reduce

let sumReduce = [1, 2, 3, 4].reduce(0, {sumReduce, number in sumReduce + number})
sumReduce

let sumReduce2 = [1, 2, 3, 4].reduce(0, +)
sumReduce2

var sumElements = 0
for number in [1, 2, 3, 4] {
    sumElements += number
}
sumElements
