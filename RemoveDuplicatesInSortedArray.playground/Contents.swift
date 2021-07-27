import UIKit

let numbers = [0, 0, 1, 1, 2, 2, 2, 2, 3, 3, 4, 4, 5, 5]

func removeDuplicatesInSortedArray(array: [Int]) -> [Int] {
    var newArray = [Int]()
    var last: Int?
    
    for (i, j) in array.enumerated() {
        if array[i] == last {
            newArray.append(j)
        } else {
            last = array[i]
        }
    }
    
    return newArray
}

removeDuplicatesInSortedArray(array: numbers)
