func findDisappearedNumbers(_ nums: [Int]) -> [Int] {
    var nums = nums
    var result = [Int]()
    
    for i in 0..<nums.count {
        let index = abs(nums[i]) - 1
        
        if nums[index] > 0 {

            nums[index] = -nums[index]
        }
    }
    print(nums)
    for i in 0..<nums.count {

        if nums[i] > 0 {
            result.append(i+1)
        }
    }
    
    return result
}

findDisappearedNumbers([4,3,2,7,12,8,2,3,1,5,6,9,10,11,15])
// [13, 14]
