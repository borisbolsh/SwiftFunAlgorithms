 func twoSum(_ numbers: [Int], _ target: Int) -> [Int] {
    if numbers.count <= 1 {
        return [Int]()
    }
    
    var left = 0
    var right = numbers.count - 1
    
    while left < right {
        if numbers[left] + numbers[right] < target {
            left += 1
        } else if numbers[left] + numbers[right] > target {
            right -= 1
        } else {
            return [left + 1, right + 1]
        }
    }
    
    return [Int]()
 }
 
 twoSum([2,7,11,15], 9) // [1, 2]
