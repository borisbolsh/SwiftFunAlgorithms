
func IncreasingTripletSubsequence(_ nums: [Int]) -> Bool {
    var smallest = Int.max
    var smaller = Int.max
    
    for num in nums {
        if smallest >= num {
            smallest = num
        } else if smaller >= num {
            smaller = num
        } else {
            return true
        }
    }
    
    return false
}

IncreasingTripletSubsequence([2,1,5,0,4,6])     // true
IncreasingTripletSubsequence([3,2,1])           // false

