// find all elements that appear more than ⌊ n/3 ⌋ times

func majorityElement(_ nums: [Int]) -> [Int] {
    var num0: Int?
    var num1: Int?
    var count0 = 0
    var count1 = 0
    var res = [Int]()
    
    for num in nums {
        if let num0 = num0, num0 == num {
            count0 += 1
        } else if let num1 = num1, num1 == num {
            count1 += 1
        } else if count0 == 0 {
            num0 = num
            count0 = 1
        } else if count1 == 0 {
            num1 = num
            count1 = 1
        } else {
            count0 -= 1
            count1 -= 1
        }
    }
    
    count0 = 0
    count1 = 0
    
    for num in nums {
        if num == num0 {
            count0 += 1
        }
        if num == num1 {
            count1 += 1
        }
    }
    
    if count0 > nums.count / 3 {
        res.append(num0!)
    }
    if count1 > nums.count / 3 {
        res.append(num1!)
    }
    
    return res
}

majorityElement([3,2,3])    // 3
majorityElement([1,2])      // 1, 2
