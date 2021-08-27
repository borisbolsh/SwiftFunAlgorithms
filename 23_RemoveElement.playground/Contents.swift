var nums = [0,1,2,2,3,0,4,2]

func removeElement(nums: inout [Int], val: Int) -> Int {
    nums = nums.filter { (num) in num != val }
    print(nums) // [1, 2, 2, 3, 4, 2]
    return nums.count
}

removeElement(nums: &nums, val: 0) // 6
print(nums) // [1, 2, 2, 3, 4, 2]
