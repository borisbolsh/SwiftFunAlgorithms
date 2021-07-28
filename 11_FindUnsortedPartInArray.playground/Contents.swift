import UIKit

func findUnsortedPartInArray(array: [Int]) -> Int {
    
    var maxNum = array[0]
    var end = 0
    
    let n = array.count
    var minNum = array[n - 1]
    var start = 1
    
    for (index, currentItem) in array.enumerated() {
        maxNum = max(maxNum, currentItem)
        if currentItem < maxNum {
            end = index
        }
    }
    
    for (index, _) in array.enumerated() {
        minNum = min(minNum, array[n - 1 - index])
        if array[n - 1 - index] > minNum {
            start = n - 1 - index
        }
    }

    return end - start + 1
}

findUnsortedPartInArray(array: [1, 3, 4, 2, 4, 3, 2, 6, 10])

