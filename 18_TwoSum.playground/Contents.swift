func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
    var dict = [Int: Int]()
    
    for (i, num) in nums.enumerated() {
        if let lastIndex = dict[target - num] {
            return [lastIndex, i]
        }
        
        dict[num] = i
    }
    
    fatalError("No valid outputs")
}

print(twoSum([1, 9, 11, 15], 20)) // [1, 2]
