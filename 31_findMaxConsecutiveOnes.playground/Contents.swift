
func findMaxConsecutiveOnes(_ nums: [Int]) -> Int {
    var globalMax = 0
    var localMax = 0
    
    for num in nums {
        if num == 1 {
            localMax += 1
            globalMax = max(globalMax, localMax)
        } else {
            localMax = 0
        }
    }
    
    return globalMax
}

print(findMaxConsecutiveOnes([1,1,0,1,1,1,0,0,1,1]))  // 3
print(findMaxConsecutiveOnes([1,1,0,1,1,0,1]))        // 2
print(findMaxConsecutiveOnes([1,0,1,0,1]))            // 1
print(findMaxConsecutiveOnes([0,0]))                  // 0
