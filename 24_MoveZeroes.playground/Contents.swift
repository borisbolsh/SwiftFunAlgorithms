var nums = [0,1,0,3,12]

func moveZeroes(_ nums: inout [Int]) {
    var nonZeroIdx = 0
    
    for num in nums where num != 0 {
        nums[nonZeroIdx] = num
        nonZeroIdx += 1
    }
    
    while nonZeroIdx < nums.count {
        nums[nonZeroIdx] = 0
        nonZeroIdx += 1
    }
}

moveZeroes(&nums)
