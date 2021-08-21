func sortArrayByParity(_ nums: [Int]) -> [Int] {
    return nums.enumerated().reduce(into: [Int]()) { (acc, arg) in
        let (_, value) = arg
        acc.insert(value, at: value.isMultiple(of: 2) ? 0 : acc.count)
    }
}

print(sortArrayByParity([3,1,2,4])) // [2, 4, 3, 1]
