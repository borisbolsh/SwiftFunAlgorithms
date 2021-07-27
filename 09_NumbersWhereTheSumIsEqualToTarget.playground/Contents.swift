import UIKit

func numbersWhereTheSumIsEqualToTarget(array: [Int], target: Int) -> [Int] {
    
    var testDictonary: [Int : Int] = [:]
    var resultArray = [Int]()
    
    for (i, j) in array.enumerated() {

        if let index = testDictonary[target - j] {
            resultArray.append(index)
            resultArray.append(i)
            return resultArray
        }
        testDictonary[j] = i
    }

  return resultArray
}

numbersWhereTheSumIsEqualToTarget(array:[3, 4, 5, 6, 5, 3, 24, 12, 3, 7], target: 10)
